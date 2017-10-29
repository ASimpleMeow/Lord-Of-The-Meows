using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using System;

public class SceneController : MonoBehaviour {

    [SerializeField]
    private int StartSceneIndex;
    [SerializeField]
    private float ScreenFadeSpeed = 30;
    [SerializeField]
    private float ScreenTransistionTime = 1;

    public static SceneController Instance;

    public int CurrentScene;

    private bool m_GameStart;
    private int m_LastScene;

    private AsyncOperation m_LoadingOperation;
    private AsyncOperation m_UnloadingOperation;

    private Coroutine m_Load;
    private Coroutine m_Unload;

    private void Awake() {
        if (m_GameStart) return;
        Instance = this;
        m_GameStart = true;
        CurrentScene = 1;
        Instance.LoadScene(CurrentScene);
    }

    public int LastScene {
        get { return m_LastScene; }
    }


    //---------CHANGE SCENE------------//
    public void ChangeScene(int thisScene, int loadScene) {
        if (thisScene == loadScene) return;
        m_LastScene = thisScene;
        SaverLoader.SaveLevels();
        UnloadScene(thisScene);
        LoadScene(loadScene);
    }

    //---------LOAD SCENE------------//
    public void LoadScene(int scene) {
        for (int i = 0; i < SceneManager.sceneCount; ++i)
            if (SceneManager.GetSceneAt(i).buildIndex == scene) return;

        if (m_Load != null) StopCoroutine(m_Load);
        m_Load = StartCoroutine(Load(scene));
    }


    //---------UNLOAD SCENE------------//
    public void UnloadScene(int scene) {
        if (m_Unload != null) StopCoroutine(m_Unload);
        m_Unload = StartCoroutine(Unload(scene));
    }


    //---------COROUTINES------------//
    IEnumerator Load(int scene) {
        yield return m_Unload;

        m_LoadingOperation = SceneManager.LoadSceneAsync(scene, LoadSceneMode.Additive);
        yield return m_LoadingOperation;
        if (m_LoadingOperation.isDone) FadeScreen.Fade(-1, ScreenFadeSpeed);
        CurrentScene = scene;
    }

    IEnumerator Unload(int scene) {
        FadeScreen.Fade(1, ScreenFadeSpeed);
        yield return new WaitForSeconds(ScreenTransistionTime);

        try { m_UnloadingOperation = SceneManager.UnloadSceneAsync(scene); }
        catch (Exception) {
            FadeScreen.Fade(-1, 100);
            yield break;
        }
        yield return m_UnloadingOperation;
    }

}
