using System.Collections;
using UnityEngine;

[RequireComponent (typeof (Character))]
public class CharacterBaseControl : MonoBehaviour {


    private Character m_Character;

    void Awake() {
        m_Character = GetComponent<Character>();
    }

    protected void SetDirection(Vector3 direction) {
        if (m_Character.Movement == null) return;

        m_Character.Movement.SetDirection(direction);
    }

    protected void SetRunning(bool isRunning) {
        m_Character.Movement.IsRunning = isRunning;
    }

    protected void OnActionPressed() {
        if (m_Character.Interaction == null) return;

        m_Character.Interaction.OnInteract();
    }
}
