using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySimpleAIController : EnemyBaseController {

    [SerializeField]
    private int AttackDamage;
    [SerializeField]
    private float CharacterPushBack = 5.5f;
    [SerializeField]
    private AttackableEnemy m_AttackableEnemy;

    private void Update() {
        UpdateDirection();
    }

    private void UpdateDirection() {
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

    public override void OnHitCharacter(Character character) {
        Vector3 direction = character.transform.position - transform.position;
        direction.Normalize();
        direction.y *= 0;

        //Debug.Log("Damage Dealth :" + AttackDamage);
        if (character == null) return;

        character.Health.DealDamage(AttackDamage);
        character.Movement.Push(direction, CharacterPushBack*1000);
        Debug.Log(character.Data.Health);
    }
}
