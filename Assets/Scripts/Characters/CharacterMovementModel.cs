using System.Collections;
using UnityEngine;

[RequireComponent (typeof(Character))]
[RequireComponent(typeof(Rigidbody))]
public class CharacterMovementModel : MonoBehaviour {

    // Public variables
    public float WalkSpeed;
    public float RunSpeed;
    public float RotationSpeed;

    // Private variables
    private Vector3 m_MovementDirection;
    private Vector3 m_FacingDirection;
    private Quaternion m_TargetRotation;
    private bool m_IsRunning;
    private bool m_IsFrozen;

    // Components
    private Rigidbody m_Body;


    void Awake() {
        m_Body = GetComponent<Rigidbody>();
    }

    void Start () {
        SetDirection(new Vector3(0, 0,-1));
        IsRunning = false;
    }
	
	void FixedUpdate () {
        UpdateMovement();
	}

    void UpdateMovement() {

        if (IsFrozen) {
            m_Body.velocity = Vector3.zero;
            return;
        }

        if (m_MovementDirection != Vector3.zero) {
            m_MovementDirection.Normalize();
        }
        
        // Let physics engine handle movement
        m_Body.velocity = m_MovementDirection * (IsRunning ? RunSpeed : WalkSpeed);
    }

    public void SetDirection(Vector3 direction) {

        if (IsFrozen) return;

        m_MovementDirection = direction;

        // Handle rotation of character
        if (direction != Vector3.zero) {
            m_FacingDirection = direction;
            m_TargetRotation = Quaternion.LookRotation(m_FacingDirection);
            transform.eulerAngles = Vector3.up * Mathf.MoveTowardsAngle(
                transform.eulerAngles.y, m_TargetRotation.eulerAngles.y, RotationSpeed * Time.deltaTime);
        }

    }

    public Vector3 GetDirection() { return m_MovementDirection; }

    public Vector3 GetFacingDirection() { return m_FacingDirection; }

    public bool IsMoving() {
        if (IsFrozen) return false;
        return m_MovementDirection != Vector3.zero;
    }

    public bool IsRunning { get; set; }

    public bool IsFrozen { get; set; }

}
