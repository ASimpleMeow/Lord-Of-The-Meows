using UnityEngine;

[RequireComponent (typeof(InteractableSign))]
public class ChoiceBase : MonoBehaviour {

    public string ChoiceName;

    virtual public void OnExecute(Character character) {
        Debug.LogWarning("OnExecute is not implemented!", gameObject);
    }
}
