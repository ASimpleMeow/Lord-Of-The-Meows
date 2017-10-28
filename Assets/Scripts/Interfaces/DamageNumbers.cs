using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DamageNumbers : MonoBehaviour {

    public static DamageNumbers Instance;

    [SerializeField]
    private GameObject DamageNumberPrefab;

    private RectTransform m_RectTransform;

    void Awake() {
        Instance = this;
        m_RectTransform = GetComponent<RectTransform>();
    }

    public void ShowDamageNumber(float damage, Vector3 worldPosition) {
        GameObject newDamageNumberObject = Instantiate<GameObject>(DamageNumberPrefab);
        newDamageNumberObject.GetComponent<Text>().text = Mathf.RoundToInt(damage).ToString();

        Vector3 screenPosition = Camera.main.WorldToViewportPoint(worldPosition);

        RectTransform damageNumberTransform = newDamageNumberObject.GetComponent<RectTransform>();

        damageNumberTransform.SetParent(transform, true);
        damageNumberTransform.localScale = DamageNumberPrefab.transform.localScale;
        damageNumberTransform.localRotation = DamageNumberPrefab.transform.localRotation;
        damageNumberTransform.anchoredPosition = new Vector2(screenPosition.x * m_RectTransform.rect.width,
                                                          screenPosition.y * m_RectTransform.rect.height);
        damageNumberTransform.localPosition = new Vector3(damageNumberTransform.localPosition.x,
                                                            damageNumberTransform.localPosition.y, 0);

        Destroy(newDamageNumberObject, 0.75f);
    }
}