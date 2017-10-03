using UnityEngine;
using System.Collections.Generic;

[System.Serializable]
public class CharacterData : ScriptableObject {

    private static CharacterData m_CharacterData;

    [SerializeField]
    private Inventory m_Inventory;

    public Inventory Inventory {
        get {
            if (m_CharacterData == null) {
                m_CharacterData = Resources.Load<CharacterData>("Data/Character/CharacterDataAsset");
            }
            if (m_Inventory == null) m_Inventory = new Inventory();

            return m_CharacterData.m_Inventory;
        }
    }
}

[System.Serializable]
public class Inventory {
    public Dictionary<ItemType, int> Items;

    public Inventory() {
        Items = new Dictionary<ItemType, int>();
    }
}
