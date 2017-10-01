using UnityEngine;
using UnityEditor;
using System.Collections;

public class ItemDatabaseCreator : MonoBehaviour {

    [MenuItem("Databases/Create Item Database")]
    public static void CreateItemDatabase() {
        ItemDatabase newDatabase = ScriptableObject.CreateInstance<ItemDatabase>();
        AssetDatabase.CreateAsset(newDatabase, "Assets/Resources/Databases/ItemDatabase.asset");
        AssetDatabase.Refresh();
    }
}