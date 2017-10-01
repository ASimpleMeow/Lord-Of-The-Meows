using System.Collections;
using UnityEngine;

[RequireComponent(typeof(Camera))]
public class CameraMovement : MonoBehaviour {

    [SerializeField]
    private Transform Target;
    [SerializeField]
    private float OffsetX;
    [SerializeField]
    private float OffsetZ;
    [SerializeField]
    private float Speed;

    private Vector3 m_NewPosition;

    private void Start() {
        m_NewPosition = new Vector3();
    }

    private void Update() {
        m_NewPosition = new Vector3(Target.position.x + OffsetX, transform.position.y, Target.position.z + OffsetZ);
        transform.position = Vector3.Lerp(transform.position, m_NewPosition, Speed * Time.deltaTime);
    }
}
