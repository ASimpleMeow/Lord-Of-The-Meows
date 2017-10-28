using System.Collections;
using UnityEngine;

[RequireComponent (typeof(Character))]
[RequireComponent(typeof(Rigidbody))]
public class CharacterMovementModel : MonoBehaviour {

    // Inspector fields
    [SerializeField]
    private float WalkSpeed;
    [SerializeField]
    private float RunSpeed;
    [SerializeField]
    private float RotationSpeed;

    // Private variables
    private Vector3 m_MovementDirection;
    private Vector3 m_FacingDirection;
    private Quaternion m_TargetRotation;
    private bool m_IsRunning;
    private bool m_IsFrozen;
    private bool m_CanAttack;
    private bool m_IsAttacking;

    // Components
    private Rigidbody m_Body;


    private void Awake() {
        m_Body = GetComponent<Rigidbody>();
    }

    private void Start () {
        SetDirection(new Vector3(0, 0,-1));
        IsRunning = false;
        m_CanAttack = true;
    }
	
	private void FixedUpdate () {
        UpdateMovement();
	}

    private void UpdateMovement() {

        if (IsFrozen || IsAttacking) {
            m_Body.velocity = Vector3.zero;
            return;
        }

        if (m_MovementDirection != Vector3.zero) m_MovementDirection.Normalize();

        // Let physics engine handle movement (and gravity of y coordinate)
        Vector3 velocity = new Vector3((m_MovementDirection.x * (IsRunning ? RunSpeed : WalkSpeed)),
                                        m_Body.velocity.y,
                                        (m_MovementDirection.z * (IsRunning ? RunSpeed : WalkSpeed)));
        m_Body.velocity = velocity;
    }

    public void SetDirection(Vector3 direction) {

        if (IsFrozen || IsAttacking) return;

        m_MovementDirection = direction;

        // Handle rotation of character
        if (direction != Vector3.zero) {
            m_FacingDirection = direction;
            m_TargetRotation = Quaternion.LookRotation(m_FacingDirection);
            transform.eulerAngles = Vector3.up * Mathf.MoveTowardsAngle(transform.eulerAngles.y,
                                                                        m_TargetRotation.eulerAngles.y,
                                                                        RotationSpeed * Time.deltaTime);
        }

    }

    public void DoAttack() {
        StartCoroutine(Attack());
    }

    IEnumerator Attack() {
        CanAttack = false;
        IsAttacking = true;

        yield return null;
        IsAttacking = false;

        yield return new WaitForSeconds(0.05f);
        CanAttack = true;
    }


    public void Push(Vector3 direction, float magnitude) {
        m_Body.AddForce(direction*magnitude);
    }


    //---------GETTERS/SETTERS------------//

    public bool IsRunning { get; set; }

    public bool IsFrozen { get; set; }

    public bool IsAttacking { get { return m_IsAttacking; } set { m_IsAttacking = value; } }

    public float Velocity {
        get { return m_Body.velocity.magnitude; }
    }

    public float MaxVelocity {
        get { return RunSpeed; }
    }

    public bool CanAttack {
        get {
            if (IsFrozen || IsAttacking) return false;
            return m_CanAttack;
        }
        set { m_CanAttack = value; }
    }

}
