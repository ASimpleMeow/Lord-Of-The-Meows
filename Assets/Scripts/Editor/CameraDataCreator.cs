using UnityEngine;
using UnityEditor;

public class CameraDataCreator {

    [MenuItem("Assets/Create/Camera Data")]
    public static void CreateAsset() {
        ScriptableObjectUtility.CreateAsset<CameraData>();
    }
}
