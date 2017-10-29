using System.IO;
using UnityEngine;

public class Character : MonoBehaviour {

    [SerializeField]
    private string DefaultDataName = "CharacterDataDefault";

    public CharacterMovementModel Movement;
    public CharacterInteractionModel Interaction;
    public CharacterMovementView MovementView;
    public CharacterInventoryModel Inventory;
    public CharacterInventoryView InventoryView;
    public CharacterHealthModel Health;
    public CharacterData Data;

    public void Awake() {
        if (Data == null) return;
        string path = Application.persistentDataPath + "/CharacterSaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, Data);
        } else {
            path = "Data/Character/" + DefaultDataName;
            TextAsset t = Resources.Load<TextAsset>(path.Replace(".json", ""));
            JsonUtility.FromJsonOverwrite(t.text, Data);
        }
    }

    private void Start() {
        if (Data == null) return;
        if (SceneController.Instance.CurrentScene == Data.Level) return;
        SceneController.Instance.ChangeScene(SceneController.Instance.CurrentScene, Data.Level);
    }
}
