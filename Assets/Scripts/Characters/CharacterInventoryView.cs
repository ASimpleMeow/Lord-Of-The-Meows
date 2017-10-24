using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
public class CharacterInventoryView : MonoBehaviour {

    // Inspector fields
    [SerializeField]
    private GameObject InventoryBox;

    private Character m_Character;

    private List<ItemSlot> m_ItemSlots;
    private int m_SelectedIndex;

    private void Awake() {
        if (InventoryBox == null) {
            Debug.LogError("No Inventory panel attached!", gameObject);
            enabled = false;
        }

        m_Character = GetComponent<Character>();

        if (m_Character.Data == null) {
            Debug.LogError("No Character data found!");
            enabled = false;
        }

        m_ItemSlots = new List<ItemSlot>(InventoryBox.GetComponentsInChildren<ItemSlot>());
    }

    private void Start() {
        m_SelectedIndex = 0;
        PreviousItem();
    }

    private void Update() {
        for (int i = 0; i < m_Character.Data.Inventory.Keys.Count; ++i) {
            ItemType type = m_Character.Data.Inventory.Keys[i];
            m_ItemSlots[i].SetItem(type, m_Character.Data.Inventory.ItemAmount(type));
        }
    }

    //---------SELECTING ITEMS------------//
    public void NextItem() {
        m_ItemSlots[m_SelectedIndex].Select(false);
        if (m_SelectedIndex < m_ItemSlots.Count - 1) m_SelectedIndex++;
        m_ItemSlots[m_SelectedIndex].Select(true);
    }

    public void PreviousItem() {
        m_ItemSlots[m_SelectedIndex].Select(false);
        if (m_SelectedIndex > 0) m_SelectedIndex--;
        m_ItemSlots[m_SelectedIndex].Select(true);
    }

    public ItemType GetSelectedItem() {
        foreach (ItemSlot slot in m_ItemSlots) {
            if (slot.Selected) {
                return slot.Type;
            }
        }

        return ItemType.NONE;
    }
}
