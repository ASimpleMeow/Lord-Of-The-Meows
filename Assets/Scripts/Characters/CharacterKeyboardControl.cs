using System.Collections;
using UnityEngine;

public class CharacterKeyboardControl : CharacterBaseControl {

    private void Update () {
        UpdateDirection();
        UpdateActions();
	}

    private void UpdateActions() {

        if (Input.GetKeyDown(KeyCode.E)) {
            OnActionPressed();

        }else if (Input.GetKeyDown(KeyCode.UpArrow)) {
            OnUpPressed();

        }else if (Input.GetKeyDown(KeyCode.DownArrow)) {
            OnDownPressed();

        }
    }

    private void UpdateDirection() {
        Vector3 newDirection = new Vector3(Input.GetAxisRaw("Horizontal"), 0.0f, Input.GetAxisRaw("Vertical"));

        if (Input.GetKey(KeyCode.LeftShift)) SetRunning(true);
        else SetRunning(false);

        SetDirection(newDirection);
    }
}
