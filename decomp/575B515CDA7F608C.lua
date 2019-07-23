local L0_0, L1_1
L0_0 = 2
RUN_IN_FEAR = L0_0
L0_0 = 0
HOSTILE = L0_0
L0_0 = 0
INACTIVE = L0_0
L0_0 = 850
LEASH_RADIUS = L0_0
L0_0 = 750
LEASH_PROTECTION_RADIUS = L0_0
L0_0 = 750
INNER_RELEASH_RADIUS = L0_0
L0_0 = 1150
RELEASH_RADIUS = L0_0
L0_0 = 500
FEAR_WANDER_DISTANCE = L0_0
L0_0 = 0.05
REGEN_PERCENT_PER_SECOND = L0_0
L0_0 = 9000
VERY_FAR_DISTANCE = L0_0
L0_0 = 10
LEASH_COUNTER_THRESHOLD = L0_0
function L0_0(A0_2)
  SetState(AI_ATTACK)
  SetMyLeashedPos()
  SetMyLeashedOrientation()
  InitTimer("TimerRetreat", 0.5, true)
  InitTimer("TimerAttack", 0, true)
  InitTimer("TimerFeared", 0.5, true)
  InitTimer("TimerRegen", 0.5, true)
  InitTimer("TimerTaunt", 0.5, true)
  InitTimer("TimerFlee", 0.5, true)
  InitTimer("TimerCharmed", 0.2, true)
  StopTimer("TimerFlee")
  StopTimer("TimerFeared")
  StopTimer("TimerRegen")
  StopTimer("TimerTaunt")
  StopTimer("TimerCharmed")
end
OnInit = L0_0
function L0_0()
  TimerRegen()
  SetStateAndMoveToLeashedPos(AI_RETREAT)
end
Retreat = L0_0
function L0_0()
  local L0_3, L1_4, L2_5, L3_6, L4_7
  L0_3 = GetState
  L0_3 = L0_3()
  L1_4 = AI_HALTED
  if L0_3 == L1_4 then
    return
  end
  L1_4 = GetMaxHP
  L1_4 = L1_4()
  L2_5 = REGEN_PERCENT_PER_SECOND
  L2_5 = L1_4 * L2_5
  L3_6 = GetHP
  L3_6 = L3_6()
  if L3_6 > 0 then
    L4_7 = L3_6 + L2_5
    SetHP(L4_7)
  end
end
TimerRegen = L0_0
function L0_0(A0_8, A1_9)
  if GetState() == AI_HALTED then
    return
  end
  if A0_8 == ORDER_MOVETO then
    return
  end
  if A0_8 == ORDER_ATTACKTO then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_ATTACK, A1_9)
    SetRoamState(HOSTILE)
    return true
  end
  Error("Unsupported Order")
  return false
end
OnOrder = L0_0
function L0_0(A0_10)
  local L1_11, L2_12, L3_13
  L1_11 = GetState
  L1_11 = L1_11()
  L2_12 = AI_HALTED
  if L1_11 == L2_12 then
    return
  end
  L2_12 = GetMyPos
  L2_12 = L2_12()
  L3_13 = FindTargetNearPosition
  L3_13 = L3_13(L2_12, LEASH_RADIUS)
  if L3_13 == nil then
    L3_13 = A0_10
    if A0_10 == nil then
      return
    end
  end
  if GetRoamState() == INACTIVE and L1_11 ~= AI_RETREAT and L1_11 ~= AI_TAUNTED and L1_11 ~= AI_FEARED and L1_11 ~= AI_FLEEING and L1_11 ~= AI_CHARMED then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_ATTACK, L3_13)
    SetRoamState(HOSTILE)
  elseif GetRoamState() == HOSTILE and L1_11 == AI_ATTACK then
    StopTimer("TimerRegen")
    target = GetTarget()
    if target ~= nil then
      if DistanceBetweenObjectCenterAndPoint(target, L2_12) > DistanceBetweenObjectCenterAndPoint(L3_13, L2_12) + 25 then
        SetStateAndCloseToTarget(AI_ATTACK, L3_13)
        SetRoamState(HOSTILE)
        SetLeashCounter(GetLeashCounter() + 1)
        if GetLeashCounter() > LEASH_COUNTER_THRESHOLD then
          Retreat()
        end
      elseif not IsHeroAI(L3_13) and DistanceBetweenObjectCenterAndPoint(target, L2_12) > DistanceBetweenObjectCenterAndPoint(L3_13, L2_12) + 25 then
        SetStateAndCloseToTarget(AI_ATTACK, L3_13)
        SetRoamState(HOSTILE)
        SetLeashCounter(GetLeashCounter() + 1)
        if GetLeashCounter() > LEASH_COUNTER_THRESHOLD then
          Retreat()
        end
      end
    end
  end
  return
