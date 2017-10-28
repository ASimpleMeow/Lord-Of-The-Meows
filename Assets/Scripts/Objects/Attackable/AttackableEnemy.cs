using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class AttackableEnemy : AttackableBase {

    [SerializeField]
    private float MaxHealth;
    [SerializeField]
    private float PushBackMagnitude = 3.5f;
    [SerializeField]
    private Character ThisCharacter;

    private float m_Health;

    private void Awake() {
        m_Health = MaxHealth;
    }

    public float Health {
        get { return m_Health; }
    }

    public override void OnHit(Collider hitCollider, ItemType item) {
        Vector3 direction =  transform.position - hitCollider.gameObject.transform.position;
        direction.y *= 0;
        direction.Normalize();

        if (ThisCharacter != null && ThisCharacter.Movement != null) {
            ThisCharacter.Movement.Push(direction, PushBackMagnitude*1000);
        }

        float damage = 10; //Change at some point
        m_Health -= damage;
        //Debug.Log("ENEMY HIT! Health: " + m_Health);

        DamageNumbers.Instance.ShowDamageNumber(damage, transform.position);

        if (m_Health <= 0) {
            Destroy(ThisCharacter.gameObject);
        }

    }
}
