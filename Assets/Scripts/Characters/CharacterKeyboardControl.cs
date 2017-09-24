using System.Collections;
using UnityEngine;

public class CharacterKeyboardControl : CharacterBaseControl {

	void Update () {
        updateDirection();
        updateAction();
	}

    void updateAction() {

        if (Input.GetKeyDown(KeyCode.F)) {
            onActionPressed();
        }
    }

    void updateDirection() {
        Vector3 newDirection = Vector3.zero;

        if (Input.GetKey(KeyCode.W)) {
            newDirection = transform.forward;
        }else if (Input.GetKey(KeyCode.S)) {
            newDirection = -transform.forward;
        }

        if (Input.GetKey(KeyCode.A)) {
            newDirection += -transform.right;
        }else if (Input.GetKey(KeyCode.D)) {
            newDirection += transform.right;
        }

        setDirection(newDirection);
    }
}
