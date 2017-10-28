using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyProximitySensor : MonoBehaviour {

    [SerializeField]
    private Collider ColliderSensor;
    [SerializeField]
    private EnemySimpleAIController Controller;

    private void Awake() {
        if(ColliderSensor == null) {
            Debug.LogWarning("Sensor Not Attached!", gameObject);
            enabled = false;
        }

        if(Controller == null) {
            Debug.LogWarning("EnemyControllerNotAttached Not Attached!", gameObject);
            enabled = false;
        }

        ColliderSensor.isTrigger = true;
    }

    void OnTriggerEnter(Collider collider) {
        if (collider.tag == "Player") {
            Controller.CharacterInRange = collider.gameObject;
        }
    }

    void OnTriggerExit(Collider collider) {
        if (collider.tag == "Player") {
            Controller.CharacterInRange = null;
        }
    }
}
