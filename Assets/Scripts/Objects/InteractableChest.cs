using System.Collections;
using UnityEngine;

public class InteractableChest : InteractableBase {

    public Mesh openChestMesh;

    private bool m_IsOpen;
    private MeshFilter m_MeshFilter;

    void Awake() {
        m_MeshFilter = GetComponent<MeshFilter>();
    }

    void Start() {
        m_IsOpen = false;
    }

    public override void OnInteract(Character character) {

        if (m_IsOpen) return;

        m_IsOpen = true;

        //Add Items to characters inventory here

        if (openChestMesh == null) return;
        m_MeshFilter.mesh = openChestMesh;
    }
}
