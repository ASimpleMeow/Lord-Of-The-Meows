using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
public class CharacterInventoryModel : MonoBehaviour {

    //private Dictionary<ItemType, int> Items;

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
        if(m_Character.Data == null) {
            Debug.LogError("No Character data found!");
            enabled = false;
        }
    }

    public int GetItemCount(ItemType itemType) {

        if (!m_Character.Data.Inventory.Items.ContainsKey(itemType)) return 0;

        return m_Character.Data.Inventory.Items[itemType];
    }

    public void AddItem(ItemType itemType) {
        AddItem(itemType, 1);
    }

    public void AddItem(ItemType itemType, int amount) {

        if (m_Character.Movement.IsFrozen) return;

        if (m_Character.Data.Inventory.Items.ContainsKey(itemType)) m_Character.Data.Inventory.Items[itemType] += amount;
        else m_Character.Data.Inventory.Items.Add(itemType, amount);

        if (m_Character.InventoryView == null) return;
        
        m_Character.InventoryView.AddItem(itemType, amount);
    }

    public void RemoveItem(ItemType itemType) {
        RemoveItem(itemType, 1);
    }

    public void RemoveItem(ItemType itemType, int amount) {

        if (!m_Character.Data.Inventory.Items.ContainsKey(itemType) || m_Character.Movement.IsFrozen) return;

        if (m_Character.Data.Inventory.Items[itemType] > amount) m_Character.Data.Inventory.Items[itemType] -= amount;
        else m_Character.Data.Inventory.Items.Remove(itemType);

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
                if (m_Character.Interaction == null) return;
                m_Character.Interaction.OnExchange(ItemType.COIN);
                //RemoveItem(ItemType.COIN, 1);
                break;
        }
    }
}