end
OnTakeDamage = L0_0
function L0_0(A0_14, A1_15)
  local L2_16, L3_17, L4_18, L5_19
  L2_16 = GetState
  L2_16 = L2_16()
  L3_17 = AI_HALTED
  if L2_16 == L3_17 then
    return
  end
  L3_17 = GetMyPos
  L3_17 = L3_17()
  L4_18 = FindTargetNearPosition
  L5_19 = L3_17
  L4_18 = L4_18(L5_19, LEASH_RADIUS)
  if L4_18 == nil then
    L4_18 = A1_15
    if A1_15 == nil then
      return
    end
  end
  L5_19 = GetRoamState
  L5_19 = L5_19()
  if L5_19 == INACTIVE then
    L5_19 = AI_RETREAT
    if L2_16 ~= L5_19 then
      L5_19 = AI_TAUNTED
      if L2_16 ~= L5_19 then
        L5_19 = AI_FEARED
        if L2_16 ~= L5_19 then
          L5_19 = AI_FLEEING
          if L2_16 ~= L5_19 then
            L5_19 = StopTimer
            L5_19("TimerRegen")
            L5_19 = SetStateAndCloseToTarget
            L5_19(AI_ATTACK, L4_18)
            L5_19 = SetRoamState
            L5_19(HOSTILE)
          end
        end
      end
    end
  else
    L5_19 = GetRoamState
    L5_19 = L5_19()
    if L5_19 == HOSTILE then
      L5_19 = AI_ATTACK
      if L2_16 == L5_19 then
        L5_19 = GetTarget
        L5_19 = L5_19()
        target = L5_19
        L5_19 = GetMyPos
        L5_19 = L5_19()
        if target ~= nil then
          StopTimer("TimerRegen")
          if DistanceBetweenObjectCenterAndPoint(target, L5_19) > DistanceBetweenObjectCenterAndPoint(L4_18, L5_19) + 25 then
            SetStateAndCloseToTarget(AI_ATTACK, L4_18)
            SetRoamState(HOSTILE)
            SetLeashCounter(GetLeashCounter() + 1)
            if GetLeashCounter() > LEASH_COUNTER_THRESHOLD then
              Retreat()
            end
          elseif not IsHeroAI(L4_18) and DistanceBetweenObjectCenterAndPoint(target, L5_19) > DistanceBetweenObjectCenterAndPoint(L4_18, L5_19) + 25 then
            SetStateAndCloseToTarget(AI_ATTACK, L4_18)
            SetRoamState(HOSTILE)
            SetLeashCounter(GetLeashCounter() + 1)
            if GetLeashCounter() > LEASH_COUNTER_THRESHOLD then
              Retreat()
            end
          end
        end
      end
    end
  end
  L5_19 = GetState
  L5_19 = L5_19()
  if L5_19 == AI_RETREAT then
    L5_19 = GetMyLeashedPos
    L5_19 = L5_19()
    if DistanceBetweenObjectCenterAndPoint(L4_18, L5_19) <= LEASH_RADIUS and GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
      SetLeashCounter(GetLeashCounter() + 1)
      StopTimer("TimerRegen")
      SetStateAndCloseToTarget(AI_ATTACK, L4_18)
      SetRoamState(HOSTILE)
    elseif GetDistToLeashedPos() <= INNER_RELEASH_RADIUS and DistanceBetweenObjectCenterAndPoint(L4_18, L5_19) <= RELEASH_RADIUS and GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
      SetLeashCounter(GetLeashCounter() + 1)
      StopTimer("TimerRegen")
      SetStateAndCloseToTarget(AI_ATTACK, L4_18)
      SetRoamState(HOSTILE)
    end
  end
