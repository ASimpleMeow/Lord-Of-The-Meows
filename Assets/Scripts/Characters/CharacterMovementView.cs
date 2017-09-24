using System.Collections;
using UnityEngine;

public class CharacterMovementView : MonoBehaviour {

    public Animator animator;

    private CharacterMovementModel m_movementModel;

    void Awake() {
        m_movementModel = GetComponent<CharacterMovementModel>();

        if (animator == null) {
            Debug.LogError("Character Animator is not setup!");
            enabled = false;
        }
    }

	void Update () {
        updateDirection();
	}

    void updateDirection() {
        Vector3 direction = m_movementModel.getDirection();

        if (direction != Vector3.zero) {
            animator.SetFloat("DirectionX", direction.x);
            animator.SetFloat("DirectionY", direction.y);
        }

        animator.SetBool("IsMoving", m_movementModel.isMoving());
    }
}
