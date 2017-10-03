using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class SceneController : MonoBehaviour {

    public static SceneController m_Instance;
    private bool m_GameStart;

    private void Awake() {
        if (m_GameStart) return;

        m_Instance = this;
        SceneManager.LoadSceneAsync(1, LoadSceneMode.Additive);
        m_GameStart = true;
    }

    public void LoadScene(int scene) {
        SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
    }

    public void LoadScene(string scene) {
        SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
    }

    IEnumerator Load(int scene) {
        yield return Unload(scene);
        AsyncOperation loading = SceneManager.LoadSceneAsync(scene);
    }

    IEnumerator Load(string scene) {
        yield return Unload(scene);
        AsyncOperation loading = SceneManager.LoadSceneAsync(scene);
    }

    public void UnloadScene(int scene) {
        StartCoroutine(Unload(scene));
    }

    public void UnloadScene(string scene) {
        StartCoroutine(Unload(scene));
    }

    IEnumerator Unload(int scene) {
        yield return null;
        SceneManager.UnloadSceneAsync(scene);
    }

    IEnumerator Unload(string scene) {
        yield return null;
        SceneManager.UnloadSceneAsync(scene);
    }

}
