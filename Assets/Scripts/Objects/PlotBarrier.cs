using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlotBarrier : MonoBehaviour {

    private ObjectData m_Data;

    private void Start() {
        m_Data = DataController.Instance.FindThis(this.name, GetType().ToString());
        if (m_Data == null) return;
        if(!m_Data.enabledGameObject) Destroy(gameObject);
    }

    private void OnDestroy() {
        if (m_Data == null) return;
        m_Data.enabledGameObject = false;
        Destroy(gameObject);
    }
}
