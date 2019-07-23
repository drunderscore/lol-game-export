RUN_IN_FEAR = 2
HOSTILE = 1
INACTIVE = 0
LEASH_COUNTER_THRESHOLD = 6
DEFAULT_FRUSTRATION_SEARCH_TIME = 0.05
DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME = 0.6
AGGRESSION_FIRST_SWEEP_RANGE = 550
LEASH_PROTECTION_BARRIER = 100
INNER_RANGE_BEFORE_CAMP_RELEASES = 800
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
  local L2_5, L3_6, L4_7, L5_8, L6_9
  L2_5 = GetState
  L2_5 = L2_5()
  if A0_3 == nil then
    A0_3 = owner
  end
  L3_6 = AI_HALTED
  if L2_5 == L3_6 then
    return
  end
  L3_6 = GetTarget
  L3_6 = L3_6()
  L4_7 = RespondToAggression
  L5_8 = A1_4
  L4_7(L5_8)
  L4_7 = GetState
  L4_7 = L4_7()
  L5_8 = AI_RETREAT
  if L4_7 == L5_8 then
    L4_7 = GetLeashCounter
    L4_7 = L4_7()
    L5_8 = LEASH_COUNTER_THRESHOLD
    if L4_7 < L5_8 then
      L4_7 = GetMaxHP
      L4_7 = L4_7()
      L5_8 = GetHP
      L5_8 = L5_8()
      L6_9 = GetMyLeashedPos
      L6_9 = L6_9()
      if WalkDistanceBetweenObjectCenterAndPoint(A1_4, L6_9) <= 650 then
        AttackTarget(A1_4)
      elseif GetWalkDistToLeashedPos() <= INNER_RANGE_BEFORE_CAMP_RELEASES and WalkDistanceBetweenObjectCenterAndPoint(A1_4, L6_9) <= ATTACKER_RANGE_BEFORE_RELEASH then
        AttackTarget(A1_4)
      end
    end
  end
end
function OnTargetLost(A0_10, A1_11)
  local L2_12, L3_13
  L2_12 = TurnOffAutoAttack
  L3_13 = STOPREASON_MOVING
  L2_12(L3_13)
  L2_12 = GetState
  L2_12 = L2_12()
  L3_13 = AI_HALTED
  if L2_12 ~= L3_13 then
    L3_13 = AI_RETREAT
  elseif L2_12 == L3_13 then
    L3_13 = true
    return L3_13
  end
  L3_13 = GetCharVar
  L3_13 = L3_13("inStasis")
  if L3_13 > 1 then
    L3_13 = false
    return L3_13
  end
  L3_13 = GetOwner
  L3_13 = L3_13(A1_11)
  if L3_13 == nil then
    L3_13 = GetGoldRedirectTarget(A1_11)
  end
  if L3_13 ~= nil then
    AttackTarget(L3_13)
  else
  end
  return true
end
function TurnOffSearch()
  StopTimer("TimerFrustrationSearch")
end
function TurnOnSearch()
  ResetAndStartTimer("TimerFrustrationSearch")
end
function TimerRetreat()
  if GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    ResetAndStartTimer("TimerFrustrationSearch")
  end
end
function AttackTarget(A0_14)
  if GetLeashCounter() > 0 then
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    StartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
  else
    SetTimerDelay("TimerFrustrationSearch", DEFAULT_FRUSTRATION_SEARCH_TIME)
    ResetAndStartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
  end
  if A0_14 ~= nil then
    OutOfCombatRegen:Stop()
    SetStateAndCloseToTarget(AI_ATTACK, A0_14)
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
function IncreaseFrustration(A0_15)
  local L1_16
  L1_16 = GetLeashCounter
  L1_16 = L1_16()
  L1_16 = L1_16 + A0_15
  SetLeashCounter(L1_16)
  while A0_15 > 0 do
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustration", 1, LEASH_COUNTER_THRESHOLD + 1, 25000)
  end
  if L1_16 > LEASH_COUNTER_THRESHOLD then
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustration", 1, LEASH_COUNTER_THRESHOLD + 1, 25000)
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustrationReturn", 1, LEASH_COUNTER_THRESHOLD + 1, 25000)
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustration")
    SetCharVar("StartBoostRegen", 1)
    Retreat()
  else
    SetTimerDelay("TimerFrustrationSearch", DELAY_BETWEEN_FRUSTRATION_SEARCH_TIME)
    ResetTimer("TimerFrustrationSearch")
  end
