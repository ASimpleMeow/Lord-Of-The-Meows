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
    [SerializeField]
    private Vector3 m_Rotation;

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

    public Vector3 Rotation {
        get {
            return m_Rotation;
        } set {
            m_Rotation = value;
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

    public void Add(ItemType type, int amount) {
        if (Contains(type)) {
            for(int i = 0; i < m_ItemTypes.Count; ++i) {
                if(m_ItemTypes[i] == type) {
                    m_ItemAmount[i] += amount;
                    return;
                }
            }
        }

        //Removing uneeded NONE items
        for(int i = 0; i < m_ItemTypes.Count; ++i) {
            if(m_ItemTypes[i] == ItemType.NONE) {
                m_ItemTypes.RemoveAt(i);
                m_ItemAmount.RemoveAt(i);
            }
        }

        m_ItemTypes.Add(type);
        m_ItemAmount.Add(amount);
    }

    public void Remove(ItemType type) {
        if (!Contains(type)) return;
        for (int i = 0; i < m_ItemTypes.Count; ++i) {
            if (m_ItemTypes[i] == type) {
                m_ItemTypes[i] = ItemType.NONE;
                m_ItemAmount[i] = 0;
                break;
            }
        }

        for(int i = 0; i < m_ItemTypes.Count; ++i) {
            if (m_ItemTypes[i] == ItemType.NONE) continue;
            Debug.Log("Sorting : " + i + " - " + m_ItemTypes[i]);
            int index = i-1;
            int temp = i;
            while(index >= 0) {
                if (m_ItemTypes[index] != ItemType.NONE) break;
                m_ItemTypes[index] = m_ItemTypes[temp];
                m_ItemAmount[index] = m_ItemAmount[temp];
                m_ItemTypes[temp] = ItemType.NONE;
                m_ItemAmount[temp] = 0;
                temp = index;
                index--;
            }
        }
    }

    public List<ItemType> Keys {
        get {
            return m_ItemTypes;
        }
    }
}
