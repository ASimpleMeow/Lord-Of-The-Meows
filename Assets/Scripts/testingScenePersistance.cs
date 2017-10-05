using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testingScenePersistance : MonoBehaviour {
	
	void Update () {

        //TESTING SCENE MANAGER

        //CHANGING SCENES
        if (Input.GetKeyDown(KeyCode.Q)) {
            SceneController.m_Instance.ChangeScene(1, 2);
        }
        if (Input.GetKeyDown(KeyCode.R)) {
            SceneController.m_Instance.ChangeScene(2, 1);
        }

        //LOADING SCENES
        if (Input.GetKeyDown(KeyCode.T)) {
            SceneController.m_Instance.LoadScene(2);
        }
        if (Input.GetKeyDown(KeyCode.Y)) {
            SceneController.m_Instance.LoadScene(1);
        }

        //UNLOADING SCENES
        if (Input.GetKeyDown(KeyCode.U)) {
            SceneController.m_Instance.UnloadScene(2);
        }
        if (Input.GetKeyDown(KeyCode.I)) {
            SceneController.m_Instance.UnloadScene(1);
        }
    }
}
