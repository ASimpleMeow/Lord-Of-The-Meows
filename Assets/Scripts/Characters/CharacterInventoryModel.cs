using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
public class CharacterInventoryModel : MonoBehaviour {

    public Animator anim;

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
        if(m_Character.Data == null) {
            Debug.LogError("No Character data found!");
            enabled = false;
        }
    }

    public int GetItemCount(ItemType itemType) {

        if (!m_Character.Data.Inventory.Contains(itemType)) return 0;

        return m_Character.Data.Inventory.ItemAmount(itemType);
    }

    public bool AddItem(ItemType itemType) {
        return AddItem(itemType, 1);
    }

    public bool AddItem(ItemType itemType, int amount) {

        if (m_Character.Movement.IsFrozen) return false;
        m_Character.Data.Inventory.Add(itemType, amount);
        return true;
    }

    public bool RemoveItem(ItemType itemType) {
        return RemoveItem(itemType, 1);
    }

    public bool RemoveItem(ItemType itemType, int amount) {

        if (!m_Character.Data.Inventory.Contains(itemType) || m_Character.Movement.IsFrozen) return false;

        if (m_Character.Data.Inventory.ItemAmount(itemType) > amount) m_Character.Data.Inventory.Add(itemType, -amount);
        else m_Character.Data.Inventory.Remove(itemType);
        return true;
    }

    public void Use() {

        if (m_Character.Movement.IsFrozen || m_Character.InventoryView == null) return;

        ItemType selectedItem = m_Character.InventoryView.GetSelectedItem();

        switch (selectedItem) {
            case ItemType.WEAPON:
                //Debug.Log("Used Weapon");
                if (m_Character.Movement == null) return;
                if (!m_Character.Movement.CanAttack) return;
                m_Character.Movement.DoAttack();
                break;
            case ItemType.HEALTH:
                Debug.Log("Used Health");
                if (m_Character.Health == null) return;
                if(m_Character.Health.AddHealth(1)) RemoveItem(ItemType.HEALTH, 1);
                break;
            case ItemType.COIN:
                Debug.Log("Used Coin");
                if (m_Character.Interaction == null) return;
                m_Character.Interaction.OnExchange(ItemType.COIN);
                break;
        }
    }
}
