using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceDialog : ChoiceBase {

    // Inspector field
    [SerializeField]
    [TextArea(3, 10)]
    private string[] Messages;

    public override void OnExecute(Character character) {
        if (m_SignChoice == null) return;

        ChoiceBox.Hide();

        m_SignChoice.OnInteract(character, this, Messages, ChoiceFlags);
    }
}
