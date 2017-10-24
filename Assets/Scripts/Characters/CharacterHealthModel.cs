using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
public class CharacterHealthModel : MonoBehaviour {

    private Character m_Character;

    public const int m_MaxHealth = 9;

    private void Awake() {
        m_Character = GetComponent<Character>();
    }

    void Start () {
        HealthUI.UpdateHealth(m_Character.Data.Health, m_MaxHealth);
    }

	void Update () {
        if (Input.GetKeyDown(KeyCode.T)) DealDamage(1);
        if (Input.GetKeyDown(KeyCode.Y)) AddHealth(1);
    }

    public int MaxHealth {
        get { return m_MaxHealth; }
    }

    public bool DealDamage(int damage) {
        if (m_Character.Data.Health <= 0) return false;

        m_Character.Data.Health -= damage;

        HealthUI.UpdateHealth(m_Character.Data.Health, m_MaxHealth);

        if(m_Character.Data.Health <= 0) {
            m_Character.Data.Health = 0;
            Debug.Log("You Died");
        }

        return true;
    }

    public bool AddHealth(int amount) {
        Debug.Log("Add health " + amount);
        if (m_Character.Data.Health == m_MaxHealth) return false;

        if(m_Character.Data.Health + amount > m_MaxHealth) {
            Debug.Log("to max");
            m_Character.Data.Health = m_MaxHealth;
        } else {
            Debug.Log("just add");
            m_Character.Data.Health += amount;
        }

        HealthUI.UpdateHealth(m_Character.Data.Health, m_MaxHealth);

        return true;
    }
}
