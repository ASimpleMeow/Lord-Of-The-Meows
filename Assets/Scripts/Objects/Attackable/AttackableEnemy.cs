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
    [SerializeField]
    private List<GameObject> DropObjects;
    [SerializeField]
    [Range(0,1)]
    private List<float> DropRate;
    [SerializeField]
    private GameObject DeathFX;

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

        DamageNumbers.Instance.ShowDamageNumber(damage, transform.position);

        if (m_Health <= 0) {
            if (DeathFX != null) Destroy(Instantiate(DeathFX, transform.position, Quaternion.identity), 3);
            for(int index = 0; index < DropObjects.Count; ++index) {
                if (DropRate == null) break;
                if (Random.Range(0f, 1f) <= DropRate[index]) {
                    if (DropObjects[index] != null) {
                        Destroy(Instantiate(DropObjects[index], transform.position, Quaternion.identity), 10);
                        break;
                    }
                }
            }
            Destroy(ThisCharacter.gameObject);
        }

    }
}
