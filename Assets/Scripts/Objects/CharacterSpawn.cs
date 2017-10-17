using UnityEngine.SceneManagement;
using UnityEngine;

public class CharacterSpawn : MonoBehaviour {

    [SerializeField]
    private bool CameraMovement;

    private Scene PersistentScene;
    private GameObject m_Character;
    private GameObject m_Camera;

    private void Awake() {
        PersistentScene = SceneManager.GetSceneAt(0);
        m_Character = PersistentScene.GetRootGameObjects()[0];
        m_Camera = PersistentScene.GetRootGameObjects()[1];

        if (m_Character != null) {
            m_Character.transform.position = transform.position;
        }
        if (m_Camera != null) {
            m_Camera.GetComponent<CameraMovement>().enabled = CameraMovement;
        }
    }
}
