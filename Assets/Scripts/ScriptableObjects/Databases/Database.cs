﻿using System.Collections;
using UnityEngine;

public class Database : MonoBehaviour {

    private static ItemDatabase m_ItemDatabase;

    public static ItemDatabase Item {
        get {
            if (m_ItemDatabase == null) {
                m_ItemDatabase = Resources.Load<ItemDatabase>("Databases/ItemDatabase");
            }

            return m_ItemDatabase;
        }
    }
}
