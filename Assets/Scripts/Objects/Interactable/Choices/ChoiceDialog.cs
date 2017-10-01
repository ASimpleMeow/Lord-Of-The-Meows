using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceDialog : ChoiceBase {

    [SerializeField]
    [TextArea(3, 10)]
    private string[] Messages;
    [SerializeField]
    private bool Override;
    [SerializeField]
    private bool RemoveChoice;

    private InteractableSign m_Sign;

    private void Awake() {
        m_Sign = GetComponent<InteractableSign>();
    }

    public override void OnExecute(Character character) {
        if (m_Sign == null) return;

        ChoiceBox.Hide();

        m_Sign.OnInteract(character,
                          this,
                          Messages,
                          Override,
                          RemoveChoice);
    }
}
