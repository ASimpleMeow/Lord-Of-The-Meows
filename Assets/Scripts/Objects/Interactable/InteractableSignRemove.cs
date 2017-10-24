using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSignRemove : InteractableSign {

    // Inspector fields
    [SerializeField]
    private List<Object> ToRemove;

    public override void OnInteract(Character character) {
        base.OnInteract(character);
        if (ToRemove == null) return;
        foreach(Object o in ToRemove) {
            Destroy(o);
        }
    }
}
