using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent (typeof(Character))]
public class CharacterInteractionModel : MonoBehaviour {

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
    }

    public void OnInteract() {
        InteractableBase usableInteractable = FindUsableInteractable();
        if (usableInteractable == null) return;

        usableInteractable.OnInteract(m_Character);
    }

    public void OnChoiceSelectUp() {
        ChoiceBox.HightlightChoice(true);
    }

    public void OnChoiceSelectDown() {
        ChoiceBox.HightlightChoice(false);
    }

    private InteractableBase FindUsableInteractable() {
        Collider[] closeColliders = Physics.OverlapSphere(transform.position, 1.5f);
        InteractableBase closestInteractable = null;
        float angleToClosestInteractble = Mathf.Infinity;

        for (int i = 0; i < closeColliders.Length; ++i) {
            InteractableBase colliderInteractable = closeColliders[i].GetComponent<InteractableBase>();

            if (colliderInteractable == null) continue;

            Vector3 directionToInteractble = closeColliders[i].transform.position - transform.position;
            float angleToInteractable = Vector3.Angle(m_Character.transform.forward, directionToInteractble);

            if (angleToInteractable < 60) {
                if (angleToInteractable < angleToClosestInteractble) {
                    closestInteractable = colliderInteractable;
                    angleToClosestInteractble = angleToInteractable;
                }
            }
        }
        return closestInteractable;
    }
}
