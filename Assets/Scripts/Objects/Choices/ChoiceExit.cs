using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoiceExit : ChoiceBase {

    public override void OnExecute(Character character) {
        Time.timeScale = 1;
        character.Movement.IsFrozen = false;
        ChoiceBox.Hide();
        DialogBox.Hide();
        return;
    }
}
