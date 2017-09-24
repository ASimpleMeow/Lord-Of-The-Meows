using System.Collections;
using UnityEngine;

public class CharacterMovementModel : MonoBehaviour {

    public float speed;

    private Vector3 m_movementDirection;
    private Vector3 m_facingDirection;
    private Rigidbody m_body;

    void Awake() {
        m_body = GetComponent<Rigidbody>();
    }

    void Start () {
        setDirection(new Vector3(0, 0,-1));
    }
	
	void Update () {
        updateMovement();
	}

    void updateMovement() {
        if (m_movementDirection != Vector3.zero) {
            m_movementDirection.Normalize();
        }
        
        m_body.velocity = m_movementDirection * speed;
    }

    public void setDirection(Vector3 direction) {
        m_movementDirection = new Vector3(direction.x, direction.y, direction.z);

        if (direction != Vector3.zero) {
            m_facingDirection = m_movementDirection;
        }
    }

    public Vector3 getDirection() {
        return m_movementDirection;
    }

    public Vector3 getFacingDirection() {
        return m_facingDirection;
    }

    public bool isMoving() {
        return m_movementDirection != Vector3.zero;
    }
}
