using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class WeaponCollider : MonoBehaviour {

    [SerializeField]
    private ItemType Item;

    private Collider m_Collider;

    private void Awake() {
        m_Collider = GetComponent<Collider>();
        m_Collider.isTrigger = true;
    }

    private void OnTriggerEnter(Collider other) {

        AttackableBase attackable = other.gameObject.GetComponent<AttackableBase>();

        if (attackable != null) {
            attackable.OnHit(m_Collider, Item);
        }
    }

}
