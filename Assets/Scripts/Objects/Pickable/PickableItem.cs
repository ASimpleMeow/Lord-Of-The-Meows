using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : PickableBase {

    [SerializeField]
    private ItemType Type;
    [SerializeField]
    private int Amount;

    private void Awake() {
        Debug.Log("Item Awake");
        GetComponent<Collider>().isTrigger = true;
    }

    public override void OnPickedUp(Character character) {
        if (character == null) return;
        if (character.Inventory == null) return;
        if (Type == ItemType.NONE) return;
        if (Amount <= 0) return;

        if(character.Inventory.AddItem(Type, Amount)) {
            Destroy(gameObject);
        }
    }
}
