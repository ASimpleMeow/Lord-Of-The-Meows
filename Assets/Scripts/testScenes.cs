﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testScenes : MonoBehaviour {
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.Keypad1)) SceneController.Instance.ChangeScene(1, 2);
        if (Input.GetKeyDown(KeyCode.Keypad2)) SceneController.Instance.ChangeScene(2, 1);
    }
}