using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSign : InteractableBase {

    // Inspector field
    [SerializeField]
    [TextArea(3, 10)]
    protected string[] Messages;

    protected Queue<string> m_MessageQueue;
    protected Coroutine m_TypeMessageCoroutine;

    private void Awake() {
        m_MessageQueue = new Queue<string>();
        m_TypeMessageCoroutine = null;
    }

    public override void OnInteract(Character character) {

        if (Messages.Length == 0) return;

        if (!DialogBox.IsVisible()) Init(character, Messages);

        DisplayNextMessage(character);
    }

    protected virtual void Init(Character character, string[] messages) {

        m_MessageQueue.Clear();

        foreach (string message in messages) m_MessageQueue.Enqueue(message);

        character.Movement.IsFrozen = true;
        StartCoroutine(FreezeTimeRoutine());
    }

    protected virtual void DisplayNextMessage(Character character) {
        
        if (m_MessageQueue.Count == 0) {
            if (m_TypeMessageCoroutine != null) StopCoroutine(m_TypeMessageCoroutine);
            EndInteraction(character);
            return;
        }

        // Type one character of the message per frame (nice effect)
        if(m_TypeMessageCoroutine != null) StopCoroutine(m_TypeMessageCoroutine);
        m_TypeMessageCoroutine = StartCoroutine(TypeMessage(m_MessageQueue.Dequeue()));
    }

    

    protected void EndInteraction(Character character) {
        Time.timeScale = 1;
        character.Movement.IsFrozen = false;
        if (DialogBox.IsVisible()) DialogBox.Hide();
        if (ChoiceBox.IsVisible()) ChoiceBox.Hide();
        m_TypeMessageCoroutine = null;
    }

    protected IEnumerator FreezeTimeRoutine() {
        yield return null;

        Time.timeScale = 0;
    }

    protected IEnumerator TypeMessage(string message) {

        DialogBox.Show("");

        foreach(char c in message) {
            DialogBox.Show(DialogBox.GetText() + c);
            yield return null;
        }
    }
}