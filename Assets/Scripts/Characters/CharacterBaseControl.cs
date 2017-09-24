using System.Collections;
using UnityEngine;

public class CharacterBaseControl : MonoBehaviour {

    private CharacterMovementModel m_movementModel;
    private CharacterInteractionModel m_interactionModel;

    void Awake() {
        m_movementModel = GetComponent<CharacterMovementModel>();
        m_interactionModel = GetComponent<CharacterInteractionModel>();
    }

    protected void setDirection(Vector3 direction) {
        if (m_movementModel == null) return;

        m_movementModel.setDirection(direction);
    }

    protected void onActionPressed() {
        if (m_interactionModel == null) return;

        m_interactionModel.onInteract();
    }
}
