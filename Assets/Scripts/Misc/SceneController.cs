using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using System;

public class SceneController : MonoBehaviour {

    public static SceneController m_Instance;
    private bool m_GameStart;

    private AsyncOperation m_LoadingOperation;
    private AsyncOperation m_UnloadingOperation;

    private void Awake() {
        if (m_GameStart) return;

        m_Instance = this;
        SceneManager.LoadSceneAsync(1, LoadSceneMode.Additive);
        m_GameStart = true;
    }


    //---------CHANGE SCENE------------//
    public void ChangeScene(int thisScene, int loadScene) {
        if (thisScene == loadScene) return;
        UnloadScene(thisScene);
        LoadScene(loadScene);
    }

    public void ChangeScene(string thisScene, string loadScene) {
        if (thisScene == loadScene) return;
        UnloadScene(thisScene);
        LoadScene(loadScene);
    }


    //---------LOAD SCENE------------//
    public void LoadScene(int scene) {
        for (int i = 0; i < SceneManager.sceneCount; ++i)
            if (SceneManager.GetSceneAt(i).buildIndex == scene) return;

        StartCoroutine(Load(scene));
    }

    public void LoadScene(string scene) {
        for (int i = 0; i < SceneManager.sceneCount; ++i)
            if (SceneManager.GetSceneAt(i).name.Equals(scene)) return;

        StartCoroutine(Load(scene));
    }


    //---------UNLOAD SCENE------------//
    public void UnloadScene(int scene) {
        StartCoroutine(Unload(scene));
    }

    public void UnloadScene(string scene) {
        StartCoroutine(Unload(scene));
    }


    //---------COROUTINES------------//
    IEnumerator Load(int scene) {
        if (m_UnloadingOperation != null) yield return m_UnloadingOperation;
        else yield return null;
        m_LoadingOperation = SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
        yield return m_LoadingOperation;
    }

    IEnumerator Load(string scene) {
        if (m_UnloadingOperation != null) yield return m_UnloadingOperation;
        else yield return null;
        m_LoadingOperation = SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
        yield return m_LoadingOperation;
    }

    IEnumerator Unload(int scene) {
        yield return null;
        try { m_UnloadingOperation = SceneManager.UnloadSceneAsync(scene); }
        catch (Exception) { yield break; }
        yield return m_UnloadingOperation;
    }

    IEnumerator Unload(string scene) {
        yield return null;
        try { m_UnloadingOperation = SceneManager.UnloadSceneAsync(scene); }
        catch (Exception) { yield break; }
        yield return m_UnloadingOperation;
    }

}
