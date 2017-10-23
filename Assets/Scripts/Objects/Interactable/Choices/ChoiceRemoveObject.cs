using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceRemoveObject : ChoiceDialog {

    [SerializeField]
    private GameObject ObjectToRemove;

    public override void OnExecute(Character character) {
        base.OnExecute(character);
        Destroy(ObjectToRemove);
    }
}
