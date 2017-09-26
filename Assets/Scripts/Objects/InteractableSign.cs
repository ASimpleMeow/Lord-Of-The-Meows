using System.Collections;
using UnityEngine;

public class InteractableSign : InteractableBase {

    public string Message;

    public override void OnInteract(Character character) {

        if (DialogBox.IsVisible()) {
            Time.timeScale = 1;
            character.Movement.IsFrozen= false;
            DialogBox.Hide();
        }else {
            character.Movement.IsFrozen = true;
            StartCoroutine(FreezeTimeRoutine());
            DialogBox.Show(Message);
        }
    }

    IEnumerator FreezeTimeRoutine() {
        yield return null;

        Time.timeScale = 0;
    }
}
