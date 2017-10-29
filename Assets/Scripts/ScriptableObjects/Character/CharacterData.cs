using UnityEngine;
using System.Collections.Generic;
using System;

[Serializable]
public class CharacterData : ScriptableObject {

    [SerializeField]
    private Inventory m_Inventory;
    [SerializeField]
    private int m_Health;
    [SerializeField]
    private int m_Level;
    [SerializeField]
    private Vector3 m_Position;

    public int Health {
        get { return m_Health; }
        set { m_Health = value; }
    }

    public Inventory Inventory {
        get {
            if (m_Inventory == null) m_Inventory = new Inventory();
            return m_Inventory;
        }
    }

    public int Level {
        get { return m_Level; }
        set { m_Level = value; }
    }

    public Vector3 Position {
        get {
            return m_Position;
        }set {
            m_Position = value;
        }
    }
}

[Serializable]
public class Inventory {

    [SerializeField]
    private List<ItemType> m_ItemTypes;
    [SerializeField]
    private List<int> m_ItemAmount;

    public Inventory() {
        m_ItemTypes = new List<ItemType>();
        m_ItemAmount = new List<int>();
        m_ItemTypes.Capacity = 7;
        m_ItemAmount.Capacity = 7;
    }

    public bool Contains(ItemType type) {
        return m_ItemTypes.Contains(type);
    }

    public int ItemAmount(ItemType type) {
        for(int i = 0; i < m_ItemTypes.Count; ++i) {
            if (m_ItemTypes[i] == type) return m_ItemAmount[i];
        }
        return 0;
    }

    public void AddAmount(ItemType type, int amount) {
        for (int i = 0; i < m_ItemTypes.Count; ++i) {
            if (m_ItemTypes[i] == type) {
                m_ItemAmount[i] += amount;
            }
        }
    }

    public void Add(ItemType type, int amount) {
        m_ItemTypes.Add(type);
        m_ItemAmount.Add(amount);
    }

    public void Remove(ItemType type) {
        int removeIndex = 0;
        for (int i = 0; i < m_ItemTypes.Count; ++i) {
            if (m_ItemTypes[i] == type) {
                removeIndex = i;
                break;
            }
        }
        m_ItemTypes.RemoveAt(removeIndex);
        m_ItemAmount.RemoveAt(removeIndex);
    }

    public List<ItemType> Keys {
        get {
            return m_ItemTypes;
        }
    }
}
