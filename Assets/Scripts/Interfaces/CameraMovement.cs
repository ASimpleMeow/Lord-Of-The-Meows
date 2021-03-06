﻿using System.Collections;
using System.IO;
using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Camera))]
public class CameraMovement : MonoBehaviour {

    public CameraData Data;
    public float OffsetX;
    public float OffsetZ;
    public float Speed;

    [SerializeField]
    private Transform Target;
    [SerializeField]
    private Vector3 m_NewPosition;
    [SerializeField]
    private string DefaultDataName = "CameraDataDefault";

    private void Awake() {
        if (Data == null) return;
    }

    private void Start() {

        string path = Application.persistentDataPath + "/CameraSaveFile.json";
        if (File.Exists(path)) {
            Data = SaverLoader.LoadCamera();
            Debug.Log("Camera Data Loaded from file");
        } else {
            path = "Data/Camera/" + DefaultDataName;
            TextAsset t = Resources.Load<TextAsset>(path.Replace(".json", ""));
            JsonUtility.FromJsonOverwrite(t.text, Data);
        }
        OffsetX = Data.OffsetX;
        OffsetZ = Data.OffsetZ;
        Speed = Data.Speed;
        transform.eulerAngles = Data.NewRotation;
        transform.position = Data.NewPosition;
    }

    private void FixedUpdate() {
        m_NewPosition = new Vector3(Target.position.x + OffsetX, transform.position.y, Target.position.z + OffsetZ);
        transform.position = Vector3.Lerp(transform.position, m_NewPosition, Speed * Time.deltaTime);
    }
}
