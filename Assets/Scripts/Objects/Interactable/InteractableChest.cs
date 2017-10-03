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
    private bool m_IsOpen;

    private MeshFilter m_MeshFilter;

    private void Awake() {
        m_MeshFilter = GetComponent<MeshFilter>();
    }

    private void Start() {
        m_IsOpen = false;
    }

    public override void OnInteract(Character character) {

        if (m_IsOpen) return;

        m_IsOpen = true;

        character.Inventory.AddItem(Item, Amount);

        if (OpenChestMesh == null) return;
        m_MeshFilter.mesh = OpenChestMesh;
    }
}
