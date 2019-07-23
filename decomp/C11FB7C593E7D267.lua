RUN_IN_FEAR = 2
HOSTILE = 1
INACTIVE = 0
LEASH_COUNTER_THRESHOLD = 6
DEFAULT_FRUSTRATION_SEARCH_TIME = 0.05
DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME = 0.6
AGGRESSION_FIRST_SWEEP_RANGE = 400
LEASH_PROTECTION_BARRIER = 100
INNER_RANGE_BEFORE_CAMP_RELEASES = 700
OUTER_RANGE_BOUND = 250
ATTACKER_RANGE_BEFORE_RELEASH = 1150
CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE = 25
FEAR_WANDER_DISTANCE = 500
DoLuaShared("AIComponentSystem")
DoLuaShared("ObjectTags")
AddComponent("OutOfCombatRegen")
AddComponent("DefaultCharmBehavior")
AddComponent("DefaultFearBehavior")
AddComponent("DefaultFleeBehavior")
AddComponent("DefaultTauntBehavior")
MONSTER_ANY_INCLUDED_TAG = {
  UnitTagIndicies.Minion,
  UnitTagIndicies.Monster,
  UnitTagIndicies.Champion
}
MONSTER_EPIC_EXCLUDED_TAG = {
  UnitTagIndicies.Structure,
  UnitTagIndicies.Minion_Lane,
  UnitTagIndicies.Special_EpicMonsterIgnores
}
MONSTER_NONEPIC_EXCLUDED_TAG = {
  UnitTagIndicies.Structure,
  UnitTagIndicies.Minion_Lane,
  UnitTagIndicies.Special_MonsterIgnores
}
function OnInit(A0_0)
  Event("ComponentInit")
  SetState(AI_ATTACK)
  SetCharVar("WillBeFrustrated", 0)
  SetCharVar("StartBoostRegen", 0)
  SetCharVar("inStasis", 0)
  SetCharVar("MaxFrustration", LEASH_COUNTER_THRESHOLD)
  OutOfCombatRegen:Start()
  SetMyLeashedPos()
  SetMyLeashedOrientation()
  InitTimer("TimerFrustrationSearch", DEFAULT_FRUSTRATION_SEARCH_TIME, true)
  InitTimer("TimerAttack", 0.25, true)
  InitTimer("TimerReturningHome", 0.05, true)
  StopTimer("TimerFrustrationSearch")
  StopTimer("TimerReturningHome")
end
function OnOrder(A0_1, A1_2)
  if GetState() == AI_HALTED then
    return
  end
  if A0_1 == ORDER_ATTACKTO then
    AttackTarget(A1_2)
    return true
  end
  Error("Unsupported Order")
  return false
end
function LeashedCallForHelp(A0_3, A1_4)
  local L2_5, L3_6, L4_7, L5_8, L6_9, L7_10
  L2_5 = GetState
  L2_5 = L2_5()
  L3_6 = GetCharVar
  L4_7 = "MaxFrustration"
  L3_6 = L3_6(L4_7)
  L4_7 = AI_HALTED
  if L2_5 == L4_7 then
    return
  end
  L4_7 = GetTarget
  L4_7 = L4_7()
  L5_8 = RespondToAggression
  L6_9 = A1_4
  L5_8(L6_9)
  L5_8 = GetState
  L5_8 = L5_8()
  L6_9 = AI_RETREAT
  if L5_8 == L6_9 then
    L5_8 = GetLeashCounter
    L5_8 = L5_8()
    if L3_6 > L5_8 then
      L5_8 = GetMaxHP
      L5_8 = L5_8()
      L6_9 = GetHP
      L6_9 = L6_9()
      L7_10 = GetCampLeashPos
      L7_10 = L7_10()
      if WalkDistanceBetweenObjectCenterAndPoint(A1_4, L7_10) <= GetCampLeashRadius() then
        AttackTarget(A1_4)
      elseif GetWalkDistToLeashedPos() <= INNER_RANGE_BEFORE_CAMP_RELEASES and WalkDistanceBetweenObjectCenterAndPoint(A1_4, L7_10) <= ATTACKER_RANGE_BEFORE_RELEASH then
        AttackTarget(A1_4)
      end
    end
  end
