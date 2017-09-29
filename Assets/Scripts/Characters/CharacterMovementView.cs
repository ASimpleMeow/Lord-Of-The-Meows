using System.Collections;
using UnityEngine;

[RequireComponent (typeof (Character))]
public class CharacterMovementView : MonoBehaviour {

    [SerializeField]
    private Animator Animator;

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();

        if (Animator == null) {
            Debug.LogError("Character Animator is not setup!");
            enabled = false;
        }
    }

	private void Update () {
        UpdateDirection();
	}

    private void UpdateDirection() {
        Vector3 direction = m_Character.Movement.GetDirection();

        if (direction != Vector3.zero) {
            Animator.SetFloat("DirectionX", direction.x);
            Animator.SetFloat("DirectionY", direction.y);
        }

        Animator.SetBool("IsMoving", m_Character.Movement.IsMoving());
    }
}
