using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class DataController : MonoBehaviour {

    public static DataController Instance;

    public LevelData Data;

    [SerializeField]
    private string DefaultDataName = "LevelDataDefault";

    private void Awake() {
        if(Instance == null) Instance = this;
        if(Data == null) {
            Debug.LogWarning("NO DATA ATTACHED!");
            enabled = false;
        }

        string path = Application.persistentDataPath + "/"+Data.LevelName + "SaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, Data);
            Debug.Log("Level Data Loaded + " + Data.LevelName);
        } else {
            path = "Data/" + Data.LevelName + "/" + DefaultDataName;
            TextAsset t = Resources.Load<TextAsset>(path.Replace(".json",""));
            JsonUtility.FromJsonOverwrite(t.text, Data);
        }
    }

    public ObjectData FindThis(string gameObjectName, string script) {
        foreach (ObjectData obj in DataController.Instance.Data.Objects) {
            if (obj.objectName == gameObjectName) {
                if (obj.script == script) {
                    return obj;
                }
            }
        }

        return null;
    }


}
