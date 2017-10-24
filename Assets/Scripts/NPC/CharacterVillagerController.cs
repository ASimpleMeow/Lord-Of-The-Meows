using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterVillagerController : CharacterBaseControl {

    [SerializeField]
    private Transform CenterLeashLocation;
    [SerializeField]
    private float MaxDistanceFromCenter = 35f;
    [SerializeField]
    private float ChangeDirectionTimer = 7f;
    [SerializeField]
    private float PauseTimer = 7f;
    [SerializeField]
    private bool UseRandomTimer = true;

    private Vector3 m_Direction;

    private void Start() {
        m_Direction = new Vector3(Random.Range(-1, 2), 0, Random.Range(-1, 2));
        SetDirection(m_Direction);
        StartCoroutine(ChangeDirection());
    }

    private void Update() {
        SetDirection(m_Direction);
    }

    IEnumerator ChangeDirection() {
        while (true) {
            NewHeadingRouting();
            yield return new WaitForSeconds(UseRandomTimer ? Random.Range(ChangeDirectionTimer/2, ChangeDirectionTimer) : ChangeDirectionTimer);
            m_Direction = new Vector3(0, 0, 0);
            yield return new WaitForSeconds(UseRandomTimer ? Random.Range(0, PauseTimer) : PauseTimer);
        }
    }

    private void NewHeadingRouting() {
        Vector3 newDirection;
        if (transform.position.magnitude > MaxDistanceFromCenter) {
            newDirection = CenterLeashLocation.position - transform.position;
        } else {
            newDirection = new Vector3(Random.Range(-1, 2), 0, Random.Range(-1, 2));
        }
        m_Direction = newDirection;
    }
}
