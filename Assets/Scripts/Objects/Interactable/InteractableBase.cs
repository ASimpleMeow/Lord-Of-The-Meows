using System.Collections;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class InteractableBase : MonoBehaviour {

	virtual public void OnInteract(Character character) {
        Debug.LogWarning("OnInteract is not implemented!", gameObject);
    }

    virtual public void OnUse(Character character, ItemType itemType) {
        Debug.LogWarning("OnUse is not implemented!", gameObject);
    }
}
