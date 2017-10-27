using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackableBase : MonoBehaviour {

    public virtual void OnHit(Collider hitCollider, ItemType item) {
        Debug.LogWarning("No OnHit Event setup for " + gameObject.name, gameObject);
    }
}
