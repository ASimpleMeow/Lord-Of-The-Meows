using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
public class CharacterInventoryModel : MonoBehaviour {

    public Dictionary<ItemType, int> Items;

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
    }

    private void Start() {
        Items = new Dictionary<ItemType, int>();
    }

    public int GetItemCount(ItemType itemType) {

        if (!Items.ContainsKey(itemType)) return 0;

        return Items[itemType];
    }

    public void AddItem(ItemType itemType) {
        AddItem(itemType, 1);
    }

    public void AddItem(ItemType itemType, int amount) {

        if (m_Character.Movement.IsFrozen) return;

        if (Items.ContainsKey(itemType)) Items[itemType] += amount;
        else Items.Add(itemType, amount);

        if (m_Character.InventoryView == null) return;

        m_Character.InventoryView.AddItem(itemType, amount);
    }

    public void RemoveItem(ItemType itemType) {
        RemoveItem(itemType, 1);
    }

    public void RemoveItem(ItemType itemType, int amount) {

        if (!Items.ContainsKey(itemType) || m_Character.Movement.IsFrozen) return;

        if (Items[itemType] > amount) Items[itemType] -= amount;
        else Items.Remove(itemType);

        if (m_Character.InventoryView == null) return;

        m_Character.InventoryView.RemoveItem(itemType, amount);
    }

    public void Use() {

        if (m_Character.Movement.IsFrozen || m_Character.InventoryView == null) return;

        ItemType selectedItem = m_Character.InventoryView.GetSelectedItem();

        switch (selectedItem) {
            case ItemType.WEAPON:
                Debug.Log("Used Weapon");
                break;
            case ItemType.HEALTH:
                Debug.Log("Used Health");
                RemoveItem(ItemType.HEALTH, 1);
                break;
            case ItemType.COIN:
                Debug.Log("Used Coin");
                RemoveItem(ItemType.COIN, 1);
                break;
        }
    }
}
