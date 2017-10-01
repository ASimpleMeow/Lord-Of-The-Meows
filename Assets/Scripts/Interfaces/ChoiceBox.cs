using UnityEngine.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChoiceBox : MonoBehaviour {

    [SerializeField]
    private Button ButtonObject;

    private static ChoiceBox Instance;

    private List<Button> m_ChoiceButtons;
    private int m_SelectedIndex;

    private void Start() {

        Instance = this;

        m_ChoiceButtons = new List<Button>();
        m_SelectedIndex = 0;
    }

    //---------STATIC FUNCTIONS------------//
    public static void Show(string[] choiceNames) {
        Instance.DoShow(choiceNames);
    }

    public static void Hide() {
        Instance.DoHide();
    }

    public static void HightlightChoice(bool selectedUp) {
        Instance.DoHightlight(selectedUp);
    }

    public static bool IsVisible() {
        return Instance.m_ChoiceButtons.Count > 0;
    }

    public static int GetSelectedChoice() {
        return Instance.m_SelectedIndex;
    }

    //--------------------------//
    private void DoHide() {

        foreach(Transform child in transform) {
            Destroy(child.gameObject);
        }

        m_ChoiceButtons.Clear();
        m_SelectedIndex = 0;
    }

    private void DoShow(string[] choiceNames) {
        DoHide();
        foreach (string name in choiceNames) {
            Button b = Instantiate<Button>(ButtonObject, transform);
            b.GetComponentInChildren<Text>().text = name;
            m_ChoiceButtons.Add(b);
        }
        m_ChoiceButtons[m_SelectedIndex].Select();
    }

    private void DoHightlight(bool selectedUp) {

        if (m_ChoiceButtons.Count == 0) return;

        if (selectedUp && Instance.m_SelectedIndex > 0) Instance.m_SelectedIndex--;
        else if (!selectedUp && Instance.m_SelectedIndex < Instance.m_ChoiceButtons.Count - 1) Instance.m_SelectedIndex++;

        Instance.m_ChoiceButtons[Instance.m_SelectedIndex].Select();
    }
}