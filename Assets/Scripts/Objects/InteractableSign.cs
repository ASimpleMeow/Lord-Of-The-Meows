using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSign : InteractableBase {

    [SerializeField]
    [TextArea(3, 10)]
    private string[] Messages;


    private Queue<string> m_MessageQueue;
    private Coroutine m_TypeMessageCoroutine;

    private void Awake() {
        m_MessageQueue = new Queue<string>();
        m_TypeMessageCoroutine = null;
    }

    public override void OnInteract(ref Character character) {

        if (Messages.Length == 0) return;

        if (!DialogBox.IsVisible()) Init(ref character);

        DisplayNextMessage(ref character);
    }

    /*
     * Prepare the messages for display by doing the following:
     *         - Clear any pre-exising messages in the queue
     *         - Add the string messages to the message queue
     *         - Freeze players movement
     *         - Freeze game time after one frame
     */
    private void Init(ref Character character) {

        m_MessageQueue.Clear();

        foreach (string message in Messages) m_MessageQueue.Enqueue(message);

        character.Movement.IsFrozen = true;
        StartCoroutine(FreezeTimeRoutine());
    }

    private void DisplayNextMessage(ref Character character) {

        // Last message was seen, therefore end interaction
        if (m_MessageQueue.Count == 0) {
            Time.timeScale = 1;
            character.Movement.IsFrozen = false;
            DialogBox.Hide();
            m_TypeMessageCoroutine = null;
            return;
        }

        // Type one character of the message per frame (nice effect)
        if(m_TypeMessageCoroutine != null) StopCoroutine(m_TypeMessageCoroutine);
        m_TypeMessageCoroutine = StartCoroutine(TypeMessage(m_MessageQueue.Dequeue()));
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
