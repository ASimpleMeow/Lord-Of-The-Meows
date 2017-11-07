using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemSlot : MonoBehaviour {

    [SerializeField]
    private bool IsSelected;

    private int m_Amount;
    private ItemType m_ItemType;

    [SerializeField]
    private Image m_ItemImageSprite;
    [SerializeField]
    private Button m_ItemButton;
    [SerializeField]
    private Text m_StackText;

    private void Awake() {
        m_Amount = 0;
        m_ItemType = ItemType.NONE;
        IsSelected = false;
    }

    public void SetItem(ItemType itemType, int amount) {
        m_ItemType = itemType;
        m_Amount = amount;

        SetSprite(Database.Item.FindItem(itemType) == null ? null : Database.Item.FindItem(m_ItemType).ItemSprite);
        if (m_Amount > 1) m_StackText.text = m_Amount.ToString();
        else m_StackText.text = "";
    }

    public bool IsEmpty {
        get { return m_ItemType == ItemType.NONE && m_Amount == 0; }
    }

    public ItemType Type {
        get { return m_ItemType; }
    }

    public int Count {
        get { return m_Amount; }
    }

    public bool Selected {
        get { return IsSelected; }
    }

    public void Select(bool select) {
        IsSelected = select;
        if (select) {
            m_ItemButton.Select();
        }
    }

    private void SetSprite(Sprite itemSprite) {
        if (itemSprite == null) m_ItemImageSprite.enabled = false;
        else {
            m_ItemImageSprite.sprite = itemSprite;
            m_ItemImageSprite.enabled = true;
        }
    }


}
