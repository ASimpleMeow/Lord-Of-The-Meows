using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class SceneChanger : MonoBehaviour {

    [SerializeField]
    private int ThisSceneIndex;
    [SerializeField]
    private int ToSceneIndex;

    public void Awake() {
       GetComponent<Collider>().isTrigger = true;
    }

    void OnTriggerEnter(Collider other) {
        if(other.gameObject.tag == "Player") {
            SceneController.Instance.ChangeScene(ThisSceneIndex, ToSceneIndex);
        }
    }
}
