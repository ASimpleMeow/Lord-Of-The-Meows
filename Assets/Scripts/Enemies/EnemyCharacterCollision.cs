using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class EnemyCharacterCollision : MonoBehaviour {

    private EnemySimpleAIController m_Controller;

    private void Awake() {
        m_Controller = GetComponent<EnemySimpleAIController>();
        GetComponent<Collider>().isTrigger = false;
    }

    void OnCollisionEnter(Collision collision) {
        if (collision.collider.tag == "Player") {
            m_Controller.OnHitCharacter(collision.collider.gameObject.GetComponent<Character>());
        }
    }
}
