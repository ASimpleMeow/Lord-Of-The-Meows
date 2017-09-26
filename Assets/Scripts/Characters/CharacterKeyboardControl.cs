using System.Collections;
using UnityEngine;

public class CharacterKeyboardControl : CharacterBaseControl {

	void Update () {
        UpdateDirection();
        UpdateAction();
	}

    void UpdateAction() {

        if (Input.GetKeyDown(KeyCode.E)) {
            OnActionPressed();
        }
    }

    void UpdateDirection() {
        Vector3 newDirection = new Vector3(Input.GetAxisRaw("Horizontal"), 0.0f, Input.GetAxisRaw("Vertical"));

        if (Input.GetKey(KeyCode.LeftShift)) SetRunning(true);
        else SetRunning(false);

        SetDirection(newDirection);
    }
}