end
function OnTargetLost(A0_11, A1_12)
  local L2_13, L3_14
  L2_13 = TurnOffAutoAttack
  L3_14 = STOPREASON_MOVING
  L2_13(L3_14)
  L2_13 = GetState
  L2_13 = L2_13()
  L3_14 = AI_HALTED
  if L2_13 ~= L3_14 then
    L3_14 = AI_RETREAT
  elseif L2_13 == L3_14 then
    L3_14 = true
    return L3_14
  end
  L3_14 = GetCharVar
  L3_14 = L3_14("inStasis")
  if L3_14 > 1 then
    L3_14 = false
    return L3_14
  end
  L3_14 = GetOwner
  L3_14 = L3_14(A1_12)
  if L3_14 == nil then
    L3_14 = GetGoldRedirectTarget(A1_12)
  end
  if L3_14 ~= nil then
    AttackTarget(L3_14)
  else
    FindNewTarget()
  end
  return true
end
function TimerRetreat()
  if GetLeashCounter() < GetCharVar("MaxFrustration") then
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    ResetAndStartTimer("TimerFrustrationSearch")
  end
end
function AttackTarget(A0_15)
  if GetLeashCounter() > 0 then
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    StartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
  else
    SetTimerDelay("TimerFrustrationSearch", DEFAULT_FRUSTRATION_SEARCH_TIME)
    ResetAndStartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
  end
  if A0_15 ~= nil then
    OutOfCombatRegen:Stop()
    SetStateAndCloseToTarget(AI_ATTACK, A0_15)
    SetRoamState(HOSTILE)
  end
end
function Retreat()
  StopTimer("TimerFrustrationSearch")
  StartTimer("TimerReturningHome")
  SetGhosted(true)
  SetStateAndMoveToLeashedPos(AI_RETREAT)
  TurnOffAutoAttack(STOPREASON_MOVING)
  OutOfCombatRegen:Start()
end
function IncreaseFrustration(A0_16)
  local L1_17
  L1_17 = GetLeashCounter
  L1_17 = L1_17()
  L1_17 = L1_17 + A0_16
  SetLeashCounter(L1_17)
  while A0_16 > 0 do
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustration", 1, GetCharVar("MaxFrustration") + 1, 25000)
  end
  if L1_17 > GetCharVar("MaxFrustration") then
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustration", 1, GetCharVar("MaxFrustration") + 1, 25000)
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustrationReturn", 1, GetCharVar("MaxFrustration") + 1, 25000)
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustration")
    SetCharVar("StartBoostRegen", 1)
    Retreat()
  else
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    ResetTimer("TimerFrustrationSearch")
  end
end
function TargetWithinWalkBounds(A0_18, A1_19)
  local L2_20
  L2_20 = GetCampLeashPos
  L2_20 = L2_20()
  if A0_18 == nil then
    return false
  end
  if A1_19 < WalkDistanceBetweenObjectCenterAndPoint(A0_18, L2_20) then
    return false
  else
    return true
  end
