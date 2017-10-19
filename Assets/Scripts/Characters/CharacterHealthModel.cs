using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterHealthModel : MonoBehaviour {

    [SerializeField]
    private int StartingHealth;

    private int m_Health;
    private int m_MaxHealth;

	void Start () {
        m_Health = StartingHealth;
        m_MaxHealth = StartingHealth;

        HealthUI.UpdateHealth(m_Health, m_MaxHealth);
    }

	void Update () {
        if (Input.GetKeyDown(KeyCode.T)) DealDamage(1);
        if (Input.GetKeyDown(KeyCode.Y)) AddHealth(1);
    }

    public int Health {
        get { return m_Health; }
    }

    public int MaxHealth {
        get { return m_MaxHealth; }
    }

    public void DealDamage(int damage) {
        if (m_Health <= 0) return;

        m_Health -= damage;

        HealthUI.UpdateHealth(m_Health, m_MaxHealth);

        if(m_Health <= 0) {
            m_Health = 0;
            Debug.Log("You Died");
        }
    }

    public void AddHealth(int amount) {
        Debug.Log("Add health " + amount);
        if (m_Health == m_MaxHealth) return;

        if(m_Health + amount > m_MaxHealth) {
            Debug.Log("to max");
            m_Health = m_MaxHealth;
        } else {
            Debug.Log("just add");
            m_Health += amount;
        }

        HealthUI.UpdateHealth(m_Health, m_MaxHealth);
    }
}
