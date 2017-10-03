using UnityEngine;
using UnityEditor;

public class CharacterDataCreator {

    [MenuItem("Assets/Create/Character Data")]
    public static void CreateAsset() {
        ScriptableObjectUtility.CreateAsset<CharacterData>();
    }
}