end
function FindNearestAggressor(A0_21, A1_22)
  local L2_23, L3_24, L4_25, L5_26
  L2_23 = MONSTER_ANY_INCLUDED_TAG
  L3_24 = MONSTER_NONEPIC_EXCLUDED_TAG
  L4_25 = HasUnitTag
  L5_26 = GetThis
  L5_26 = L5_26()
  L4_25 = L4_25(L5_26, {
    UnitTagIndicies.Monster_Epic
  })
  if L4_25 then
    L3_24 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L4_25 = GetCampLeashRadius
  L4_25 = L4_25()
  L4_25 = L4_25 * 1.25
  L5_26 = FindTargetWithFilter
  L5_26 = L5_26(AGGRESSION_FIRST_SWEEP_RANGE, L2_23, L3_24)
  if L5_26 == nil or not TargetWithinWalkBounds(L5_26, L4_25) then
    L5_26 = FindTargetWithFilter(GetCampLeashRadius() + OUTER_RANGE_BOUND, L2_23, L3_24)
  end
  if L5_26 == nil or not TargetWithinWalkBounds(L5_26, L4_25) then
    L5_26 = FindTargetNearPositionWithFilter(A0_21, GetCampLeashRadius(), L2_23, L3_24)
    if L5_26 == nil or not TargetWithinWalkBounds(L5_26, L4_25) then
      L5_26 = A1_22
    end
  end
  if L5_26 == nil or not TargetWithinWalkBounds(L5_26, L4_25) then
    L5_26 = nil
    L5_26 = FindTargetWithFilter(GetCampLeashRadius() + OUTER_RANGE_BOUND, L2_23, L3_24)
    return L5_26
  else
    return L5_26
  end