end
function TargetWithinWalkBounds(A0_17, A1_18)
  local L2_19
  L2_19 = GetMyLeashedPos
  L2_19 = L2_19()
  if A0_17 == nil then
    return false
  end
  if A1_18 < WalkDistanceBetweenObjectCenterAndPoint(A0_17, L2_19) then
    return false
  else
    return true
  end
end
function FindNearestAggressor(A0_20, A1_21, A2_22)
  local L3_23, L4_24, L5_25, L6_26
  L3_23 = MONSTER_ANY_INCLUDED_TAG
  L4_24 = MONSTER_NONEPIC_EXCLUDED_TAG
  L5_25 = HasUnitTag
  L6_26 = GetThis
  L6_26 = L6_26()
  L5_25 = L5_25(L6_26, {
    UnitTagIndicies.Monster_Epic
  })
  if L5_25 then
    L4_24 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L5_25 = A2_22
  L6_26 = FindTargetWithFilter
  L6_26 = L6_26(AGGRESSION_FIRST_SWEEP_RANGE, L3_23, L4_24)
  if L6_26 == nil or not TargetWithinWalkBounds(L6_26, L5_25) then
    L6_26 = FindTargetWithFilter(L5_25 + OUTER_RANGE_BOUND, L3_23, L4_24)
  end
  if L6_26 == nil or not TargetWithinWalkBounds(L6_26, L5_25) then
    L6_26 = FindTargetNearPositionWithFilter(A0_20, L5_25, L3_23, L4_24)
    if L6_26 == nil or not TargetWithinWalkBounds(L6_26, L5_25) then
      L6_26 = A1_21
    end
  end
  if L6_26 == nil or not TargetWithinWalkBounds(L6_26, L5_25) then
    L6_26 = nil
    L6_26 = FindTargetWithFilter(L5_25 + OUTER_RANGE_BOUND, L3_23, L4_24)
    return L6_26
  else
    return L6_26
  end
end
function OnTakeDamage(A0_27)
end
function RespondToAggression(A0_28)
  local L1_29, L2_30, L3_31, L4_32, L5_33, L6_34, L7_35, L8_36, L9_37, L10_38, L11_39, L12_40
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
  L5_33 = GetRoamState
  L5_33 = L5_33()
  L6_34 = INACTIVE
  if L5_33 == L6_34 then
    L5_33 = AI_RETREAT
    if L4_32 ~= L5_33 then
      L5_33 = AI_TAUNTED
      if L4_32 ~= L5_33 then
        L5_33 = AI_FEARED
        if L4_32 ~= L5_33 then
          L5_33 = AI_FLEEING
          if L4_32 ~= L5_33 then
            L5_33 = GetMaxHP
            L5_33 = L5_33()
            L6_34 = GetHP
            L6_34 = L6_34()
            L7_35 = GetLeashCounter
            L7_35 = L7_35()
            L8_36 = HasUnitTag
            L9_37 = A0_28
            L10_38 = L1_29
            L8_36 = L8_36(L9_37, L10_38)
            if L8_36 == true then
              L8_36 = HasUnitTag
              L9_37 = A0_28
              L10_38 = L2_30
              L8_36 = L8_36(L9_37, L10_38)
              if L8_36 == false then
                L8_36 = LEASH_COUNTER_THRESHOLD
                if L7_35 < L8_36 then
                  L8_36 = AttackTarget
                  L9_37 = A0_28
                  L8_36(L9_37)
                end
              end
            else
              L8_36 = OutOfCombatRegen
              L9_37 = L8_36
              L8_36 = L8_36.Start
              L8_36(L9_37)
            end
          end
        end
      end
    end
  else
    L5_33 = AI_ATTACK
    if L4_32 == L5_33 then
      L5_33 = IsValidEnemyWithFilter
      L6_34 = A0_28
      L7_35 = L1_29
      L8_36 = L2_30
      L5_33 = L5_33(L6_34, L7_35, L8_36)
      if L5_33 then
        L5_33 = GetTarget
        L5_33 = L5_33()
        target = L5_33
        L5_33 = target
        if L5_33 ~= nil then
          L5_33 = target
          if L5_33 ~= A0_28 then
            L5_33 = GetMyPos
            L5_33 = L5_33()
            L6_34 = OutOfCombatRegen
            L7_35 = L6_34
            L6_34 = L6_34.Stop
            L6_34(L7_35)
            L6_34 = DistanceBetweenObjectCenterAndPoint
            L7_35 = target
            L8_36 = L5_33
            L6_34 = L6_34(L7_35, L8_36)
            L7_35 = GetMyLeashedPos
            L7_35 = L7_35()
            L8_36 = WalkDistanceBetweenObjectCenterAndPoint
            L9_37 = target
            L10_38 = L7_35
            L8_36 = L8_36(L9_37, L10_38)
            L9_37 = 650
            L10_38 = DistanceBetweenObjectCenterAndPoint
            L11_39 = A0_28
            L12_40 = L5_33
            L10_38 = L10_38(L11_39, L12_40)
            L11_39 = WalkDistanceBetweenObjectCenterAndPoint
            L12_40 = A0_28
            L11_39 = L11_39(L12_40, L7_35)
            L12_40 = 812.5
            if L6_34 > L10_38 + CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE then
              if TargetWithinWalkBounds(A0_28, L12_40) then
                AttackTarget(A0_28)
                SetCharVar("WillBeFrustrated", 2)
              end
            elseif not TargetWithinWalkBounds(target, L12_40) then
              AttackTarget(A0_28)
              SetCharVar("WillBeFrustrated", 2)
            end
          end
        else
          L5_33 = target
          if L5_33 ~= nil then
            L5_33 = AI_ATTACK
            if L4_32 == L5_33 then
              L5_33 = IsValidEnemyWithFilter
              L6_34 = A0_28
              L7_35 = L1_29
              L8_36 = L2_30
              L5_33 = L5_33(L6_34, L7_35, L8_36)
              if L5_33 then
                L5_33 = AttackTarget
                L6_34 = A0_28
                L5_33(L6_34)
              end
            end
          else
            L5_33 = IsValidEnemyWithFilter
            L6_34 = A0_28
            L7_35 = L1_29
            L8_36 = L2_30
            L5_33 = L5_33(L6_34, L7_35, L8_36)
            if L5_33 then
              L5_33 = AttackTarget
              L6_34 = A0_28
              L5_33(L6_34)
            end
          end
        end
      end
    end
  end
