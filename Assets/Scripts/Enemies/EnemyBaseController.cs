using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBaseController : CharacterBaseControl {

    protected GameObject m_CharacterInRange;

    public virtual void OnHitCharacter(Character character) {
        Debug.Log("OnHitCharacter Not Implemented");
    }

    public GameObject CharacterInRange {
        get { return m_CharacterInRange; }
        set { m_CharacterInRange = value; }
    }
}
