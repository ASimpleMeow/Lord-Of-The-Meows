using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceRemoveObject : ChoiceDialog {

    // Inspector fields
    [SerializeField]
    private List<Object> ObjectsToRemove;

    public override void OnExecute(Character character) {
        base.OnExecute(character);
        if (ObjectsToRemove == null) return;
        foreach(Object o in ObjectsToRemove){
            Destroy(o);
        }
    }
}
