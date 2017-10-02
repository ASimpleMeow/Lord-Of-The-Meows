using UnityEngine;

public class EnumFlagAttribute : PropertyAttribute {
    public EnumFlagAttribute() { }
}


[System.Flags]
public enum ChoiceOptions {
    /*None = 0x1,
    Override = 0x2,
    RemoveChoice = 0x4,
    EndInteraction = 0x8,
    RemoveChoices = 0x16*/
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

