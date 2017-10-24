using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour {
    
    [SerializeField]
    private Character Character;
    [SerializeField]
    private GameObject Menu;

    private int m_SelectedIndex;
    private Button[] m_MenuButtons;

    private void Awake() {
        if(Character == null) {
            Debug.LogError("No Character attached! - Pause Menu disabled");
            enabled = false;
        }

        if(Menu == null) {
            Debug.LogError("No Menu attached! - Pause Menu disabled");
            enabled = false;
        }
        m_MenuButtons = Menu.GetComponentsInChildren<Button>();
    }

    private void Start() {
        Menu.SetActive(false);
    }

    private void Update () {
        if (Input.GetKeyDown(KeyCode.Escape)) OnMenuButton();

        if (Menu.activeInHierarchy) TakeInput();
	}

    private void TakeInput() {
        if (Input.GetKeyDown(KeyCode.UpArrow)) {
            m_SelectedIndex = m_SelectedIndex == 0 ? 0 : m_SelectedIndex - 1;
            m_MenuButtons[m_SelectedIndex].Select();
        }else if (Input.GetKeyDown(KeyCode.DownArrow)) {
            m_SelectedIndex = m_SelectedIndex == m_MenuButtons.Length - 1 ? m_MenuButtons.Length - 1 : m_SelectedIndex + 1;
            m_MenuButtons[m_SelectedIndex].Select();
        }

        if (Input.GetKeyDown(KeyCode.E)) {
            m_MenuButtons[m_SelectedIndex].onClick.Invoke();
        }
    }

    private IEnumerator PauseGame(bool pause) {
        yield return null;
        Time.timeScale = pause ? 0 : 1;
    }

    public void OnMenuButton() {
        Menu.SetActive(!Menu.activeInHierarchy);
        Character.GetComponent<CharacterKeyboardControl>().enabled = !Menu.activeInHierarchy;
        StartCoroutine(PauseGame(Menu.activeInHierarchy));

        if (!Menu.activeInHierarchy) return;
        m_SelectedIndex = 0;
        m_MenuButtons[m_SelectedIndex].Select();
    }

    public void OnExit() {
        Application.Quit();
    }
}
