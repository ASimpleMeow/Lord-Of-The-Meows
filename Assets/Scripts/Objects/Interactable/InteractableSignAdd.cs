using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableSignAdd : InteractableSign {

    // Inspector fields
    [SerializeField]
    private List<MonoBehaviour> Add;
    [SerializeField]
    private GameObject To;

    public override void OnInteract(Character character) {
        base.OnInteract(character);
        if (Add == null) return;
        if (To == null) return;
        foreach(MonoBehaviour o in Add) {
            
        }
    }
}
