using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySimpleAIController : CharacterBaseControl {

    [SerializeField]
    private int AttackDamage;
    [SerializeField]
    private float CharacterPushBack = 5.5f;
    [SerializeField]
    private AttackableEnemy m_AttackableEnemy;
    private GameObject m_CharacterInRange;

    private void Update() {
        UpdateDirection();
    }

    void UpdateDirection() {
        Vector3 direction = Vector3.zero;

        if (m_CharacterInRange != null) {
            direction = m_CharacterInRange.transform.position - transform.position;
            direction.Normalize();
        }

        if (m_AttackableEnemy != null && m_AttackableEnemy.Health <= 0) {
            direction = Vector3.zero;
        }

        SetDirection(direction);
    }

    public GameObject CharacterInRange {
        get { return m_CharacterInRange; }
        set { m_CharacterInRange = value; }
    }

    public void OnHitCharacter(Character character) {
        Vector3 direction = character.transform.position - transform.position;
        direction.Normalize();
        direction.y *= 0;

        m_CharacterInRange = null;

        //Debug.Log("Damage Dealth :" + AttackDamage);
        if (character == null) return;

        character.Health.DealDamage(AttackDamage);
        character.Movement.Push(direction, CharacterPushBack*1000);
        Debug.Log(character.Data.Health);
    }
}
