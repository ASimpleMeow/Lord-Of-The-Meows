using System.Collections;
using UnityEngine;

[RequireComponent (typeof (Character))]
public class CharacterBaseControl : MonoBehaviour {

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
    }


    //---------MOVEMENT CONTROL------------//
    protected void SetDirection(Vector3 direction) {
        if (m_Character.Movement == null) return;
        m_Character.Movement.SetDirection(direction);
    }

    protected void SetRunning(bool isRunning) {
        m_Character.Movement.IsRunning = isRunning;
    }


    //---------INTERACTION CONTROL------------//
    protected void OnActionPressed() {
        if (m_Character.Interaction == null) return;
        m_Character.Interaction.OnInteract();
    }

    protected void OnUpChoice() {
        if (m_Character.Interaction == null) return;
        m_Character.Interaction.OnChoiceSelectUp();
    }

    protected void OnDownChoice() {
        if (m_Character.Interaction == null) return;
        m_Character.Interaction.OnChoiceSelectDown();
    }


    //---------INVENTORY CONTROL------------//
    protected void OnUseItem() {
        m_Character.Inventory.Use();
    }

    protected void OnPreviousItem() {
        m_Character.InventoryView.PreviousItem();
    }

    protected void OnNextItem() {
        m_Character.InventoryView.NextItem();
    }
}
