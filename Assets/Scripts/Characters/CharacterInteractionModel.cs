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

        usableInteractable.OnInteract(ref m_Character);
    }


    /*
     * Finds a useable interactable object by doing the following:
     *      - Create a sphere (TODO - Try capsule) to return all close by colliders
     *      - Loop through the colliders if the gameobject is not interactable, continue
     *      - Get the direction to interactable
     *      - Find the angle between character and interactable
     *      - If angle is acceptable, store that interactable (in case you find a better match)
     *      - Return best interactable you found
     */
    private InteractableBase FindUsableInteractable() {
        Collider[] closeColliders = Physics.OverlapSphere(transform.position, 1.1f);
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
