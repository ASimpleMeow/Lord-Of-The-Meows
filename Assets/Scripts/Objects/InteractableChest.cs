using System.Collections;
using UnityEngine;

public class InteractableChest : InteractableBase {

    [SerializeField]
    private Mesh openChestMesh;

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

        //TODO Add item to character inventory

        if (openChestMesh == null) return;
        m_MeshFilter.mesh = openChestMesh;
    }
}
