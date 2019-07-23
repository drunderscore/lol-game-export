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
      L6_9 = GetCampLeashPos
      L6_9 = L6_9()
      if WalkDistanceBetweenObjectCenterAndPoint(A1_4, L6_9) <= GetCampLeashRadius() then
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
    FindNewTarget()
  end
  return true
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
  L2_19 = GetCampLeashPos
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
function FindNearestAggressor(A0_20, A1_21)
  local L2_22, L3_23, L4_24, L5_25
  L2_22 = MONSTER_ANY_INCLUDED_TAG
  L3_23 = MONSTER_NONEPIC_EXCLUDED_TAG
  L4_24 = HasUnitTag
  L5_25 = GetThis
  L5_25 = L5_25()
  L4_24 = L4_24(L5_25, {
    UnitTagIndicies.Monster_Epic
  })
  if L4_24 then
    L3_23 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L4_24 = GetCampLeashRadius
  L4_24 = L4_24()
  L4_24 = L4_24 * 1.1
  L5_25 = FindTargetWithFilter
  L5_25 = L5_25(AGGRESSION_FIRST_SWEEP_RANGE, L2_22, L3_23)
  if L5_25 == nil or not TargetWithinWalkBounds(L5_25, L4_24) then
    L5_25 = FindTargetWithFilter(GetCampLeashRadius() + OUTER_RANGE_BOUND, L2_22, L3_23)
  end
  if L5_25 == nil or not TargetWithinWalkBounds(L5_25, L4_24) then
    L5_25 = FindTargetNearPositionWithFilter(A0_20, GetCampLeashRadius(), L2_22, L3_23)
    if L5_25 == nil or not TargetWithinWalkBounds(L5_25, L4_24) then
      L5_25 = A1_21
    end
  end
  if L5_25 == nil or not TargetWithinWalkBounds(L5_25, L4_24) then
    L5_25 = nil
    L5_25 = FindTargetWithFilter(GetCampLeashRadius() + OUTER_RANGE_BOUND, L2_22, L3_23)
    return L5_25
  else
    return L5_25
  end
end
function OnTakeDamage(A0_26)
end
function RespondToAggression(A0_27)
  local L1_28, L2_29, L3_30, L4_31, L5_32, L6_33, L7_34, L8_35, L9_36, L10_37, L11_38, L12_39
  L1_28 = IsDead
  L1_28 = L1_28()
  if L1_28 then
    return
  end
  L1_28 = MONSTER_ANY_INCLUDED_TAG
  L2_29 = MONSTER_NONEPIC_EXCLUDED_TAG
  L3_30 = HasUnitTag
  L4_31 = GetThis
  L4_31 = L4_31()
  L5_32 = {L6_33}
  L6_33 = UnitTagIndicies
  L6_33 = L6_33.Monster_Epic
  L3_30 = L3_30(L4_31, L5_32)
  if L3_30 then
    L2_29 = MONSTER_EPIC_EXCLUDED_TAG
  end
  L3_30 = GetMyPos
  L3_30 = L3_30()
  L4_31 = GetState
  L4_31 = L4_31()
  L5_32 = GetRoamState
  L5_32 = L5_32()
  L6_33 = INACTIVE
  if L5_32 == L6_33 then
    L5_32 = AI_RETREAT
    if L4_31 ~= L5_32 then
      L5_32 = AI_TAUNTED
      if L4_31 ~= L5_32 then
        L5_32 = AI_FEARED
        if L4_31 ~= L5_32 then
          L5_32 = AI_FLEEING
          if L4_31 ~= L5_32 then
            L5_32 = GetMaxHP
            L5_32 = L5_32()
            L6_33 = GetHP
            L6_33 = L6_33()
            L7_34 = GetLeashCounter
            L7_34 = L7_34()
            L8_35 = HasUnitTag
            L9_36 = A0_27
            L10_37 = L1_28
            L8_35 = L8_35(L9_36, L10_37)
            if L8_35 == true then
              L8_35 = HasUnitTag
              L9_36 = A0_27
              L10_37 = L2_29
              L8_35 = L8_35(L9_36, L10_37)
              if L8_35 == false then
                L8_35 = LEASH_COUNTER_THRESHOLD
                if L7_34 < L8_35 then
                  L8_35 = AttackTarget
                  L9_36 = A0_27
                  L8_35(L9_36)
                end
              end
            else
              L8_35 = OutOfCombatRegen
              L9_36 = L8_35
              L8_35 = L8_35.Start
              L8_35(L9_36)
            end
          end
        end
      end
    end
  else
    L5_32 = GetRoamState
    L5_32 = L5_32()
    L6_33 = HOSTILE
    if L5_32 == L6_33 then
      L5_32 = AI_ATTACK
      if L4_31 == L5_32 then
        L5_32 = IsValidEnemyWithFilter
        L6_33 = A0_27
        L7_34 = L1_28
        L8_35 = L2_29
        L5_32 = L5_32(L6_33, L7_34, L8_35)
        if L5_32 then
          L5_32 = GetTarget
          L5_32 = L5_32()
          target = L5_32
          L5_32 = target
          if L5_32 ~= nil then
            L5_32 = target
            if L5_32 ~= A0_27 then
              L5_32 = GetMyPos
              L5_32 = L5_32()
              L6_33 = OutOfCombatRegen
              L7_34 = L6_33
              L6_33 = L6_33.Stop
              L6_33(L7_34)
              L6_33 = DistanceBetweenObjectCenterAndPoint
              L7_34 = target
              L8_35 = L5_32
              L6_33 = L6_33(L7_34, L8_35)
              L7_34 = GetCampLeashPos
              L7_34 = L7_34()
              L8_35 = WalkDistanceBetweenObjectCenterAndPoint
              L9_36 = target
              L10_37 = L7_34
              L8_35 = L8_35(L9_36, L10_37)
              L9_36 = GetCampLeashRadius
              L9_36 = L9_36()
              L10_37 = DistanceBetweenObjectCenterAndPoint
              L11_38 = A0_27
              L12_39 = L5_32
              L10_37 = L10_37(L11_38, L12_39)
              L11_38 = WalkDistanceBetweenObjectCenterAndPoint
              L12_39 = A0_27
              L11_38 = L11_38(L12_39, L7_34)
              L12_39 = GetCampLeashRadius
              L12_39 = L12_39()
              L12_39 = L12_39 * 1.25
              if L6_33 > L10_37 + CURRENT_TARGET_TO_ATTACKER_SWITCH_RANGE then
                if TargetWithinWalkBounds(A0_27, L12_39) then
                  AttackTarget(A0_27)
                end
              elseif not TargetWithinWalkBounds(target, L12_39) then
                AttackTarget(A0_27)
              end
            end
          else
            L5_32 = target
            if L5_32 ~= nil then
              L5_32 = AI_ATTACK
              if L4_31 == L5_32 then
                L5_32 = IsValidEnemyWithFilter
                L6_33 = A0_27
                L7_34 = L1_28
                L8_35 = L2_29
                L5_32 = L5_32(L6_33, L7_34, L8_35)
                if L5_32 then
                  L5_32 = AttackTarget
                  L6_33 = A0_27
                  L5_32(L6_33)
                end
              end
            else
              L5_32 = IsValidEnemyWithFilter
              L6_33 = A0_27
              L7_34 = L1_28
              L8_35 = L2_29
              L5_32 = L5_32(L6_33, L7_34, L8_35)
              if L5_32 then
                L5_32 = AttackTarget
                L6_33 = A0_27
                L5_32(L6_33)
              end
            end
          end
        end
      end
    end
  end
