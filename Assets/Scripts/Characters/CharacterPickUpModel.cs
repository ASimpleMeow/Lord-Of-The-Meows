using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Character))]
[RequireComponent(typeof(Collider))]
public class CharacterPickUpModel : MonoBehaviour {

    private Character m_Character;

    private void Awake() {
        m_Character = GetComponent<Character>();
    }

    private void OnTriggerEnter(Collider other) {
        PickableBase pickable = other.gameObject.GetComponent<PickableBase>();

        if (pickable == null) return;

        pickable.OnPickedUp(m_Character);
    }

}
