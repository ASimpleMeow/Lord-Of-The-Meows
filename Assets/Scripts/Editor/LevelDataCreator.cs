using UnityEngine;
using UnityEditor;

public class LevelDataCreator {

    [MenuItem("Assets/Create/Level Data")]
    public static void CreateAsset() {
        ScriptableObjectUtility.CreateAsset<LevelData>();
    }

}