end
function TimerFrustrationSearch()
  local L0_40, L1_41, L2_42, L3_43, L4_44, L5_45, L6_46, L7_47, L8_48, L9_49, L10_50
  L0_40 = GetState
  L0_40 = L0_40()
  L1_41 = GetRoamState
  L1_41 = L1_41()
  L2_42 = GetCharVar
  L3_43 = "WillBeFrustrated"
  L2_42 = L2_42(L3_43)
  L3_43 = INACTIVE
  if L1_41 ~= L3_43 then
    L3_43 = RUN_IN_FEAR
    if L1_41 ~= L3_43 then
      L3_43 = AI_HALTED
      if L0_40 ~= L3_43 then
        L3_43 = GetCharVar
        L4_44 = "inStasis"
        L3_43 = L3_43(L4_44)
      end
    end
  elseif L3_43 > 1 then
    return
  end
  L3_43 = SetTimerDelay
  L4_44 = "TimerFrustrationSearch"
  L5_45 = DEFAULT_FRUSTRATION_SEARCH_TIME
  L3_43(L4_44, L5_45)
  L3_43 = GetLeashCounter
  L3_43 = L3_43()
  L4_44 = false
  if L2_42 >= 1 then
    L4_44 = true
    L5_45 = SetCharVar
    L6_46 = "WillBeFrustrated"
    L7_47 = 0
    L5_45(L6_46, L7_47)
  end
  L5_45 = GetTarget
  L5_45 = L5_45()
  L6_46 = GetCampLeashRadius
  L6_46 = L6_46()
  L7_47 = GetMyLeashedPos
  L7_47 = L7_47()
  L8_48 = GetCampLeashPos
  L8_48 = L8_48()
  L9_49 = GetDistToLeashedPos
  L9_49 = L9_49()
  L10_50 = L6_46 + 1
  if L5_45 ~= nil then
    L10_50 = WalkDistanceBetweenObjectCenterAndPoint(L5_45, L8_48)
  else
    FindNewTarget()
    L5_45 = GetTarget()
    if L5_45 == nil then
      L4_44 = true
    end
  end
  if L9_49 > L6_46 - LEASH_PROTECTION_BARRIER and L6_46 > L9_49 and L6_46 < L10_50 and L0_40 ~= AI_RETREAT and GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
    FindNewTarget()
    L5_45 = GetTarget()
  end
  if L10_50 > L6_46 + OUTER_RANGE_BOUND and L0_40 ~= AI_RETREAT then
    L4_44 = true
  end
  if L9_49 > L6_46 + OUTER_RANGE_BOUND then
    L4_44 = true
  end
  if L4_44 == true then
    IncreaseFrustration(1)
  end
