local L0_0, L1_1
function L0_0(A0_2, A1_3, A2_4, A3_5, A4_6)
  passThroughParams = {Pos = A0_2, Team = A4_6}
  perBlockParams = {
    TeamVar = "Team",
    Radius = A1_3,
    PosVar = "Pos",
    Duration = A2_4,
    RevealSteath = A3_5
  }
  BBAddPosPerceptionBubble(passThroughParams, perBlockParams)
  return passThroughParams.BubbleIDVar
end
AddPosPerceptionBubble = L0_0
function L0_0(A0_7, A1_8, A2_9)
  passThroughParams = {
    [GetHashedGameObjName("Target")] = A1_8,
    [GetHashedGameObjName("Attacker")] = A0_7
  }
  perBlockParams = {
    AttackerVar = "Attacker",
    TargetVar = "Target",
    Damage = A2_9,
    DamageType = TRUE_DAMAGE,
    SourceDamageType = DAMAGESOURCE_RAW,
    PercentOfAttack = 1,
    SpellDamageRatio = 0
  }
  BBApplyDamage(passThroughParams, perBlockParams)
end
ApplyDamage = L0_0
function L0_0(A0_10, A1_11, A2_12)
  passThroughParams = {
    [GetHashedGameObjName("Target")] = A0_10
  }
  perBlockParams = {
    UnitVar = "Target",
    CreatedItemID = A1_11,
    CheckRange = A2_12
  }
  BBCreateItem(passThroughParams, perBlockParams)
end
CreateItem = L0_0
function L0_0(A0_13, A1_14)
  passThroughParams = {
    [GetHashedGameObjName("Target")] = A0_13,
    ["Position"] = A1_14
  }
  perBlockParams = {TargetVar = "Target", LocationVar = "Position"}
  BBFaceDirection(passThroughParams, perBlockParams)
end
FaceDirection = L0_0
function L0_0(A0_15, A1_16)
  passThroughParams = {}
  perBlockParams = {
    Skin = A0_15,
    Team = A1_16,
    DestVar = "DestObj"
  }
  BBGetChampionBySkinName(passThroughParams, perBlockParams)
  return passThroughParams.DestObj
end
GetChampionBySkinName = L0_0
function L0_0(A0_17, A1_18)
  passThroughParams = {
    [GetHashedGameObjName("Owner")] = A0_17
  }
  perBlockParams = {TargetVar = "Owner", Delta = A1_18}
  BBIncGold(passThroughParams, perBlockParams)
end
IncGold = L0_0
function L0_0(A0_19, A1_20, A2_21, A3_22)
  passThroughParams = {
    [GetHashedGameObjName("Owner")] = A0_19,
    ["Position"] = A1_20
  }
  perBlockParams = {
    UnitVar = "Owner",
    TargetVar = "Position",
    Speed = A2_21,
    Gravity = A3_22,
    MoveBackBy = 0
  }
  BBMove(passThroughParams, perBlockParams)
end
Move = L0_0
function L0_0(A0_23)
  passThroughParams = {IDVar = A0_23}
  perBlockParams = {BubbleIDVar = "IDVar"}
  BBRemovePerceptionBubble(A0_23)
end
RemovePerceptionBubble = L0_0
function L0_0(A0_24, A1_25)
  passThroughParams = {
    [GetHashedGameObjName("Owner")] = A0_24,
    ["Position"] = A1_25
  }
  perBlockParams = {Owner = "Owner", PositionVar = "Position"}
  BBSetCameraPosition(passThroughParams, perBlockParams)
end
SetCameraPosition = L0_0
function L0_0(A0_26, A1_27, A2_28, A3_29, A4_30, A5_31, A6_32, A7_33, A8_34, A9_35)
  passThroughParams = {
    [GetHashedGameObjName("Attacker")] = A0_26,
    [GetHashedGameObjName("Target")] = A1_27,
    ["NextBuffVars"] = A8_34
  }
  perBlockParams = {
    AttackerVar = "Attacker",
    TargetVar = "Target",
    BuffName = A2_28,
    BuffAddType = A3_29,
    BuffType = A4_30,
    MaxStack = A5_31,
    NumberStacks = A6_32,
    Duration = A7_33,
    BuffVarsTable = "NextBuffVars",
    TickRate = A9_35
  }
  BBSpellBuffAdd(passThroughParams, perBlockParams)
end
TutorialSpellBuffAdd = L0_0
function L0_0(A0_36, A1_37, A2_38)
  passThroughParams = {
    [GetHashedGameObjName("Attacker")] = A0_36,
    [GetHashedGameObjName("Target")] = A1_37
  }
  perBlockParams = {
    TargetBar = "Target",
    AttackerVar = "Attacker",
    BuffName = A2_38
  }
  BBSpellBuffRemove(passThroughParams, perBlockParams)