end
function OnTakeDamage(A0_27)
end
function RespondToAggression(A0_28)
  local L1_29, L2_30, L3_31, L4_32, L5_33, L6_34, L7_35, L8_36, L9_37, L10_38, L11_39, L12_40, L13_41
  L1_29 = IsDead
  L1_29 = L1_29()
  if L1_29 then
    return
  end
  L1_29 = MONSTER_ANY_INCLUDED_TAG
  L2_30 = MONSTER_NONEPIC_EXCLUDED_TAG
  L3_31 = HasUnitTag
  L4_32 = GetThis
  L4_32 = L4_32()
  L5_33 = {L6_34}
  L6_34 = UnitTagIndicies
  L6_34 = L6_34.Monster_Epic
  L3_31 = L3_31(L4_32, L5_33)
  if L3_31 then
    L2_30 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L3_31 = GetMyPos
  L3_31 = L3_31()
  L4_32 = GetState
  L4_32 = L4_32()
  L5_33 = GetCharVar
  L6_34 = "MaxFrustration"
  L5_33 = L5_33(L6_34)
  L6_34 = GetRoamState
  L6_34 = L6_34()
  L7_35 = INACTIVE
  if L6_34 == L7_35 then
    L6_34 = AI_RETREAT
    if L4_32 ~= L6_34 then
      L6_34 = AI_TAUNTED
      if L4_32 ~= L6_34 then
        L6_34 = AI_FEARED
        if L4_32 ~= L6_34 then
          L6_34 = AI_FLEEING
          if L4_32 ~= L6_34 then
            L6_34 = GetMaxHP
            L6_34 = L6_34()
            L7_35 = GetHP
            L7_35 = L7_35()
            L8_36 = GetLeashCounter
            L8_36 = L8_36()
            L9_37 = HasUnitTag
            L10_38 = A0_28
            L11_39 = L1_29
            L9_37 = L9_37(L10_38, L11_39)
            if L9_37 == true then
              L9_37 = HasUnitTag
              L10_38 = A0_28
              L11_39 = L2_30
              L9_37 = L9_37(L10_38, L11_39)
              if L9_37 == false and L5_33 > L8_36 then
                L9_37 = AttackTarget
                L10_38 = A0_28
                L9_37(L10_38)
              end
            else
              L9_37 = OutOfCombatRegen
              L10_38 = L9_37
              L9_37 = L9_37.Start
              L9_37(L10_38)
            end
          end
        end
      end
    end
  else
    L6_34 = GetRoamState
    L6_34 = L6_34()
    L7_35 = HOSTILE
    if L6_34 == L7_35 then
      L6_34 = AI_ATTACK
      if L4_32 == L6_34 then
        L6_34 = IsValidEnemyWithFilter
        L7_35 = A0_28
        L8_36 = L1_29
        L9_37 = L2_30
        L6_34 = L6_34(L7_35, L8_36, L9_37)
        if L6_34 then
          L6_34 = GetTarget
          L6_34 = L6_34()
          target = L6_34
          L6_34 = target
          if L6_34 ~= nil then
            L6_34 = target
            if L6_34 ~= A0_28 then
              L6_34 = GetMyPos
              L6_34 = L6_34()
              L7_35 = OutOfCombatRegen
              L8_36 = L7_35
              L7_35 = L7_35.Stop
              L7_35(L8_36)
              L7_35 = DistanceBetweenObjectCenterAndPoint
              L8_36 = target
              L9_37 = L6_34
              L7_35 = L7_35(L8_36, L9_37)
              L8_36 = GetCampLeashPos
              L8_36 = L8_36()
              L9_37 = WalkDistanceBetweenObjectCenterAndPoint
              L10_38 = target
              L11_39 = L8_36
              L9_37 = L9_37(L10_38, L11_39)
              L10_38 = GetCampLeashRadius
              L10_38 = L10_38()
              L11_39 = DistanceBetweenObjectCenterAndPoint
              L12_40 = A0_28
              L13_41 = L6_34
              L11_39 = L11_39(L12_40, L13_41)
              L12_40 = WalkDistanceBetweenObjectCenterAndPoint
              L13_41 = A0_28
              L12_40 = L12_40(L13_41, L8_36)
              L13_41 = GetCampLeashRadius
              L13_41 = L13_41()
              L13_41 = L13_41 * 1.25
              if L7_35 > L11_39 + CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE then
                if TargetWithinWalkBounds(A0_28, L13_41) then
                  AttackTarget(A0_28)
                  SetCharVar("WillBeFrustrated", 2)
                end
              elseif not TargetWithinWalkBounds(target, L13_41) then
                AttackTarget(A0_28)
                SetCharVar("WillBeFrustrated", 2)
              end
            end
          else
            L6_34 = target
            if L6_34 ~= nil then
              L6_34 = AI_ATTACK
              if L4_32 == L6_34 then
                L6_34 = IsValidEnemyWithFilter
                L7_35 = A0_28
                L8_36 = L1_29
                L9_37 = L2_30
                L6_34 = L6_34(L7_35, L8_36, L9_37)
                if L6_34 then
                  L6_34 = AttackTarget
                  L7_35 = A0_28
                  L6_34(L7_35)
                end
              end
            else
              L6_34 = IsValidEnemyWithFilter
              L7_35 = A0_28
              L8_36 = L1_29
              L9_37 = L2_30
              L6_34 = L6_34(L7_35, L8_36, L9_37)
              if L6_34 then
                L6_34 = AttackTarget
                L7_35 = A0_28
                L6_34(L7_35)
              end
            end
          end
        end
      end
    end
  end
