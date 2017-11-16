using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;
using UnityEngine.SceneManagement;

public class SplashScreenMenu : MonoBehaviour {

    [SerializeField]
    private GameObject Menu;
    private int m_SelectedIndex = 0;
    private Button[] m_MenuButtons;

    private void Awake() {
        m_MenuButtons = Menu.GetComponentsInChildren<Button>();
    }

    private void Start() {
        m_MenuButtons[m_SelectedIndex].Select();
    }

    private void Update() {
        //if (Input.GetKeyDown(KeyCode.Escape)) Application.Quit();

        if (Menu.activeInHierarchy) TakeInput();
    }

    private void TakeInput() {
        if (Input.GetKeyDown(KeyCode.UpArrow)) {
            m_SelectedIndex = m_SelectedIndex == 0 ? 0 : m_SelectedIndex - 1;
            m_MenuButtons[m_SelectedIndex].Select();
        } else if (Input.GetKeyDown(KeyCode.DownArrow)) {
            m_SelectedIndex = m_SelectedIndex == m_MenuButtons.Length - 1 ? m_MenuButtons.Length - 1 : m_SelectedIndex + 1;
            m_MenuButtons[m_SelectedIndex].Select();
        }

        if (Input.GetKeyDown(KeyCode.E)) {
            m_MenuButtons[m_SelectedIndex].onClick.Invoke();
        }
    }

    public void onNewGame() {
        File.Delete(Application.persistentDataPath + "/CharacterSaveFile.json");
        File.Delete(Application.persistentDataPath + "/CameraSaveFile.json");
        File.Delete(Application.persistentDataPath + "/KingsCastleSaveFile.json");
        File.Delete(Application.persistentDataPath + "/VillageSaveFile.json");
        SceneManager.LoadScene(1);
    }

    public void onContinue() {
        SceneManager.LoadScene(1);
    }

    public void onInstructions() {
        Debug.Log("Instructions unclear got my head stuck in a washing machine");
    }

    public void onExit() {
        Application.Quit();
    }


}
