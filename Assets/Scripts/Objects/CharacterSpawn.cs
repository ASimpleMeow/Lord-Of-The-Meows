using UnityEngine.SceneManagement;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSpawn : MonoBehaviour {

    [SerializeField]
    private List<Object> ToRemoveOnLoad;
    [SerializeField]
    private int FromSceneIndex;
    [SerializeField]
    private bool CameraMovement;
    [SerializeField]
    private Vector3 CameraPosition;
    [SerializeField]
    private float CameraOffsetX;
    [SerializeField]
    private float CameraOffsetZ;
    [SerializeField]
    private Vector3 CameraRotation;

    private Scene PersistentScene;
    private GameObject m_Character;
    private GameObject m_Camera;

    private void Awake() {
        if (FromSceneIndex != SceneController.Instance.LastScene) return;
        PersistentScene = SceneManager.GetSceneAt(0);
        m_Character = PersistentScene.GetRootGameObjects()[0];
        m_Camera = PersistentScene.GetRootGameObjects()[1];

        if (m_Character != null) {
            m_Character.transform.position = transform.position;
        }
        if (m_Camera != null) {
            m_Camera.GetComponent<CameraMovement>().enabled = CameraMovement;
            if(CameraPosition != new Vector3(0,0,0)) m_Camera.transform.position = CameraPosition;
            if (CameraOffsetX != 0) m_Camera.GetComponent<CameraMovement>().OffsetX = CameraOffsetX;
            if (CameraOffsetZ != 0) m_Camera.GetComponent<CameraMovement>().OffsetZ = CameraOffsetZ;
            if (CameraRotation != new Vector3(0, 0, 0)) m_Camera.transform.eulerAngles = CameraRotation;
        }

        if (ToRemoveOnLoad == null) return;
        foreach (Object o in ToRemoveOnLoad) {
            Destroy(o);
        }
    }
}
