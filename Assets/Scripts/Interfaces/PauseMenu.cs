using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour {
    
    [SerializeField]
    private Character Character;
    [SerializeField]
    private GameObject Menu;
    [SerializeField]
    private CharacterData CharacterData;
    [SerializeField]
    private CameraData CameraData;
    [SerializeField]
    private List<LevelData> LevelDatas;

    private int m_SelectedIndex;
    private Button[] m_MenuButtons;
    private bool m_TimePaused;

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
        if (Menu.activeInHierarchy) {
            m_TimePaused = Time.timeScale == 0;
            StartCoroutine(PauseGame(true));
        } else {
            StartCoroutine(PauseGame(m_TimePaused));
        }

        if (!Menu.activeInHierarchy) return;
        m_SelectedIndex = 0;
        m_MenuButtons[m_SelectedIndex].Select();
    }

    public void OnLoad() {

        string path = Application.dataPath + "/Resources/Data/Character/SaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, CharacterData);
        } else {
            Debug.LogWarning(path);
        }

        path = Application.dataPath + "/Resources/Data/Camera/SaveFile.json";
        if (File.Exists(path)) {
            string dataAsJson = File.ReadAllText(path);
            JsonUtility.FromJsonOverwrite(dataAsJson, CameraData);
        } else {
            Debug.LogWarning(path);
        }

        foreach (LevelData data in LevelDatas) {
            path = Application.dataPath + "/Resources/Data/" + data.LevelName + "/SaveFile.json";
            if (File.Exists(path)) {
                string dataAsJson = File.ReadAllText(path);
                JsonUtility.FromJsonOverwrite(dataAsJson, data);
            } else {
                Debug.LogWarning(path);
            }
        }

        OnMenuButton();
        SceneController.Instance.ChangeScene(SceneController.Instance.CurrentScene, CharacterData.Level);

    }

    public void OnExit() {
        Debug.Log("GAME SAVED");

        CharacterData.Level = SceneController.Instance.CurrentScene;
        string path = Application.dataPath + "/Resources/Data/Character/SaveFile.json";
        string saveData = JsonUtility.ToJson(CharacterData);
        File.WriteAllText(path, saveData);

        path = Application.dataPath + "/Resources/Data/Camera/SaveFile.json";
        saveData = JsonUtility.ToJson(CameraData);
        File.WriteAllText(path, saveData);

        foreach (LevelData data in LevelDatas) {
            path = Application.dataPath + "/Resources/Data/" + data.LevelName + "/SaveFile.json";
            saveData = JsonUtility.ToJson(data);
            File.WriteAllText(path, saveData);
        }
        Application.Quit();
    }
}
