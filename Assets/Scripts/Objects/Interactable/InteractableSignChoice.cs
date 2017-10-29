using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSignChoice : InteractableSign {

    // Inspector fields
    [SerializeField]
    private List<ChoiceBase> m_Choices;
    [SerializeField]
    private bool m_RemoveChoices;

    private bool m_IgnoreChoices;
    private ObjectData m_Data;

    private void Start() {
        m_Data = DataController.Instance.FindThis(this.name, GetType().ToString());
        if (m_Data == null) return;
        m_RemoveChoices = m_Data.keyVariable;
        if (m_Data.SignChoiceMessageOverride) Messages = m_Data.SignChoiceMessage;
        enabled = m_Data.enabled;
        gameObject.SetActive(m_Data.enabledGameObject);
    }

    public override void OnInteract(Character character) {
        base.OnInteract(character);
    }

    public void OnInteract(Character character, ChoiceBase choiceDialog, string[] newMessages, ChoiceOptions extra) {
        if (Messages.Length == 0) return;

        if ((extra & ChoiceOptions.RemoveChoice) == ChoiceOptions.RemoveChoice) {
            foreach (ChoiceBase choice in m_Choices) {
                if (GameObject.ReferenceEquals(choice, choiceDialog)) {
                    m_Choices.Remove(choiceDialog);
                    break;
                }
            }
        }

        if ((extra & ChoiceOptions.Override) == ChoiceOptions.Override) {
            Messages = newMessages;
            if(m_Data != null) {
                m_Data.SignChoiceMessageOverride = true;
                m_Data.SignChoiceMessage = newMessages;
            }
        }
        Init(character, newMessages);
        m_IgnoreChoices = (extra & ChoiceOptions.EndInteraction) == ChoiceOptions.EndInteraction;
        m_RemoveChoices = (extra & ChoiceOptions.RemoveChoices) == ChoiceOptions.RemoveChoices;

        if(m_Data != null) m_Data.keyVariable = m_RemoveChoices;

        DisplayNextMessage(character);
    }

    protected override void Init(Character character, string[] messages) {
        m_IgnoreChoices = false;
        base.Init(character, messages);
    }

    protected override void DisplayNextMessage(Character character) {

        if (m_MessageQueue.Count == 0) {
            if (m_IgnoreChoices || m_RemoveChoices || m_Choices.Count == 0) {
                EndInteraction(character);
            } else HandleChoices(character);

            return;
        }

        // Type one character of the message per frame (nice effect)
        if (m_TypeMessageCoroutine != null) StopCoroutine(m_TypeMessageCoroutine);
        m_TypeMessageCoroutine = StartCoroutine(TypeMessage(m_MessageQueue.Dequeue()));
    }

    private void HandleChoices(Character character) {

        if (!ChoiceBox.IsVisible()) {
            string[] choiceNames = new string[m_Choices.Count];
            for (int i = 0; i < m_Choices.Count; ++i) choiceNames[i] = m_Choices[i].ChoiceName;
            ChoiceBox.Show(choiceNames);
            return;
        }

        m_Choices[ChoiceBox.GetSelectedChoice()].OnExecute(character);

    }
}
