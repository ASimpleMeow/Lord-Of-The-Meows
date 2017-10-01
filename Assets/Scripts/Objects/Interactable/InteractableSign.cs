using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSign : InteractableBase {

    [SerializeField]
    [TextArea(3, 10)]
    private string[] Messages;
    [SerializeField]
    private List<ChoiceBase> m_Choices;


    private Queue<string> m_MessageQueue;
    private Coroutine m_TypeMessageCoroutine;

    private void Start() {
        m_MessageQueue = new Queue<string>();
        m_TypeMessageCoroutine = null;
    }

    public override void OnInteract(Character character) {

        if (Messages.Length == 0) return;

        if (!DialogBox.IsVisible()) Init(character, Messages);

        DisplayNextMessage(character);
    }

    public void OnInteract(Character character, ChoiceBase choiceDialog, string[] newMessages, bool overrideMessage, bool remove) {
        //if (Messages == newMessages) return;
        if (Messages.Length == 0) return;

        if (remove) {
            foreach (ChoiceBase choice in m_Choices) {
                if (GameObject.ReferenceEquals(choice, choiceDialog)) {
                    m_Choices.Remove(choiceDialog);
                    break;
                }
            }
        }

        if (overrideMessage) Messages = newMessages;
        Init(character, newMessages);
        DisplayNextMessage(character);
    }

    /*
     * Prepare the messages for display by doing the following:
     *         - Clear any pre-exising messages in the queue
     *         - Add the string messages to the message queue
     *         - Freeze players movement
     *         - Freeze game time after one frame
     */
    private void Init(Character character, string[] messages) {

        m_MessageQueue.Clear();

        foreach (string message in messages) m_MessageQueue.Enqueue(message);

        character.Movement.IsFrozen = true;
        StartCoroutine(FreezeTimeRoutine());
    }

    private void DisplayNextMessage(Character character) {

        // Last message was seen, therefore end interaction
        if (m_MessageQueue.Count == 0) {

            if (m_Choices.Count != 0) HandleChoices(character);
            else EndInteraction(character);

            return;
        }

        // Type one character of the message per frame (nice effect)
        if(m_TypeMessageCoroutine != null) StopCoroutine(m_TypeMessageCoroutine);
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

    private void EndInteraction(Character character) {
        Time.timeScale = 1;
        character.Movement.IsFrozen = false;
        DialogBox.Hide();
        if (ChoiceBox.IsVisible()) ChoiceBox.Hide();
        m_TypeMessageCoroutine = null;
    }

    private IEnumerator FreezeTimeRoutine() {
        yield return null;

        Time.timeScale = 0;
    }

    private IEnumerator TypeMessage(string message) {

        DialogBox.Show("");

        foreach(char c in message) {
            DialogBox.Show(DialogBox.GetText() + c);
            yield return null;
        }
    }
}