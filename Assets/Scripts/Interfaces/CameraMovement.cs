using System.Collections;
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
    private string DefaultDataName = "CameraDataDefault.json";

    private void Awake() {
        if (Data == null) return;
        string path = Application.dataPath + "/Resources/Data/Camera/" + "/SaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, Data);
        } else {
            path = Application.dataPath + "/Resources/Data/Camera/" + DefaultDataName;
            if (File.Exists(path)) {
                string dataAsJson = File.ReadAllText(path);
                JsonUtility.FromJsonOverwrite(dataAsJson, Data);
            } else {
                Debug.LogWarning(path);
            }
        }
    }

    private void Start() {
        OffsetX = Data.OffsetX;
        OffsetZ = Data.OffsetZ;
        Speed = Data.Speed;
        transform.eulerAngles = Data.NewRotation;
        transform.position = Data.NewPosition;
    }

    private void FixedUpdate() {
        m_NewPosition = new Vector3(Target.position.x + OffsetX, transform.position.y, Target.position.z + OffsetZ);
        transform.position = Vector3.Lerp(transform.position, m_NewPosition, Speed * Time.deltaTime);
        Data.NewPosition = transform.position;
    }
}