end
LeashedCallForHelp = L0_0
function L0_0(A0_20, A1_21)
  local L2_22, L3_23
  L2_22 = GetState
  L2_22 = L2_22()
  L3_23 = AI_HALTED
  if L2_22 == L3_23 then
    return
  end
  L3_23 = GetOwner
  L3_23 = L3_23(A1_21)
  if L3_23 == nil then
    L3_23 = GetGoldRedirectTarget(A1_21)
  end
  if L3_23 ~= nil then
    SetStateAndCloseToTarget(AI_ATTACK, L3_23)
  else
    FindNewTarget()
  end
end
OnTargetLost = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    SetRoamState(HOSTILE)
  end
end
OnTauntBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerTaunt")
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_ATTACK, tauntTarget)
    SetRoamState(HOSTILE)
  else
    NetSetState(AI_ATTACK)
    TimerRetreat()
    TimerAttack()
  end
end
OnTauntEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    SetRoamState(HOSTILE)
  end
end
TimerTaunt = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  SetRoamState(RUN_IN_FEAR)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFeared")
end
OnFearBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFeared")
  SetRoamState(HOSTILE)
  NetSetState(AI_ATTACK)
  TimerRetreat()
  TimerAttack()
end
OnFearEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetRoamState(RUN_IN_FEAR)
  SetStateAndMove(AI_FEARED, wanderPoint)
end
TimerFeared = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    StopTimer("TimerRegen")
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
    SetRoamState(HOSTILE)
  end
  TurnOffAutoAttack(STOPREASON_MOVING)
  ResetAndStartTimer("TimerCharmed")
end
OnCharmBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerCharmed")
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_ATTACK, charmTarget)
    SetRoamState(HOSTILE)
  else
    NetSetState(AI_ATTACK)
    TimerRetreat()
    TimerAttack()
  end
end
OnCharmEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    StopTimer("TimerRegen")
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
    SetRoamState(HOSTILE)
  end
end
TimerCharmed = L0_0
function L0_0()
  local L0_24, L1_25, L2_26, L3_27, L4_28
  L0_24 = GetRoamState
  L0_24 = L0_24()
  L1_25 = INACTIVE
  if L0_24 ~= L1_25 then
    L0_24 = GetRoamState
    L0_24 = L0_24()
    L1_25 = RUN_IN_FEAR
  elseif L0_24 == L1_25 then
    return
  end
  L0_24 = GetState
  L0_24 = L0_24()
  L1_25 = AI_HALTED
  if L0_24 == L1_25 then
    return
  end
  L1_25 = GetDistToLeashedPos
  L1_25 = L1_25()
  L2_26 = GetTarget
  L2_26 = L2_26()
  L3_27 = GetMyLeashedPos
  L3_27 = L3_27()
  L4_28 = LEASH_RADIUS
  L4_28 = L4_28 + 1
  if L2_26 ~= nil then
    L4_28 = DistanceBetweenObjectCenterAndPoint(L2_26, L3_27)
  end
  if L1_25 > LEASH_PROTECTION_RADIUS and L1_25 < LEASH_RADIUS and L4_28 > LEASH_RADIUS and L0_24 ~= AI_RETREAT and GetLeashCounter() < LEASH_COUNTER_THRESHOLD then
    FindNewTarget()
    L2_26 = GetTarget()
    if L2_26 ~= nil then
      SetLeashCounter(GetLeashCounter() + 1)
    end
  elseif L1_25 > LEASH_RADIUS and L0_24 ~= AI_RETREAT then
    isLeashing = true
    ResetAndStartTimer("TimerRegen")
    Retreat()
  end
  if L0_24 == AI_ATTACK and IsMovementStopped() == true and GetCanIMove() == true then
    FindNewTarget()
  end
  if L0_24 == AI_RETREAT and IsMovementStopped() == true then
    if GetDistToRetreat() < 100 then
      OnStoppedMoving()
    else
      Retreat()
    end
  end