end
function TimerFrustrationSearch()
  local L0_41, L1_42, L2_43, L3_44, L4_45, L5_46, L6_47, L7_48, L8_49, L9_50, L10_51
  L0_41 = GetState
  L0_41 = L0_41()
  L1_42 = GetRoamState
  L1_42 = L1_42()
  L2_43 = GetCharVar
  L3_44 = "WillBeFrustrated"
  L2_43 = L2_43(L3_44)
  L3_44 = INACTIVE
  if L1_42 ~= L3_44 then
    L3_44 = RUN_IN_FEAR
    if L1_42 ~= L3_44 then
      L3_44 = AI_HALTED
      if L0_41 ~= L3_44 then
        L3_44 = GetCharVar
        L4_45 = "inStasis"
        L3_44 = L3_44(L4_45)
      end
    end
  elseif L3_44 > 1 then
    return
  end
  L3_44 = SetTimerDelay
  L4_45 = "TimerFrustrationSearch"
  L5_46 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L3_44(L4_45, L5_46)
  L3_44 = GetLeashCounter
  L3_44 = L3_44()
  L4_45 = false
  if L2_43 >= 1 then
    L4_45 = true
    L5_46 = SetCharVar
    L6_47 = "WillBeFrustrated"
    L7_48 = 0
    L5_46(L6_47, L7_48)
  end
  L5_46 = GetTarget
  L5_46 = L5_46()
  L6_47 = 650
  L7_48 = GetMyLeashedPos
  L7_48 = L7_48()
  L8_49 = GetMyLeashedPos
  L8_49 = L8_49()
  L9_50 = GetDistToRetreat
  L9_50 = L9_50()
  L10_51 = L6_47 + 1
  if L5_46 ~= nil then
    L10_51 = WalkDistanceBetweenObjectCenterAndPoint(L5_46, L8_49)
  else
    L5_46 = GetTarget()
    if L5_46 == nil then
      L4_45 = true
    end
  end
  if L9_50 > L6_47 - LEASH_PROTECTION_BARRIER and L6_47 > L9_50 and L6_47 < L10_51 and L0_41 ~= AI_RETREAT and GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
    L5_46 = GetTarget()
    if L5_46 ~= nil and L5_46 ~= L5_46 then
      L4_45 = true
    end
  end
  if L10_51 > L6_47 + OUTER_RANGE_BOUND and L0_41 ~= AI_RETREAT then
    L4_45 = true
  end
  if L9_50 > L6_47 + OUTER_RANGE_BOUND then
    L4_45 = true
  end
  if L4_45 == true then
    IncreaseFrustration(1)
  end
