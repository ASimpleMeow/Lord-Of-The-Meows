using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public class LevelData : ScriptableObject {

    public string LevelName;
    [SerializeField]
    List<ObjectData> GameObjects;

    public List<ObjectData> Objects {
        get {
            return GameObjects;
        }set {
            GameObjects = value;
        }
    }
}

[Serializable]
public class ObjectData {
    public string objectName;
    public string script;
    public bool keyVariable;
    public bool enabled;
    public bool enabledGameObject;

    public bool SignChoiceMessageOverride = false;
    public string[] SignChoiceMessage;
}
