using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterInteractionModel : MonoBehaviour {

    private Collider m_Collider;
    private CharacterMovementModel m_MovementModel;

    void Awake () {
        m_Collider = GetComponent<Collider>();
        m_MovementModel = GetComponent<CharacterMovementModel>();
    }

	void Update () {
		
	}

    public void OnInteract() {
        Interactable usableInteractable = FindUsableInteractable();
        if (usableInteractable == null) return;

        Debug.Log("Found Interactable : " + usableInteractable.name);
    }

    Interactable FindUsableInteractable() {
        Collider[] closeColliders = Physics.OverlapSphere(transform.position, 1.1f);
        Interactable closestInteractable = null;
        float angleToClosestInteractble = Mathf.Infinity;

        for (int i = 0; i < closeColliders.Length; ++i) {
            Interactable colliderInteractable = closeColliders[i].GetComponent<Interactable>();

            if (colliderInteractable == null) continue;

            Vector3 directionToInteractble = closeColliders[i].transform.position - transform.position;
            float angleToInteractable = Vector3.Angle(m_MovementModel.GetFacingDirection(), directionToInteractble);

            if (angleToInteractable < 40) {
                if (angleToInteractable < angleToClosestInteractble) {
                    closestInteractable = colliderInteractable;
                    angleToClosestInteractble = angleToInteractable;
                }
            }
        }
        return closestInteractable;
    }
}