end
function TimerFrustrationSearch()
  local L0_42, L1_43, L2_44, L3_45, L4_46, L5_47, L6_48, L7_49, L8_50, L9_51, L10_52
  L0_42 = GetState
  L0_42 = L0_42()
  L1_43 = GetRoamState
  L1_43 = L1_43()
  L2_44 = GetCharVar
  L3_45 = "WillBeFrustrated"
  L2_44 = L2_44(L3_45)
  L3_45 = INACTIVE
  if L1_43 ~= L3_45 then
    L3_45 = RUN_IN_FEAR
    if L1_43 ~= L3_45 then
      L3_45 = AI_HALTED
      if L0_42 ~= L3_45 then
        L3_45 = GetCharVar
        L4_46 = "inStasis"
        L3_45 = L3_45(L4_46)
      end
    end
  elseif L3_45 > 1 then
    return
  end
  L3_45 = SetTimerDelay
  L4_46 = "TimerFrustrationSearch"
  L5_47 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L3_45(L4_46, L5_47)
  L3_45 = GetLeashCounter
  L3_45 = L3_45()
  L4_46 = false
  if L2_44 >= 1 then
    L4_46 = true
    L5_47 = SetCharVar
    L6_48 = "WillBeFrustrated"
    L7_49 = 0
    L5_47(L6_48, L7_49)
  end
  L5_47 = GetTarget
  L5_47 = L5_47()
  L6_48 = GetCampLeashRadius
  L6_48 = L6_48()
  L7_49 = GetMyLeashedPos
  L7_49 = L7_49()
  L8_50 = GetCampLeashPos
  L8_50 = L8_50()
  L9_51 = GetDistToLeashedPos
  L9_51 = L9_51()
  L10_52 = L6_48 + 1
  if L5_47 ~= nil then
    L10_52 = WalkDistanceBetweenObjectCenterAndPoint(L5_47, L8_50)
  else
    FindNewTarget()
    L5_47 = GetTarget()
    if L5_47 == nil then
      L4_46 = true
    end
  end
  if L9_51 > L6_48 - LEASH_PROTECTION_BARRIER and L6_48 > L9_51 and L6_48 < L10_52 and L0_42 ~= AI_RETREAT and GetLeashCounter() < GetCharVar("MaxFrustration") then
    FindNewTarget()
    L5_47 = GetTarget()
    if L5_47 ~= nil and L5_47 ~= L5_47 then
      L4_46 = true
    end
  end
  if L10_52 > L6_48 + OUTER_RANGE_BOUND and L0_42 ~= AI_RETREAT then
    L4_46 = true
  end
  if L9_51 > L6_48 + OUTER_RANGE_BOUND then
    L4_46 = true
  end
  if L4_46 == true then
    IncreaseFrustration(1)
  end
end
function TimerReturningHome()
  local L0_53, L1_54, L2_55, L3_56, L4_57
  L0_53 = GetState
  L0_53 = L0_53()
  L1_54 = GetRoamState
  L1_54 = L1_54()
  L2_55 = INACTIVE
  if L1_54 ~= L2_55 then
    L2_55 = RUN_IN_FEAR
    if L1_54 ~= L2_55 then
      L2_55 = AI_HALTED
      if L0_53 ~= L2_55 then
        L2_55 = GetCharVar
        L3_56 = "inStasis"
        L2_55 = L2_55(L3_56)
      end
    end
  elseif L2_55 > 1 then
    return
  end
  L2_55 = GetMaxHP
  L2_55 = L2_55()
  L3_56 = GetHP
  L3_56 = L3_56()
  L4_57 = GetDistToRetreat
  L4_57 = L4_57()
  SetCharVar("DistanceToHome", L4_57)
  SetGhosted(true)
  if L0_53 == AI_RETREAT and IsMovementStopped() == true and L4_57 < 25 then
    StopTimer("TimerReturningHome")
    SetLeashOrientation()
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustration")
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustrationReturn")
    SetLeashCounter(0)
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustrationReset", 0, 1, 25000)
    SetGhosted(false)
    SetState(AI_ATTACK)
    SetRoamState(GetOriginalState())
    SetTimerDelay("TimerFrustrationSearch", DEFAULT_FRUSTRATION_SEARCH_TIME)
  elseif L4_57 >= 25 then
    SetStateAndMoveToLeashedPos(AI_RETREAT)
  end
