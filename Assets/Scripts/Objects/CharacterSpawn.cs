using UnityEngine.SceneManagement;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSpawn : MonoBehaviour {

    [SerializeField]
    private List<Object> ToRemoveOnLoad;
    [SerializeField]
    private int FromSceneIndex;
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

    private void Start() {
        if (FromSceneIndex != SceneController.Instance.LastScene) return;
        PersistentScene = SceneManager.GetSceneAt(0);
        foreach(GameObject gameObject in PersistentScene.GetRootGameObjects()) {
            if (gameObject.tag == "Player") m_Character = gameObject;
            else if (gameObject.tag == "MainCamera") m_Camera = gameObject;
        }
        //m_Character = PersistentScene.GetRootGameObjects()[0];
        //m_Camera = PersistentScene.GetRootGameObjects()[1];

        if (m_Character != null) {
            m_Character.transform.position = transform.position;
        }
        if (m_Camera != null) {
            CameraMovement cameraMovement = m_Camera.GetComponent<CameraMovement>();
            if (CameraPosition != new Vector3(0, 0, 0)) {
                m_Camera.transform.position = CameraPosition;
                cameraMovement.Data.NewPosition = CameraPosition;
            }
            if (CameraOffsetX != 0) {
                cameraMovement.Data.OffsetX = CameraOffsetX;
                cameraMovement.OffsetX = CameraOffsetX;
            }if (CameraOffsetZ != 0) {
                cameraMovement.Data.OffsetZ = CameraOffsetZ;
                cameraMovement.OffsetZ = CameraOffsetZ;
            }if (CameraRotation != new Vector3(0, 0, 0)) {
                cameraMovement.Data.NewRotation = CameraRotation;
                m_Camera.transform.eulerAngles = CameraRotation;
            }
           // SaverLoader.SaveCamera();
        }

        if (ToRemoveOnLoad == null) return;
        foreach (Object o in ToRemoveOnLoad) {
            Destroy(o);
        }
    }
}
