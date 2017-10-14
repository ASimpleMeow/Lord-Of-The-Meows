using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableExchange : InteractableBase {

    [SerializeField]
    private InteractableBase AnotherInteractable;
    [SerializeField]
    private ItemType ItemNeeded;
    [SerializeField]
    private int AmountNeeded;
    [SerializeField]
    private ItemType ItemGiven;
    [SerializeField]
    private int AmountGiven;

    public override void OnInteract(Character character) {
        if (AnotherInteractable == null) return;
        AnotherInteractable.OnInteract(character);
    }

    public override void OnUse(Character character, ItemType itemType) {
        if (character.Inventory == null || character.Data == null) return;

        if (!character.Data.Inventory.Items.ContainsKey(ItemNeeded)) return;
        if (character.Data.Inventory.Items[ItemNeeded] < AmountNeeded) return;

        character.Inventory.RemoveItem(ItemNeeded, AmountNeeded);
        character.Inventory.AddItem(ItemGiven, AmountGiven);
    } 
}