end
function TimerReturningHome()
  local L0_51, L1_52, L2_53, L3_54, L4_55
  L0_51 = GetState
  L0_51 = L0_51()
  L1_52 = GetRoamState
  L1_52 = L1_52()
  L2_53 = INACTIVE
  if L1_52 ~= L2_53 then
    L2_53 = RUN_IN_FEAR
    if L1_52 ~= L2_53 then
      L2_53 = AI_HALTED
      if L0_51 ~= L2_53 then
        L2_53 = GetCharVar
        L3_54 = "inStasis"
        L2_53 = L2_53(L3_54)
      end
    end
  elseif L2_53 > 1 then
    return
  end
  L2_53 = GetMaxHP
  L2_53 = L2_53()
  L3_54 = GetHP
  L3_54 = L3_54()
  L4_55 = GetDistToRetreat
  L4_55 = L4_55()
  SetCharVar("DistanceToHome", L4_55)
  SetGhosted(true)
  if L0_51 == AI_RETREAT and IsMovementStopped() == true and L4_55 < 25 then
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
  elseif L4_55 >= 25 then
    SetStateAndMoveToLeashedPos(AI_RETREAT)
  end
end
function TimerAttack()
  local L0_56, L1_57
  L0_56 = GetState
  L0_56 = L0_56()
  L1_57 = AI_HALTED
  if L0_56 == L1_57 then
    return
  end
  L1_57 = GetCharVar
  L1_57 = L1_57("inStasis")
  if L1_57 > 1 then
    return
  end
  L1_57 = GetRoamState
  L1_57 = L1_57()
  if L1_57 ~= INACTIVE then
    L1_57 = GetRoamState
    L1_57 = L1_57()
    if L1_57 ~= RUN_IN_FEAR then
      L1_57 = AI_RETREAT
    end
  elseif L0_56 == L1_57 then
    return
  end
  L1_57 = AI_ATTACK
  if L0_56 ~= L1_57 then
    L1_57 = AI_TAUNTED
  elseif L0_56 == L1_57 then
    L1_57 = StartTimer
    L1_57("TimerFrustrationSearch")
    L1_57 = GetTarget
    L1_57 = L1_57()
    if L1_57 ~= nil then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L1_57)
      elseif TargetInCancelAttackRange() == false then
        TurnOffAutoAttack(STOPREASON_MOVING)
      end
      if IsMovementStopped() == true then
        AttackTarget(L1_57)
      end
    elseif L0_56 == AI_ATTACK then
      FindNewTarget()
      L1_57 = GetTarget()
    end
  end
end
function AggressionSweep()
  local L0_58, L1_59, L2_60, L3_61, L4_62
  L0_58 = GetState
  L0_58 = L0_58()
  L1_59 = AI_HALTED
  if L0_58 == L1_59 then
    return
  end
  L1_59 = GetState
  L1_59 = L1_59()
  L2_60 = AI_RETREAT
  if L1_59 == L2_60 then
    L1_59 = TurnOffAutoAttack
    L2_60 = STOPREASON_MOVING
    L1_59(L2_60)
    return
  end
  L1_59 = 650
  L2_60 = GetMyLeashedPos
  L2_60 = L2_60()
  L3_61 = GetTarget
  L3_61 = L3_61()
  L4_62 = nil
  if L3_61 ~= nil then
    L4_62 = FindNearestAggressor(L2_60, L3_61)
  else
    L4_62 = FindNearestAggressor(L2_60, nil)
  end
  if L4_62 ~= nil then
    AttackTarget(L4_62)
  end
end
function FindNewTarget()
  local L0_63, L1_64, L2_65, L3_66, L4_67
  L0_63 = GetState
  L0_63 = L0_63()
  L1_64 = AI_HALTED
  if L0_63 == L1_64 then
    return
  end
  L1_64 = GetRoamState
  L1_64 = L1_64()
  L2_65 = INACTIVE
  if L1_64 ~= L2_65 then
    L1_64 = GetRoamState
    L1_64 = L1_64()
    L2_65 = RUN_IN_FEAR
    if L1_64 ~= L2_65 then
      L1_64 = GetState
      L1_64 = L1_64()
      L2_65 = AI_RETREAT
    end
  elseif L1_64 == L2_65 then
    L1_64 = TurnOffAutoAttack
    L2_65 = STOPREASON_MOVING
    L1_64(L2_65)
    return
  end
  L1_64 = GetCampLeashRadius
  L1_64 = L1_64()
  L2_65 = GetCampLeashPos
  L2_65 = L2_65()
  L3_66 = GetTarget
  L3_66 = L3_66()
  L4_67 = nil
  if L3_66 ~= nil then
    L4_67 = FindNearestAggressor(L2_65, L3_66)
  else
    L4_67 = FindNearestAggressor(L2_65, nil)
  end
  if L4_67 ~= nil then
    AttackTarget(L4_67)
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
