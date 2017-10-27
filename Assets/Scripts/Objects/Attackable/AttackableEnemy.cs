using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackableEnemy : AttackableBase {

    [SerializeField]
    private float MaxHealth;

    private float m_Health;

    private void Awake() {
        m_Health = MaxHealth;
    }

    public float Health {
        get { return m_Health; }
    }

    public override void OnHit(Collider hitCollider, ItemType item) {

        float damage = 10; //Change at some point

        m_Health -= damage;
        //TO-DO Display UI damage? 

        if (m_Health <= 0) {
            Destroy(gameObject);
        }

    }
}
