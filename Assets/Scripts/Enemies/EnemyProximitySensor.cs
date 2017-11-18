using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyProximitySensor : MonoBehaviour {

    [SerializeField]
    private Collider ColliderSensor;
    [SerializeField]
    private EnemyBaseController Controller;

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
            CharacterHealthModel playerHealthModel = collider.gameObject.GetComponent<CharacterHealthModel>();
            if (playerHealthModel == null || playerHealthModel.IsDead) return;
            Controller.CharacterInRange = collider.gameObject;
        }
    }

    void OnTriggerExit(Collider collider) {
        if (collider.tag == "Player") {
            Controller.CharacterInRange = null;
            EnemyMediumAIController controller = GetComponent<EnemyMediumAIController>();
            if (controller != null && controller.RunAway) controller.RunAway = false;
        }
    }
}
