using UnityEngine;

public class Character : MonoBehaviour {
    public CharacterMovementModel Movement;
    public CharacterInteractionModel Interaction;
    public CharacterMovementView MovementView;
    public CharacterInventoryModel Inventory;
    public CharacterInventoryView InventoryView;
    public CharacterData Data;

    private void Awake() {
        if(Data == null) {
            Debug.LogError("NO CHARACTER DATA!", gameObject);
        }
    }
}
