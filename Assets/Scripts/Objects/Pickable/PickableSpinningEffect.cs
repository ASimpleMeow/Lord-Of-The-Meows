using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableSpinningEffect : MonoBehaviour {

    [SerializeField]
    private float RotationAmount;

    private void Update() {
        transform.Rotate(new Vector3(0, RotationAmount, 0));
    }
}
