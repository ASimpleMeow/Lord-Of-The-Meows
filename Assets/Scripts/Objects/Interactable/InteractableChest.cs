using System.Collections;
using UnityEngine;

public class InteractableChest : InteractableBase {

    // Inspector fields
    [SerializeField]
    private Mesh OpenChestMesh;
    [SerializeField]
    private ItemType Item;
    [SerializeField]
    private int Amount;
    [SerializeField]
    private InteractableSign ClosedChestMessage;
    [SerializeField]
    private InteractableSign OpenedChestMessage;

    private bool m_IsOpen;
    private ObjectData m_Data;
    private MeshFilter m_MeshFilter;

    private void Awake() {
        m_MeshFilter = GetComponent<MeshFilter>();
        if(m_MeshFilter == null) {
            m_MeshFilter = GetComponentInChildren<MeshFilter>();
        }
    }

    private void Start() {
        m_IsOpen = false;
        m_Data = DataController.Instance.FindThis(name, GetType().Name);
        if (m_Data == null) return;
        m_IsOpen = m_Data.keyVariable;
        enabled = m_Data.enabled;
        gameObject.SetActive(m_Data.enabledGameObject);

        if (m_IsOpen) {
            if (OpenChestMesh != null) m_MeshFilter.mesh = OpenChestMesh;
        }
    }

    public override void OnInteract(Character character) {

        if (m_IsOpen) {
            if (OpenChestMesh != null) m_MeshFilter.mesh = OpenChestMesh;
            if (OpenedChestMessage != null) OpenedChestMessage.OnInteract(character);
            if(m_Data != null) m_Data.keyVariable = m_IsOpen;
            return;
        }

        m_IsOpen = true;

        character.Inventory.AddItem(Item, Amount);

        if (OpenChestMesh != null) m_MeshFilter.mesh = OpenChestMesh;
        if (ClosedChestMessage != null) ClosedChestMessage.OnInteract(character);
    }
}
