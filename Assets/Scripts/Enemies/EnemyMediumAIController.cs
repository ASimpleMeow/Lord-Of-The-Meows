using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMediumAIController : EnemyBaseController {

    [SerializeField]
    private int AttackDamage;
    [SerializeField]
    private float CharacterPushBack = 5.5f;
    [SerializeField]
    private AttackableEnemy m_AttackableEnemy;
    [SerializeField]
    private float ChangeDirectionTimer = 2f;

    private bool m_RunAway;
    private float m_RunningTimer = 0f;
    private float m_DirectionTimer = 0f;
    private Vector3 m_Direction = Vector3.zero;

    private void Start() {
        m_RunningTimer = ChangeDirectionTimer;
    }

    private void Update() {
        UpdateDirection();
    }

    public void ChangeDirection() {
        m_Direction = new Vector3(Random.Range(-1, 1), 0, Random.Range(-1, 1));
        m_DirectionTimer = ChangeDirectionTimer;
    }

    private void UpdateDirection() {

        m_DirectionTimer -= Time.deltaTime;

        if (m_DirectionTimer <= 0 && Random.value < 0.05) {
            ChangeDirection();
        }

        if (m_CharacterInRange != null && !m_RunAway) {
            m_Direction = m_CharacterInRange.transform.position - transform.position;
            m_Direction.Normalize();
        }

        if (m_RunAway) {
            if(m_RunningTimer >= 0) {
                m_RunningTimer -= Time.deltaTime;
                m_Direction = transform.position - m_CharacterInRange.transform.position;
                m_Direction.Normalize();
                SetRunning(true);
            }else {
                m_RunningTimer = ChangeDirectionTimer;
                m_RunAway = false;
                SetRunning(false);
            }
        }

        if (m_AttackableEnemy != null && m_AttackableEnemy.Health <= 0) {
            m_Direction = Vector3.zero;
        }

        SetDirection(m_Direction);
    }

    public bool RunAway {
        get { return m_RunAway; }
        set { m_RunAway = value; }
    }

    public override void OnHitCharacter(Character character) {
        Vector3 direction = character.transform.position - transform.position;
        direction.Normalize();
        direction.y *= 0;

        if (character == null) return;

        character.Health.DealDamage(AttackDamage);
        character.Movement.Push(direction, CharacterPushBack * 1000);
        Debug.Log(character.Data.Health);
    }
}
