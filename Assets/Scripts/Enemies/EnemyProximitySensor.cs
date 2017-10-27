using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(EnemySimpleAIController))]
public class EnemyProximitySensor : MonoBehaviour {

    [SerializeField]
    private Collider m_ColliderSensor;

    private EnemySimpleAIController m_Controller;

    private void Awake() {
        if(m_ColliderSensor == null) {
            Debug.LogWarning("Sensor Not Attached!", gameObject);
            enabled = false;
        }

        m_ColliderSensor.isTrigger = true;
        m_Controller = GetComponent<EnemySimpleAIController>();
    }

    void OnTriggerEnter(Collider collider) {
        if (collider.tag == "Player") {
            m_Controller.CharacterInRange = collider.gameObject;
        }
    }

    void OnTriggerExit(Collider collider) {
        if (collider.tag == "Player") {
            m_Controller.CharacterInRange = null;
        }
    }
}
