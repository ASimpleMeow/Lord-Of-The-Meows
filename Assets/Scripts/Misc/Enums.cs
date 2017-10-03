using UnityEngine;

public class EnumFlagAttribute : PropertyAttribute {
    public EnumFlagAttribute() { }
}


[System.Flags]
public enum ChoiceOptions {
    Override = 0x1,
    RemoveChoice = 0x2,
    EndInteraction = 0x4,
    RemoveChoices = 0x8
};

public enum ItemType {
    NONE = 0,

    WEAPON = 10,

    HEALTH = 50,

    COIN = 100
};

