using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceDialog : ChoiceBase {

    [SerializeField]
    [TextArea(3, 10)]
    private string[] Messages;
    [SerializeField]
    [EnumFlagAttribute]
    private ChoiceOptions ChoiceFlags;
    /*[SerializeField]
    private bool Override;
    [SerializeField]
    private bool RemoveChoice;
    [SerializeField]
    private bool EndIteraction;
    [SerializeField]
    private bool RemoveChoices;*/

    private InteractableSign m_Sign;

    private void Awake() {
        m_Sign = GetComponent<InteractableSign>();
    }

    public override void OnExecute(Character character) {
        if (m_Sign == null) return;

        ChoiceBox.Hide();
       /* ChoiceOptions flags = ChoiceOptions.None;
        if (Override) flags = flags | ChoiceOptions.Override;
        if (RemoveChoice) flags = flags | ChoiceOptions.RemoveChoice;
        if (EndIteraction) flags = flags | ChoiceOptions.EndInteraction;
        if (RemoveChoices) flags = flags | ChoiceOptions.RemoveChoices;*/

        m_Sign.OnInteract(character, this, Messages, ChoiceFlags);
    }
}
