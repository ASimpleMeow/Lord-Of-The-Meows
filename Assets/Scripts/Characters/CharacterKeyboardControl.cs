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
        Vector3 newDirection = new Vector3(-Input.GetAxisRaw("Horizontal"), 0.0f, -Input.GetAxisRaw("Vertical"));

        setDirection(newDirection);
    }
}
