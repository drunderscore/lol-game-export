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
  DebugPrintToChat("OnInit")
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
  DebugPrintToChat("OnOrder: " .. A0_1)
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
  L2_5 = DebugPrintToChat
  L3_6 = "LeashedCallForHelp"
  L2_5(L3_6)
  L2_5 = GetState
  L2_5 = L2_5()
  L3_6 = GetCharVar
  L4_7 = "MaxFrustration"
  L3_6 = L3_6(L4_7)
  L4_7 = DebugPrintToChat
  L5_8 = "aiState: "
  L6_9 = L2_5
  L5_8 = L5_8 .. L6_9
  L4_7(L5_8)
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
  L2_13 = DebugPrintToChat
  L3_14 = "OnTargetLost"
  L2_13(L3_14)
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
function OnAttacked(A0_27)
  DebugPrintToChat("OnAttacked")
end
function OnTakeDamage(A0_28)
  DebugPrintToChat("OnTakeDamage")
end
function RespondToAggression(A0_29)
  local L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36, L8_37, L9_38, L10_39, L11_40, L12_41, L13_42
  L1_30 = DebugPrintToChat
  L2_31 = "RespondToAggression"
  L1_30(L2_31)
  L1_30 = IsDead
  L1_30 = L1_30()
  if L1_30 then
    return
  end
  L1_30 = MONSTER_ANY_INCLUDED_TAG
  L2_31 = MONSTER_NONEPIC_EXCLUDED_TAG
  L3_32 = HasUnitTag
  L4_33 = GetThis
  L4_33 = L4_33()
  L5_34 = {L6_35}
  L6_35 = UnitTagIndicies
  L6_35 = L6_35.Monster_Epic
  L3_32 = L3_32(L4_33, L5_34)
  if L3_32 then
    L2_31 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L3_32 = GetMyPos
  L3_32 = L3_32()
  L4_33 = GetState
  L4_33 = L4_33()
  L5_34 = GetCharVar
  L6_35 = "MaxFrustration"
  L5_34 = L5_34(L6_35)
  L6_35 = GetRoamState
  L6_35 = L6_35()
  L7_36 = INACTIVE
  if L6_35 == L7_36 then
    L6_35 = AI_RETREAT
    if L4_33 ~= L6_35 then
      L6_35 = AI_TAUNTED
      if L4_33 ~= L6_35 then
        L6_35 = AI_FEARED
        if L4_33 ~= L6_35 then
          L6_35 = AI_FLEEING
          if L4_33 ~= L6_35 then
            L6_35 = GetMaxHP
            L6_35 = L6_35()
            L7_36 = GetHP
            L7_36 = L7_36()
            L8_37 = GetLeashCounter
            L8_37 = L8_37()
            L9_38 = HasUnitTag
            L10_39 = A0_29
            L11_40 = L1_30
            L9_38 = L9_38(L10_39, L11_40)
            if L9_38 == true then
              L9_38 = HasUnitTag
              L10_39 = A0_29
              L11_40 = L2_31
              L9_38 = L9_38(L10_39, L11_40)
              if L9_38 == false and L5_34 > L8_37 then
                L9_38 = AttackTarget
                L10_39 = A0_29
                L9_38(L10_39)
              end
            else
              L9_38 = OutOfCombatRegen
              L10_39 = L9_38
              L9_38 = L9_38.Start
              L9_38(L10_39)
            end
          end
        end
      end
    end
  else
    L6_35 = GetRoamState
    L6_35 = L6_35()
    L7_36 = HOSTILE
    if L6_35 == L7_36 then
      L6_35 = AI_ATTACK
      if L4_33 == L6_35 then
        L6_35 = IsValidEnemyWithFilter
        L7_36 = A0_29
        L8_37 = L1_30
        L9_38 = L2_31
        L6_35 = L6_35(L7_36, L8_37, L9_38)
        if L6_35 then
          L6_35 = GetTarget
          L6_35 = L6_35()
          target = L6_35
          L6_35 = target
          if L6_35 ~= nil then
            L6_35 = target
            if L6_35 ~= A0_29 then
              L6_35 = GetMyPos
              L6_35 = L6_35()
              L7_36 = OutOfCombatRegen
              L8_37 = L7_36
              L7_36 = L7_36.Stop
              L7_36(L8_37)
              L7_36 = DistanceBetweenObjectCenterAndPoint
              L8_37 = target
              L9_38 = L6_35
              L7_36 = L7_36(L8_37, L9_38)
              L8_37 = GetCampLeashPos
              L8_37 = L8_37()
              L9_38 = WalkDistanceBetweenObjectCenterAndPoint
              L10_39 = target
              L11_40 = L8_37
              L9_38 = L9_38(L10_39, L11_40)
              L10_39 = GetCampLeashRadius
              L10_39 = L10_39()
              L11_40 = DistanceBetweenObjectCenterAndPoint
              L12_41 = A0_29
              L13_42 = L6_35
              L11_40 = L11_40(L12_41, L13_42)
              L12_41 = WalkDistanceBetweenObjectCenterAndPoint
              L13_42 = A0_29
              L12_41 = L12_41(L13_42, L8_37)
              L13_42 = GetCampLeashRadius
              L13_42 = L13_42()
              L13_42 = L13_42 * 1.25
              if L7_36 > L11_40 + CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE then
                if TargetWithinWalkBounds(A0_29, L13_42) then
                  AttackTarget(A0_29)
                  SetCharVar("WillBeFrustrated", 2)
                end
              elseif not TargetWithinWalkBounds(target, L13_42) then
                AttackTarget(A0_29)
                SetCharVar("WillBeFrustrated", 2)
              end
            end
          else
            L6_35 = target
            if L6_35 ~= nil then
              L6_35 = AI_ATTACK
              if L4_33 == L6_35 then
                L6_35 = IsValidEnemyWithFilter
                L7_36 = A0_29
                L8_37 = L1_30
                L9_38 = L2_31
                L6_35 = L6_35(L7_36, L8_37, L9_38)
                if L6_35 then
                  L6_35 = AttackTarget
                  L7_36 = A0_29
                  L6_35(L7_36)
                end
              end
            else
              L6_35 = IsValidEnemyWithFilter
              L7_36 = A0_29
              L8_37 = L1_30
              L9_38 = L2_31
              L6_35 = L6_35(L7_36, L8_37, L9_38)
              if L6_35 then
                L6_35 = AttackTarget
                L7_36 = A0_29
                L6_35(L7_36)
              end
            end
          end
        end
      end
    end
  end
