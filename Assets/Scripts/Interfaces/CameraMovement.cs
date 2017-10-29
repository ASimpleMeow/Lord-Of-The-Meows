using System.Collections;
using UnityEngine;

[System.Serializable]
[RequireComponent(typeof(Camera))]
public class CameraMovement : MonoBehaviour {

    public float OffsetX;
    public float OffsetZ;
    public float Speed;
    public Transform Target;

    private Vector3 m_NewPosition;

    private void Start() {
        m_NewPosition = new Vector3();
    }

    private void FixedUpdate() {
        m_NewPosition = new Vector3(Target.position.x + OffsetX, transform.position.y, Target.position.z + OffsetZ);
        transform.position = Vector3.Lerp(transform.position, m_NewPosition, Speed * Time.deltaTime);
    }
}
