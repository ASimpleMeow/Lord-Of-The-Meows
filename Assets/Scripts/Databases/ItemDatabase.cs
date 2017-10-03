using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemDatabase : ScriptableObject {

    // Inspector fields
    private List<ItemData> Data;

    public ItemData FindItem(ItemType itemType) {

        foreach(ItemData itemData in Data) {
            if (itemData.Type == itemType) return itemData;
        }

        return null;
    }
}

[System.Serializable]
public class ItemData {

    public ItemType Type;
    public Sprite ItemSprite;
    public GameObject Prefab;
    public bool IsWeapon;
}