end
function TimerFrustrationSearch()
  local L0_43, L1_44, L2_45, L3_46, L4_47, L5_48, L6_49, L7_50, L8_51, L9_52, L10_53
  L0_43 = GetState
  L0_43 = L0_43()
  L1_44 = GetRoamState
  L1_44 = L1_44()
  L2_45 = GetCharVar
  L3_46 = "WillBeFrustrated"
  L2_45 = L2_45(L3_46)
  L3_46 = DebugPrintToChat
  L4_47 = "\troamState:"
  L5_48 = L1_44
  L6_49 = " aiState: "
  L7_50 = L0_43
  L4_47 = L4_47 .. L5_48 .. L6_49 .. L7_50
  L3_46(L4_47)
  L3_46 = INACTIVE
  if L1_44 ~= L3_46 then
    L3_46 = RUN_IN_FEAR
    if L1_44 ~= L3_46 then
      L3_46 = AI_HALTED
      if L0_43 ~= L3_46 then
        L3_46 = GetCharVar
        L4_47 = "inStasis"
        L3_46 = L3_46(L4_47)
      end
    end
  elseif L3_46 > 1 then
    return
  end
  L3_46 = SetTimerDelay
  L4_47 = "TimerFrustrationSearch"
  L5_48 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L3_46(L4_47, L5_48)
  L3_46 = GetLeashCounter
  L3_46 = L3_46()
  L4_47 = false
  if L2_45 >= 1 then
    L4_47 = true
    L5_48 = SetCharVar
    L6_49 = "WillBeFrustrated"
    L7_50 = 0
    L5_48(L6_49, L7_50)
  end
  L5_48 = GetTarget
  L5_48 = L5_48()
  L6_49 = GetCampLeashRadius
  L6_49 = L6_49()
  L7_50 = GetMyLeashedPos
  L7_50 = L7_50()
  L8_51 = GetCampLeashPos
  L8_51 = L8_51()
  L9_52 = GetDistToLeashedPos
  L9_52 = L9_52()
  L10_53 = L6_49 + 1
  if L5_48 ~= nil then
    L10_53 = WalkDistanceBetweenObjectCenterAndPoint(L5_48, L8_51)
  else
    FindNewTarget()
    L5_48 = GetTarget()
    if L5_48 == nil then
      L4_47 = true
    end
  end
  if L9_52 > L6_49 - LEASH_PROTECTION_BARRIER and L6_49 > L9_52 and L6_49 < L10_53 and L0_43 ~= AI_RETREAT and GetLeashCounter() < GetCharVar("MaxFrustration") then
    FindNewTarget()
    L5_48 = GetTarget()
    if L5_48 ~= nil and L5_48 ~= L5_48 then
      L4_47 = true
    end
  end
  if L10_53 > L6_49 + OUTER_RANGE_BOUND and L0_43 ~= AI_RETREAT then
    L4_47 = true
  end
  DebugPrintToChat("===============distToLeash: " .. L9_52 .. " leashRadius: " .. L6_49 .. " OUTER_RANGE_BOUND: " .. OUTER_RANGE_BOUND)
  if L9_52 > L6_49 + OUTER_RANGE_BOUND then
    L4_47 = true
  end
  if L4_47 == true then
    IncreaseFrustration(1)
  end