end
TutorialSpellBuffRemove = L0_0
function L0_0(A0_39, A1_40, A2_41, A3_42, A4_43, A5_44)
  passThroughParams = {
    [GetHashedGameObjName("Owner")] = A1_40,
    ["Position"] = A2_41,
    [GetHashedGameObjName("Target")] = A4_43,
    ["TargetPos"] = A5_44
  }
  perBlockParams = {
    EffectName = A0_39,
    BindObjectVar = "Owner",
    PosVar = "Position",
    Flags = A3_42,
    TargetObjectVar = "Target",
    TargetPosVar = "TargetPos"
  }
  outEffectID = BBSpellEffectCreate(passThroughParams, perBlockParams)
  return outEffectID
end
SpellEffectCreate = L0_0
function L0_0(A0_45)
  passThroughParams = {
    [GetHashedGameObjName("BindObject")] = A0_45.BindObject,
    [GetHashedGameObjName("TargetObject")] = A0_45.TargetObject,
    [GetHashedGameObjName("SpecificUnitOnly")] = A0_45.SpecificUnitOnly,
    [GetHashedGameObjName("SpecificUnitToExclude")] = A0_45.SpecificUnitToExclude,
    [GetHashedGameObjName("KeywordObject")] = A0_45.KeywordObject,
    ["Pos"] = A0_45.Pos,
    ["TargetPos"] = A0_45.TargetPos,
    ["OrientTowards"] = A0_45.OrientTowards
  }
  perBlockParams = {
    BindObjectVar = "BindObject",
    TargetObjectVar = "TargetObject",
    SpecificUnitOnlyVar = "SpecificUnitOnly",
    SpecificUnitToExcludeVar = "SpecificUnitToExclude",
    KeywordObjectVar = "KeywordObject",
    PosVar = "Pos",
    TargetPosVar = "TargetPos",
    OrientTowardsVar = "OrientTowards"
  }
  for _FORV_4_, _FORV_5_ in pairs(A0_45) do
    perBlockParams[_FORV_4_] = _FORV_5_
  end
  outEffectID = BBSpellEffectCreate(passThroughParams, perBlockParams)
  return outEffectID
end
SpellEffectCreateFromTable = L0_0
function L0_0(A0_46, A1_47, A2_48, A3_49, A4_50, A5_51, A6_52, A7_53, A8_54, A9_55, A10_56, A11_57)
  passThroughParams = {
    ["Pos"] = A3_49,
    [GetHashedGameObjName("GoldRedirectObj")] = A11_57
  }
  perBlockParams = {
    Name = A0_46,
    Skin = A1_47,
    AiScript = A2_48,
    PosVar = "Pos",
    Team = A4_50,
    Stunned = A5_51,
    Rooted = A6_52,
    Silenced = A7_53,
    Invulnerable = A8_54,
    MagicImmune = A9_55,
    IgnoreCollision = A10_56,
    DestVar = "DestObj",
    GoldRedirectTargetVar = "GoldRedirectObj"
  }
  BBSpawnMinion(passThroughParams, perBlockParams)
  return passThroughParams.DestObj
end
SpawnMinion = L0_0
function L0_0(A0_58, A1_59)
  passThroughParams = {
    ["Pos"] = A1_59,
    [GetHashedGameObjName("Owner")] = A0_58
  }
  perBlockParams = {OwnerVar = "Owner", PositionVar = "Pos"}
  BBTeleportToPositionHelper(passThroughParams, perBlockParams)
end
TeleportToPosition = L0_0
function L0_0(A0_60, A1_61)
  passThroughParams = {
    [GetHashedGameObjName("Unit1")] = A0_60,
    [GetHashedGameObjName("Unit2")] = A1_61
  }
  perBlockParams = {Unit1Var = "Unit1", Unit2Var = "Unit2"}
  BBLinkVisibility(passThroughParams, perBlockParams)
end
LinkVisibility = L0_0
function L0_0(A0_62, A1_63, A2_64, A3_65, A4_66, A5_67)
  passThroughParams = {Center = A0_62}
  perBlockParams = {
    UnitVar = "Nothing",
    CenterVar = "Center",
    Radius = A1_63,
    ColorR = A2_64,
    ColorG = A3_65,
    ColorB = A4_66,
    ColorA = A5_67,
    DebugCircleIDVar = "DebugCircleID"
  }
  BBAddDebugCircle(passThroughParams, perBlockParams)
  return passThroughParams.DebugCircleID
end
AddDebugCircle = L0_0
function L0_0(A0_68)
  passThroughParams = {DebugObjectID = A0_68}
  perBlockParams = {}
  BBRemoveDebugObject(passThroughParams, perBlockParams)
end
RemoveDebugObject = L0_0
function L0_0(A0_69, A1_70)
  passThroughParams = {DebugCircleID = A0_69}
  perBlockParams = {Radius = A1_70}
  BBModifyDebugCircleRadius(passThroughParams, perBlockParams)
end
ModifyDebugCircleRadius = L0_0
function L0_0(A0_71, A1_72, A2_73, A3_74, A4_75)
  passThroughParams = {DebugObjectID = A0_71}
  perBlockParams = {
    ColorR = A1_72,
    ColorG = A2_73,
    ColorB = A3_74,
    ColorA = A4_75
  }
  BBModifyDebugObjectColor(passThroughParams, perBlockParams)
end
ModifyDebugObjectColor = L0_0
