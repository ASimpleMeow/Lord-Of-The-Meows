using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class PickableBase : MonoBehaviour {

    virtual public void OnPickedUp(Character character) {
        Debug.LogWarning("OnPickedUp is not implemented!", gameObject);
    }

}
