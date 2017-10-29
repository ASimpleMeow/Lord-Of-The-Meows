using System.IO;
using UnityEngine;

public class Character : MonoBehaviour {

    [SerializeField]
    private string DefaultDataName = "CharacterDataDefault.json";

    public CharacterMovementModel Movement;
    public CharacterInteractionModel Interaction;
    public CharacterMovementView MovementView;
    public CharacterInventoryModel Inventory;
    public CharacterInventoryView InventoryView;
    public CharacterHealthModel Health;
    public CharacterData Data;

    public void Awake() {
        if (Data == null) return;
        string path = Application.dataPath + "/Resources/Data/Character/" + "/SaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, Data);
        } else {
            path = Application.dataPath + "/Resources/Data/Character/" + DefaultDataName;
            if (File.Exists(path)) {
                string dataAsJson = File.ReadAllText(path);
                JsonUtility.FromJsonOverwrite(dataAsJson, Data);
            } else {
                Debug.LogWarning(path);
            }
        }

        SceneController.Instance.LoadScene(Data.Level);
        /*string path = Application.dataPath + "/Resources/Data/Character/" + DefaultDataName;
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, Data);
        } else {
            Debug.LogWarning(path);
        }*/
    }
}
