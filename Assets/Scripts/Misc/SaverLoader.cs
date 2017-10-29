using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class SaverLoader : MonoBehaviour {

    public static SaverLoader Instance;

    [SerializeField]
    private CharacterData CharacterData;
    [SerializeField]
    private CameraData CameraData;
    [SerializeField]
    private List<LevelData> LevelsData;

    private void Awake() {
        Instance = this; 
    }

    public static void SaveLevels() {
        Instance.DoSaveLevels();
    }

    public static CharacterData SaveCharacter() {
        return Instance.DoSaveCharacter();
    }

    public static CameraData SaveCamera() {
        return Instance.DoSaveCamera();
    }

    public static void LoadLevels() {
        Instance.DoLoadLevels();
    }

    public static CharacterData LoadCharacter() {
        return Instance.DoLoadCharacter();
    }

    public static CameraData LoadCamera() {
        return Instance.DoLoadCamera();
    }

    private void DoSaveLevels() {
        foreach (LevelData data in LevelsData) {
            string path = Application.persistentDataPath + "/" + data.LevelName + "SaveFile.json";
            string saveData = JsonUtility.ToJson(data);
            File.WriteAllText(path, saveData);
        }
    }

    private CharacterData DoSaveCharacter() {
        CharacterData.Level = SceneController.Instance.CurrentScene;
        string path = Application.persistentDataPath + "/CharacterSaveFile.json";
        string saveData = JsonUtility.ToJson(CharacterData);
        File.WriteAllText(path, saveData);
        return CharacterData;
    }

    private CameraData DoSaveCamera() {
        string path = Application.persistentDataPath + "/CameraSaveFile.json";
        string saveData = JsonUtility.ToJson(CameraData);
        File.WriteAllText(path, saveData);
        return CameraData;
    }

    private void DoLoadLevels() {
        foreach (LevelData data in LevelsData) {
            string path = Application.persistentDataPath + "/" + data.LevelName + "SaveFile.json";
            if (File.Exists(path)) {
                string dataAsJson = File.ReadAllText(path);
                JsonUtility.FromJsonOverwrite(dataAsJson, data);
            } else {
                Debug.LogWarning(path);
            }
        }
    }

    private CharacterData DoLoadCharacter() {
        string path = Application.persistentDataPath + "/CharacterSaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, CharacterData);
        } else {
            Debug.LogWarning(path);
        }
        return CharacterData;
    }

    private CameraData DoLoadCamera() {
        string path = Application.persistentDataPath + "/CameraSaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, CameraData);
        } else {
            Debug.LogWarning(path);
        }
        return CameraData;
    }
}