end
function TimerAttack()
  local L0_58, L1_59
  L0_58 = GetState
  L0_58 = L0_58()
  L1_59 = AI_HALTED
  if L0_58 == L1_59 then
    return
  end
  L1_59 = GetCharVar
  L1_59 = L1_59("inStasis")
  if L1_59 > 1 then
    return
  end
  L1_59 = GetRoamState
  L1_59 = L1_59()
  if L1_59 ~= INACTIVE then
    L1_59 = GetRoamState
    L1_59 = L1_59()
    if L1_59 ~= RUN_IN_FEAR then
      L1_59 = AI_RETREAT
    end
  elseif L0_58 == L1_59 then
    return
  end
  L1_59 = AI_ATTACK
  if L0_58 ~= L1_59 then
    L1_59 = AI_TAUNTED
  elseif L0_58 == L1_59 then
    L1_59 = StartTimer
    L1_59("TimerFrustrationSearch")
    L1_59 = GetTarget
    L1_59 = L1_59()
    if L1_59 ~= nil then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L1_59)
      elseif TargetInCancelAttackRange() == false then
        TurnOffAutoAttack(STOPREASON_MOVING)
      end
      if IsMovementStopped() == true then
        AttackTarget(L1_59)
      end
    elseif L0_58 == AI_ATTACK then
      FindNewTarget()
      L1_59 = GetTarget()
    end
  end
end
function AggressionSweep()
  local L0_60, L1_61, L2_62, L3_63, L4_64
  L0_60 = GetState
  L0_60 = L0_60()
  L1_61 = AI_HALTED
  if L0_60 == L1_61 then
    return
  end
  L1_61 = GetState
  L1_61 = L1_61()
  L2_62 = AI_RETREAT
  if L1_61 == L2_62 then
    L1_61 = TurnOffAutoAttack
    L2_62 = STOPREASON_MOVING
    L1_61(L2_62)
    return
  end
  L1_61 = 650
  L2_62 = GetMyLeashedPos
  L2_62 = L2_62()
  L3_63 = GetTarget
  L3_63 = L3_63()
  L4_64 = nil
  if L3_63 ~= nil then
    L4_64 = FindNearestAggressor(L2_62, L3_63)
  else
    L4_64 = FindNearestAggressor(L2_62, nil)
  end
  if L4_64 ~= nil then
    AttackTarget(L4_64)
  end
end
function FindNewTarget()
  local L0_65, L1_66, L2_67, L3_68, L4_69
  L0_65 = GetState
  L0_65 = L0_65()
  L1_66 = AI_HALTED
  if L0_65 == L1_66 then
    return
  end
  L1_66 = GetRoamState
  L1_66 = L1_66()
  L2_67 = INACTIVE
  if L1_66 ~= L2_67 then
    L1_66 = GetRoamState
    L1_66 = L1_66()
    L2_67 = RUN_IN_FEAR
    if L1_66 ~= L2_67 then
      L1_66 = GetState
      L1_66 = L1_66()
      L2_67 = AI_RETREAT
    end
  elseif L1_66 == L2_67 then
    L1_66 = TurnOffAutoAttack
    L2_67 = STOPREASON_MOVING
    L1_66(L2_67)
    return
  end
  L1_66 = GetCampLeashRadius
  L1_66 = L1_66()
  L2_67 = GetCampLeashPos
  L2_67 = L2_67()
  L3_68 = GetTarget
  L3_68 = L3_68()
  L4_69 = nil
  if L3_68 ~= nil then
    L4_69 = FindNearestAggressor(L2_67, L3_68)
  else
    L4_69 = FindNearestAggressor(L2_67, nil)
  end
  if L4_69 ~= nil then
    AttackTarget(L4_69)
  end
end
function HaltAI()
  Event("ComponentHalt")
  StopTimer("TimerFrustrationSearch")
  StopTimer("TimerAttack")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
function StopLeashing()
  StopTimer("TimerFrustrationSearch")
  StopTimer("TimerAttack")
end
function StartLeashing()
  if GetCharVar("MaxFrustration") > GetLeashCounter() then
    ResetAndStartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
    ClearTarget()
  end
end
function TurnOffRegeneration()
  OutOfCombatRegen:Stop()
end
function TurnOnRegeneration()
  OutOfCombatRegen:Start()
end
function EnterStasis()
  SetCharVar("inStasis", 1.01)
end
function ExitStasis()
  SetCharVar("inStasis", 0)
end