end
function TimerReturningHome()
  local L0_54, L1_55, L2_56, L3_57, L4_58
  L0_54 = GetState
  L0_54 = L0_54()
  L1_55 = GetRoamState
  L1_55 = L1_55()
  L2_56 = INACTIVE
  if L1_55 ~= L2_56 then
    L2_56 = RUN_IN_FEAR
    if L1_55 ~= L2_56 then
      L2_56 = AI_HALTED
      if L0_54 ~= L2_56 then
        L2_56 = GetCharVar
        L3_57 = "inStasis"
        L2_56 = L2_56(L3_57)
      end
    end
  elseif L2_56 > 1 then
    return
  end
  L2_56 = GetMaxHP
  L2_56 = L2_56()
  L3_57 = GetHP
  L3_57 = L3_57()
  L4_58 = GetDistToRetreat
  L4_58 = L4_58()
  SetCharVar("DistanceToHome", L4_58)
  SetGhosted(true)
  if L0_54 == AI_RETREAT and IsMovementStopped() == true and L4_58 < 25 then
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
  elseif L4_58 >= 25 then
    SetStateAndMoveToLeashedPos(AI_RETREAT)
  end
end
function TimerAttack()
  local L0_59, L1_60
  L0_59 = GetState
  L0_59 = L0_59()
  L1_60 = AI_HALTED
  if L0_59 == L1_60 then
    return
  end
  L1_60 = GetCharVar
  L1_60 = L1_60("inStasis")
  if L1_60 > 1 then
    return
  end
  L1_60 = GetRoamState
  L1_60 = L1_60()
  if L1_60 ~= INACTIVE then
    L1_60 = GetRoamState
    L1_60 = L1_60()
    if L1_60 ~= RUN_IN_FEAR then
      L1_60 = AI_RETREAT
    end
  elseif L0_59 == L1_60 then
    return
  end
  L1_60 = AI_ATTACK
  if L0_59 ~= L1_60 then
    L1_60 = AI_TAUNTED
  elseif L0_59 == L1_60 then
    L1_60 = StartTimer
    L1_60("TimerFrustrationSearch")
    L1_60 = GetTarget
    L1_60 = L1_60()
    if L1_60 ~= nil then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L1_60)
      elseif TargetInCancelAttackRange() == false then
        TurnOffAutoAttack(STOPREASON_MOVING)
      end
      if IsMovementStopped() == true then
        AttackTarget(L1_60)
      end
    elseif L0_59 == AI_ATTACK then
      FindNewTarget()
      L1_60 = GetTarget()
    end
  end
end
function AggressionSweep()
  local L0_61, L1_62, L2_63, L3_64, L4_65
  L0_61 = DebugPrintToChat
  L1_62 = "AggressionSweep"
  L0_61(L1_62)
  L0_61 = GetState
  L0_61 = L0_61()
  L1_62 = AI_HALTED
  if L0_61 == L1_62 then
    return
  end
  L1_62 = GetState
  L1_62 = L1_62()
  L2_63 = AI_RETREAT
  if L1_62 == L2_63 then
    L1_62 = TurnOffAutoAttack
    L2_63 = STOPREASON_MOVING
    L1_62(L2_63)
    return
  end
  L1_62 = 650
  L2_63 = GetMyLeashedPos
  L2_63 = L2_63()
  L3_64 = GetTarget
  L3_64 = L3_64()
  L4_65 = nil
  if L3_64 ~= nil then
    L4_65 = FindNearestAggressor(L2_63, L3_64)
  else
    L4_65 = FindNearestAggressor(L2_63, nil)
  end
  if L4_65 ~= nil then
    AttackTarget(L4_65)
  end
end
function FindNewTarget()
  local L0_66, L1_67, L2_68, L3_69, L4_70
  L0_66 = GetState
  L0_66 = L0_66()
  L1_67 = AI_HALTED
  if L0_66 == L1_67 then
    return
  end
  L1_67 = GetRoamState
  L1_67 = L1_67()
  L2_68 = INACTIVE
  if L1_67 ~= L2_68 then
    L1_67 = GetRoamState
    L1_67 = L1_67()
    L2_68 = RUN_IN_FEAR
    if L1_67 ~= L2_68 then
      L1_67 = GetState
      L1_67 = L1_67()
      L2_68 = AI_RETREAT
    end
  elseif L1_67 == L2_68 then
    L1_67 = TurnOffAutoAttack
    L2_68 = STOPREASON_MOVING
    L1_67(L2_68)
    return
  end
  L1_67 = GetCampLeashRadius
  L1_67 = L1_67()
  L2_68 = GetCampLeashPos
  L2_68 = L2_68()
  L3_69 = GetTarget
  L3_69 = L3_69()
  L4_70 = nil
  if L3_69 ~= nil then
    L4_70 = FindNearestAggressor(L2_68, L3_69)
  else
    L4_70 = FindNearestAggressor(L2_68, nil)
  end
  if L4_70 ~= nil then
    AttackTarget(L4_70)
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
  DebugPrintToChat("StopLeashing")
  StopTimer("TimerFrustrationSearch")
  StopTimer("TimerAttack")
end
function StartLeashing()
  DebugPrintToChat("StartLeashing")
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
