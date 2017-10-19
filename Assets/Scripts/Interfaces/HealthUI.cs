using UnityEngine.UI;
using UnityEngine;

public class HealthUI : MonoBehaviour {

    private static HealthUI m_Instance;

    [SerializeField]
    private Sprite HealthSprite;
    [SerializeField]
    private GameObject Heart;

    private void Awake() {
        m_Instance = this;

        Heart.GetComponent<Image>().sprite = HealthSprite; 
    }

    public static void UpdateHealth(int health, int maxHealth = 3) {
        m_Instance.DoUpdateHealth(health, maxHealth);
    }

    private void DoUpdateHealth(int health, int maxHealth) {

        GetComponent<HorizontalLayoutGroup>().childControlWidth = health < maxHealth ? false : true;
        float spacing = GetComponent<HorizontalLayoutGroup>().spacing;
        Heart.GetComponent<RectTransform>().sizeDelta = new Vector2((100/maxHealth) - spacing, 75);
        Heart.GetComponent<RectTransform>().sizeDelta = new Vector2((100 / maxHealth) - spacing, 75);

        foreach (Transform child in transform) {
            Destroy(child.gameObject);
        }

        for (int i = 0; i < health; ++i) {
            Instantiate<GameObject>(Heart, transform);
        }
    }
}
