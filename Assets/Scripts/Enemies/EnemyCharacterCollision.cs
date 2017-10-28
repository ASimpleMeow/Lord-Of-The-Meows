using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class EnemyCharacterCollision : MonoBehaviour {

    [SerializeField]
    private EnemySimpleAIController Controller;

    private void Awake() {
        if (Controller == null) {
            Debug.LogWarning("EnemyControllerNotAttached Not Attached!", gameObject);
            enabled = false;
        }
        GetComponent<Collider>().isTrigger = false;
    }

    void OnCollisionEnter(Collision collision) {
        if (collision.collider.tag == "Player") {
            Controller.OnHitCharacter(collision.collider.gameObject.GetComponent<Character>());
        }
    }
}