end
TimerRetreat = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_RETREAT then
    SetLeashOrientation()
    SetLeashCounter(0)
    SetState(AI_ATTACK)
    SetRoamState(GetOriginalState())
  end
end
OnStoppedMoving = L0_0
function L0_0()
  local L0_29, L1_30
  L0_29 = GetState
  L0_29 = L0_29()
  L1_30 = AI_HALTED
  if L0_29 == L1_30 then
    return
  end
  L1_30 = GetRoamState
  L1_30 = L1_30()
  if L1_30 ~= INACTIVE then
    L1_30 = GetRoamState
    L1_30 = L1_30()
    if L1_30 ~= RUN_IN_FEAR then
      L1_30 = AI_RETREAT
    end
  elseif L0_29 == L1_30 then
    return
  end
  L1_30 = AI_ATTACK
  if L0_29 ~= L1_30 then
    L1_30 = AI_TAUNTED
  elseif L0_29 == L1_30 then
    L1_30 = GetTarget
    L1_30 = L1_30()
    if L1_30 ~= nil then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L1_30)
      elseif TargetInCancelAttackRange() == false then
        TurnOffAutoAttack(STOPREASON_MOVING)
      end
    else
      FindNewTarget()
    end
  end
end
TimerAttack = L0_0
function L0_0()
  local L0_31, L1_32, L2_33, L3_34
  L0_31 = GetState
  L0_31 = L0_31()
  L1_32 = AI_HALTED
  if L0_31 == L1_32 then
    return
  end
  L1_32 = GetRoamState
  L1_32 = L1_32()
  L2_33 = INACTIVE
  if L1_32 ~= L2_33 then
    L1_32 = GetRoamState
    L1_32 = L1_32()
    L2_33 = RUN_IN_FEAR
    if L1_32 ~= L2_33 then
      L1_32 = GetState
      L1_32 = L1_32()
      L2_33 = AI_RETREAT
    end
  elseif L1_32 == L2_33 then
    return
  end
  L1_32 = GetMyLeashedPos
  L1_32 = L1_32()
  L2_33 = FindTargetNearPosition
  L3_34 = L1_32
  L2_33 = L2_33(L3_34, LEASH_RADIUS)
  L3_34 = LEASH_RADIUS
  L3_34 = L3_34 + 1
  if L2_33 ~= nil then
    L3_34 = DistanceBetweenObjectCenterAndPoint(L2_33, L1_32)
  end
  if L2_33 ~= nil and L3_34 <= LEASH_RADIUS then
    StopTimer("TimerRegen")
    SetStateAndCloseToTarget(AI_ATTACK, L2_33)
  else
    ResetAndStartTimer("TimerRegen")
    Retreat()
  end
end
FindNewTarget = L0_0
function L0_0()
  StopTimer("TimerRetreat")
  StopTimer("TimerAttack")
  StopTimer("TimerFeared")
  StopTimer("TimerRegen")
  StopTimer("TimerCharmed")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  fleePoint = MakeFleePoint()
  SetStateAndMove(AI_FLEEING, fleePoint)
  SetRoamState(RUN_IN_FEAR)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFlee")
end
OnFleeBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFlee")
  SetRoamState(HOSTILE)
  NetSetState(AI_ATTACK)
  TimerRetreat()
  TimerAttack()
end
OnFleeEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  fleePoint = MakeFleePoint()
  SetRoamState(RUN_IN_FEAR)
  SetStateAndMove(AI_FLEEING, fleePoint)
end
TimerFlee = L0_0