end
function TimerReturningHome()
  local L0_52, L1_53, L2_54, L3_55, L4_56
  L0_52 = GetState
  L0_52 = L0_52()
  L1_53 = GetRoamState
  L1_53 = L1_53()
  L2_54 = AI_HALTED
  if L0_52 ~= L2_54 then
    L2_54 = GetCharVar
    L3_55 = "inStasis"
    L2_54 = L2_54(L3_55)
  elseif L2_54 > 1 then
    return
  end
  L2_54 = GetMaxHP
  L2_54 = L2_54()
  L3_55 = GetHP
  L3_55 = L3_55()
  L4_56 = GetDistToRetreat
  L4_56 = L4_56()
  SetCharVar("DistanceToHome", L4_56)
  SetGhosted(true)
  if L0_52 == AI_RETREAT and IsMovementStopped() == true and L4_56 < 25 then
    StopTimer("TimerReturningHome")
    SetLeashOrientation()
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustration")
    AIScriptSpellBuffRemove(GetThis(), "JungleFrustrationReturn")
    SetLeashCounter(0)
    AIScriptSpellBuffStackingAdd(GetThis(), GetThis(), "JungleFrustrationReset", 0, 1, 25000)
    SetGhosted(false)
    SetState(AI_ATTACK)
    SetRoamState(GetOriginalState())
  elseif L4_56 >= 25 then
    SetStateAndMoveToLeashedPos(AI_RETREAT)
  end
end
function TimerAttack()
  local L0_57, L1_58
  L0_57 = GetState
  L0_57 = L0_57()
  L1_58 = AI_HALTED
  if L0_57 == L1_58 then
    return
  end
  L1_58 = GetCharVar
  L1_58 = L1_58("inStasis")
  if L1_58 > 1 then
    return
  end
  L1_58 = AI_RETREAT
  if L0_57 == L1_58 then
    return
  end
  L1_58 = AI_ATTACK
  if L0_57 ~= L1_58 then
    L1_58 = AI_TAUNTED
  elseif L0_57 == L1_58 then
    L1_58 = StartTimer
    L1_58("TimerFrustrationSearch")
    L1_58 = GetTarget
    L1_58 = L1_58()
    if L1_58 ~= nil then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L1_58)
      elseif TargetInCancelAttackRange() == false then
        TurnOffAutoAttack(STOPREASON_MOVING)
      end
      if IsMovementStopped() == true then
        AttackTarget(L1_58)
      end
    elseif L0_57 == AI_ATTACK then
      L1_58 = GetTarget()
    end
  end
end
function AttackerSweep()
  local L0_59, L1_60, L2_61, L3_62, L4_63
  L0_59 = GetState
  L0_59 = L0_59()
  L1_60 = AI_HALTED
  if L0_59 == L1_60 then
    return
  end
  L1_60 = GetState
  L1_60 = L1_60()
  L2_61 = AI_RETREAT
  if L1_60 == L2_61 then
    L1_60 = TurnOffAutoAttack
    L2_61 = STOPREASON_MOVING
    L1_60(L2_61)
    return
  end
  L1_60 = GetThis
  L1_60 = L1_60()
  if L1_60 == nil then
    return
  end
  L1_60 = 900
  L2_61 = GetMyLeashedPos
  L2_61 = L2_61()
  L3_62 = GetTarget
  L3_62 = L3_62()
  L4_63 = nil
  if L3_62 ~= nil then
    L4_63 = FindNearestAggressor(L2_61, L3_62, L1_60)
  else
    L4_63 = FindNearestAggressor(L2_61, nil, L1_60)
  end
  if L4_63 ~= nil then
    AttackTarget(L4_63)
  end
end
function FindNewTarget()
  local L0_64, L1_65, L2_66, L3_67, L4_68
  L0_64 = GetState
  L0_64 = L0_64()
  L1_65 = AI_HALTED
  if L0_64 == L1_65 then
    return
  end
  L1_65 = GetState
  L1_65 = L1_65()
  L2_66 = AI_RETREAT
  if L1_65 == L2_66 then
    L1_65 = TurnOffAutoAttack
    L2_66 = STOPREASON_MOVING
    L1_65(L2_66)
    return
  end
  L1_65 = 250
  L2_66 = GetMyLeashedPos
  L2_66 = L2_66()
  L3_67 = GetTarget
  L3_67 = L3_67()
  L4_68 = nil
  if L3_67 ~= nil then
    L4_68 = FindNearestAggressor(L2_66, L3_67, L1_65)
  else
    L4_68 = FindNearestAggressor(L2_66, nil, L1_65)
  end
  if L4_68 ~= nil then
    AttackTarget(L4_68)
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
  if GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
    ResetAndStartTimer("TimerFrustrationSearch")
    StartTimer("TimerAttack")
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
