using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class FadeScreen : MonoBehaviour {

    [SerializeField]
    private Image FadeImage;

    private static FadeScreen m_Instance;

    private Coroutine m_FadingCoroutine;

    private void Awake() {

        m_Instance = this;

        if(FadeImage == null) {
            Debug.LogWarning("No FadeImage found!");
            enabled = false;
        }
    }

    public static void Fade(int direction, float speed) {
        m_Instance.DoFade(direction, speed);
    }

    private void DoFade(int direction, float speed) {
        if (m_FadingCoroutine != null) StopCoroutine(m_FadingCoroutine);
        m_FadingCoroutine = StartCoroutine(ScreenFade(direction, speed));
    }

    IEnumerator ScreenFade(int direction, float speed) {
        while (FadeImage.color.a > 0 || FadeImage.color.a < 1) {
            yield return null;
            Color c = FadeImage.color;
            c.a += speed / 100 * direction;
            c.a = Mathf.Clamp01(c.a);
            FadeImage.color = c;
        }
    }
}
