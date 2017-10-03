using UnityEngine;

[RequireComponent (typeof(InteractableSign))]
public class ChoiceBase : MonoBehaviour {

    public string ChoiceName;

    // Inspector field
    [SerializeField]
    [EnumFlagAttribute]
    protected ChoiceOptions ChoiceFlags;

    protected InteractableSignChoice m_SignChoice;

    private void Awake() {
        m_SignChoice = GetComponent<InteractableSignChoice>();
    }

    virtual public void OnExecute(Character character) {
        Debug.LogWarning("OnExecute is not implemented!", gameObject);
    }
}
