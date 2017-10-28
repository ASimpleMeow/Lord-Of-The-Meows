using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackableEnemy : AttackableBase {

    [SerializeField]
    private float MaxHealth;
    [SerializeField]
    private float PushBackMagnitude = 3.5f;

    private float m_Health;

    private void Awake() {
        m_Health = MaxHealth;
    }

    public float Health {
        get { return m_Health; }
    }

    public override void OnHit(Collider hitCollider, ItemType item) {
        Character thisCharacter = GetComponent<Character>();
        Vector3 direction =  transform.position - hitCollider.gameObject.transform.position;
        direction.y *= 0;
        direction.Normalize();

        if (thisCharacter != null && thisCharacter.Movement != null) {
            thisCharacter.Movement.Push(direction, PushBackMagnitude*1000);
        }

        float damage = 10; //Change at some point
        m_Health -= damage;
        Debug.Log("ENEMY HIT! Health: " + m_Health);
        //TO-DO Display UI damage? 

        if (m_Health <= 0) {
            Destroy(gameObject);
        }

    }
}
