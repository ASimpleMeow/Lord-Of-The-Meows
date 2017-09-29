using System.Collections;
using UnityEngine;


public class InteractableBase : MonoBehaviour {

	virtual public void OnInteract(ref Character character) {
        Debug.LogWarning("OnInteract is not implemented!", gameObject);
    }
}
