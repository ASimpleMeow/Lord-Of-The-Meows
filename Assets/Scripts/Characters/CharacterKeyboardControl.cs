using System.Collections;
using UnityEngine;

public class CharacterKeyboardControl : CharacterBaseControl {

    private void Update () {
        UpdateDirection();
        UpdateActions();
	}

    private void UpdateActions() {

        if (Input.GetKeyDown(KeyCode.E)) OnActionPressed();
        else if (Input.GetKeyDown(KeyCode.UpArrow)) OnUpChoice();
        else if (Input.GetKeyDown(KeyCode.DownArrow)) OnDownChoice();

        if (Input.GetKeyDown(KeyCode.Space)) OnUseItem();
        else if (Input.GetKeyDown(KeyCode.LeftArrow)) OnPreviousItem();
        else if (Input.GetKeyDown(KeyCode.RightArrow)) OnNextItem();

    }

    private void UpdateDirection() {
        Vector3 newDirection = new Vector3(0, 0, 0);
        Vector3 newRotation = new Vector3(0, 0, 0);
        if (Input.GetAxisRaw("Vertical") > 0) newDirection = -transform.forward;
        else if (Input.GetAxisRaw("Vertical") < 0) newDirection = transform.forward;

        if(Input.GetAxisRaw("Horizontal") != 0) {
            newRotation = new Vector3(0, -Input.GetAxisRaw("Horizontal"), 0);
            newRotation.Normalize();
        }

        if (Input.GetKey(KeyCode.LeftShift)) SetRunning(true);
        else SetRunning(false);

        SetDirection(newDirection, newRotation);
    }
}
