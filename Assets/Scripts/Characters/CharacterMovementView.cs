using System.Collections;
using UnityEngine;

[RequireComponent (typeof (Character))]
public class CharacterMovementView : MonoBehaviour {

    // Inspector fields
    [SerializeField]
    private Animator Animator;
    [SerializeField]
    private float DampTime = 0.1f;

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();

        if (Animator == null) {
            Debug.LogError("Character Animator is not setup!");
            enabled = false;
        }
    }

	private void Update () {
        UpdateMovement();
	}

    private void UpdateMovement() {
        if (m_Character.Movement == null) return;
        float velocityPercentage = m_Character.Movement.Velocity / m_Character.Movement.MaxVelocity;

        Animator.SetFloat("VelocityPercent", velocityPercentage, DampTime, Time.deltaTime);
    }
}
