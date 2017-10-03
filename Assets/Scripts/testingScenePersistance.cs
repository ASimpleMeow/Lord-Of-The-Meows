using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testingScenePersistance : MonoBehaviour {
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Q)) {
            SceneController.m_Instance.UnloadScene(1);
            SceneController.m_Instance.LoadScene(2);
        }
        if (Input.GetKeyDown(KeyCode.R)) {
            SceneController.m_Instance.UnloadScene(2);
            SceneController.m_Instance.LoadScene(1);
        }
    }
}
