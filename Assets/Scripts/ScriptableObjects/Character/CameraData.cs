using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public class CameraData : ScriptableObject {

    public float OffsetX;
    public float OffsetZ;
    public float Speed;
    public Vector3 NewPosition;
    public Vector3 NewRotation;
}
