local L0_0
L0_0 = 500
FEAR_WANDER_DISTANCE = L0_0
L0_0 = 2000
FLEE_RUN_DISTANCE = L0_0
L0_0 = 500
ATTACKMOVE_CLICK_TARGET_DISTANCE = L0_0
L0_0 = 5000
ATTACKMOVE_CLICK_TARGET_RANGE_ADDITION = L0_0
L0_0 = 100
ATTACKMOVE_CLICK_TARGET_FAR_RANGE_CLICK_TOLERANCE = L0_0
L0_0 = {
  "kHold",
  "kMoveTo",
  "kAttackTo",
  "kTempCastSpell",
  "kPetHardAttack",
  "kPetHardMove",
  "kAttackMove",
  "kTaunt",
  "kPetHardReturn",
  "kStop",
  "kPetHardStop",
  "kUse",
  "kAttackTerrainSustained",
  "kAttackTerrainOnce",
  "kCastSpell",
  "kUnitClickTrigger"
}
L0_0[0] = "kNone"
ORDER_STRINGS = L0_0
L0_0 = {
  "AI_SOFTATTACK",
  "AI_HARDATTACK",
  "AI_ATTACKMOVESTATE",
  "AI_STANDING",
  "AI_MOVE",
  "AI_GUARD",
  "AI_ATTACK",
  "AI_RETREAT",
  "AI_HARDIDLE",
  "AI_HARDIDLE_ATTACKING",
  "AI_TAUNTED",
  "AI_ATTACKMOVE_ATTACKING",
  "AI_FEARED",
  "AI_CHARMED",
  "AI_FLEEING",
  "AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION",
  "AI_HALTED",
  "AI_SIEGEATTACK"
}
L0_0[0] = "AI_IDLE"
STATE_STRINGS = L0_0
L0_0 = false
ClickCloseToTargetAttackMove = L0_0
function L0_0()
  checkAttackTimer = 1.6 / (GetPercentAttackSpeedMod() + 1)
  if checkAttackTimer < 0.5 then
    checkAttackTimer = 0.5
  end
  return checkAttackTimer
end
CalculateAttackTimer = L0_0
function L0_0()
  ClearTargetPosInPos()
  SetState(AI_IDLE)
  InitTimer("TimerDistanceScan", 0.2, true)
  InitTimer("TimerCheckAttack", 0.2, true)
  InitTimer("TimerFeared", 1, true)
  InitTimer("TimerFlee", 0.5, true)
  InitTimer("TimerCharmed", 0.2, true)
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  StopTimer("TimerCharmed")
  ClickCloseToTargetAttackMove = GetIsGameFeatureEnabled("ClickCloseToTargetAttackMove")
  return false
end
OnInit = L0_0
function L0_0(A0_1, A1_2, A2_3)
  local L3_4, L4_5
  L3_4 = GetState
  L3_4 = L3_4()
  L4_5 = AI_HALTED
  if L3_4 == L4_5 then
    L4_5 = false
    return L4_5
  end
  L4_5 = AI_TAUNTED
  if L3_4 ~= L4_5 then
    L4_5 = AI_FEARED
    if L3_4 ~= L4_5 then
      L4_5 = AI_FLEEING
      if L3_4 ~= L4_5 then
        L4_5 = AI_CHARMED
      end
    end
  elseif L3_4 == L4_5 then
    L4_5 = false
    return L4_5
  end
  L4_5 = ORDER_TAUNT
  if A0_1 == L4_5 then
    L4_5 = SetStateAndCloseToTarget
    L4_5(AI_HARDATTACK, A1_2)
    L4_5 = ClearTargetPosInPos
    L4_5()
    L4_5 = true
    return L4_5
  end
  L4_5 = ORDER_ATTACKTO
  if A0_1 == L4_5 then
    L4_5 = SetStateAndCloseToTarget
    L4_5(AI_HARDATTACK, A1_2)
    L4_5 = AssignTargetPosInPos
    L4_5()
    L4_5 = TargetInAttackRange
    L4_5 = L4_5()
    if L4_5 == true then
      L4_5 = TurnOnAutoAttack
      L4_5(GetTarget())
    else
      L4_5 = TurnOffAutoAttack
      L4_5(STOPREASON_MOVING)
    end
    L4_5 = true
    return L4_5
  end
  L4_5 = ORDER_ATTACKTERRAIN_SUSTAINED
  if A0_1 ~= L4_5 then
    L4_5 = ORDER_ATTACKTERRAIN_ONCE
  elseif A0_1 == L4_5 then
    L4_5 = ORDER_ATTACKTERRAIN_SUSTAINED
    if A0_1 == L4_5 then
    else
      L4_5 = ORDER_ATTACKTERRAIN_ONCE
      if A0_1 == L4_5 then
      end
    end
    L4_5 = TargetPositionInAttackRange
    L4_5 = L4_5(A2_3)
    if L4_5 then
      L4_5 = ORDER_ATTACKTERRAIN_ONCE
      L4_5 = A0_1 == L4_5
      TurnOnAutoAttackTerrain(A2_3, L4_5)
    else
      L4_5 = TargetPositionInAttackRange
      L4_5 = L4_5(A2_3)
      if not L4_5 then
        L4_5 = SetStateAndMove
        L4_5(AI_HARDATTACK, A2_3)
        L4_5 = AssignTargetPosInPos
        L4_5()
        L4_5 = TurnOffAutoAttack
        L4_5(STOPREASON_MOVING)
      end
    end
    L4_5 = true
    return L4_5
  end
  L4_5 = ORDER_ATTACKMOVE
  if A0_1 == L4_5 then
    L4_5 = ClickCloseToTargetAttackMove
    if L4_5 then
      L4_5 = IsTargetedAttackMoveEnabled
      L4_5 = L4_5()
      if L4_5 then
        L4_5 = FindTargetNearestPosition
        L4_5 = L4_5(A2_3, ATTACKMOVE_CLICK_TARGET_DISTANCE)
        newTarget = L4_5
        L4_5 = newTarget
        if L4_5 ~= nil then
          L4_5 = GetPos
          L4_5 = L4_5(newTarget)
          if GetAttackRange() + ATTACKMOVE_CLICK_TARGET_RANGE_ADDITION < DistanceBetweenObjectBounds(me, newTarget) and IsDistanceBetweenObjectBoundAndPointLessThan(newTarget, A2_3, ATTACKMOVE_CLICK_TARGET_FAR_RANGE_CLICK_TOLERANCE) == false then
            newTarget = nil
          end
        end
      end
    else
      L4_5 = nil
      newTarget = L4_5
    end
    L4_5 = newTarget
    if L4_5 ~= nil then
      L4_5 = IsValidEnemy
      L4_5 = L4_5(newTarget)
    elseif not L4_5 then
      L4_5 = FindTargetInAcR
      L4_5 = L4_5()
      newTarget = L4_5
    end
    L4_5 = newTarget
    if L4_5 ~= nil then
      L4_5 = SetStateAndCloseToTarget
      L4_5(AI_SOFTATTACK, newTarget)
      L4_5 = true
      return L4_5
    end
    L4_5 = SetStateAndMoveInPos
    L4_5(AI_ATTACKMOVESTATE)
    L4_5 = AssignTargetPosInPos
    L4_5()
    L4_5 = true
    return L4_5
  end
  L4_5 = ORDER_MOVETO
  if A0_1 == L4_5 then
    L4_5 = SetStateAndMoveInPos
    L4_5(AI_MOVE)
    L4_5 = AssignTargetPosInPos
    L4_5()
    L4_5 = true
    return L4_5
  end
  L4_5 = InitTimer
  L4_5("TimerCheckAttackOnce", 0.001, false)
  L4_5 = false
  return L4_5
end
OnOrder = L0_0
function L0_0(A0_6, A1_7)
  if GetState() == AI_HALTED then
    return
  end
  if AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION ~= GetState() then
    if A0_6 == LOST_VISIBILITY and GetState() ~= AI_SOFTATTACK and A1_7 ~= nil then
      SetStateAndCloseToTarget(AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION, A1_7)
    else
      TimerCheckAttack()
    end
  end
end
OnTargetLost = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
  end
end
OnTauntBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_SOFTATTACK, tauntTarget)
  else
    NetSetState(AI_IDLE)
    TimerDistanceScan()
    TimerCheckAttack()
  end
end
OnTauntEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  TurnOffAutoAttack(STOPREASON_MOVING)
  ResetAndStartTimer("TimerFeared")
end
OnFearBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFeared")
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
OnFearEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
end
TimerFeared = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  fleePoint = MakeFleePoint()
  SetStateAndMove(AI_FLEEING, fleePoint)
  TurnOffAutoAttack(STOPREASON_MOVING)
  ResetAndStartTimer("TimerFlee")
end
OnFleeBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFlee")
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
OnFleeEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  fleePoint = MakeFleePoint()
  SetStateAndMove(AI_FLEEING, fleePoint)
end
TimerFlee = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
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
    SetStateAndCloseToTarget(AI_SOFTATTACK, charmTarget)
  else
    NetSetState(AI_IDLE)
    TimerDistanceScan()
    TimerCheckAttack()
  end
end
OnCharmEnd = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
  end
end
TimerCharmed = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  ClearTargetPosInPos()
end
OnStopMove = L0_0
L0_0 = nil
function TimerCheckAttackOnce()
  TimerCheckAttack()
end
function TimerCheckAttack()
  local L0_8, L1_9, L2_10, L3_11
  L0_8 = GetState
  L0_8 = L0_8()
  L1_9 = _UPVALUE0_
  if L0_8 ~= L1_9 then
    _UPVALUE0_ = L0_8
  end
  L1_9 = AI_HALTED
  if L0_8 == L1_9 then
    return
  end
  L1_9 = GetOrder
  L1_9 = L1_9()
  L2_10 = GetOrderPosition
  L2_10 = L2_10()
  L3_11 = IsLocationAutoAttacker
  L3_11 = L3_11()
  if L3_11 then
    L3_11 = ORDER_ATTACKTERRAIN_ONCE
    if L1_9 ~= L3_11 then
      L3_11 = ORDER_ATTACKTERRAIN_SUSTAINED
    elseif L1_9 == L3_11 then
      L3_11 = ORDER_ATTACKTERRAIN_ONCE
      L3_11 = L1_9 == L3_11
      if IsMoving() and TargetPositionInAttackRange(L2_10) then
        TurnOnAutoAttackTerrain(L2_10, L3_11)
        return
      elseif not TargetPositionInAttackRange(L2_10) then
        SetStateAndMove(AI_HARDATTACK, L2_10)
        AssignTargetPosInPos()
        TurnOffAutoAttack(STOPREASON_MOVING)
        return
      end
    end
  else
    L3_11 = AI_SOFTATTACK
    if L0_8 ~= L3_11 then
      L3_11 = AI_HARDATTACK
      if L0_8 ~= L3_11 then
        L3_11 = AI_TAUNTED
      end
    else
      if L0_8 == L3_11 then
        L3_11 = IsTargetLost
        L3_11 = L3_11()
        if L3_11 ~= true then
          L3_11 = GetTarget
          L3_11 = L3_11()
        elseif L3_11 == nil then
          L3_11 = LastAutoAttackFinished
          L3_11 = L3_11()
          if L3_11 == false then
            L3_11 = InitTimer
            L3_11("TimerCheckAttack", 0.1, true)
            return
          end
          L3_11 = IsAutoAcquireTargetEnabled
          L3_11 = L3_11()
          if L3_11 == false then
            L3_11 = AI_SOFTATTACK
            if L0_8 ~= L3_11 then
              return
            end
          end
          L3_11 = FindTargetInAcR
          L3_11 = L3_11()
          newTarget = L3_11
          L3_11 = newTarget
          if L3_11 ~= nil then
            L3_11 = CanSeeMe
            L3_11 = L3_11(newTarget)
            if L3_11 then
              L3_11 = SetStateAndCloseToTarget
              L3_11(AI_SOFTATTACK, newTarget)
            end
            L3_11 = true
            return L3_11
          else
            L3_11 = NetSetState
            L3_11(AI_STANDING)
            return
          end
          return
        end
        L3_11 = TargetInAttackRange
        L3_11 = L3_11()
        if L3_11 == true then
          L3_11 = TurnOnAutoAttack
          L3_11(GetTarget())
          return
        end
        L3_11 = TargetInCancelAttackRange
        L3_11 = L3_11()
        if L3_11 == false then
          L3_11 = TurnOffAutoAttack
          L3_11(STOPREASON_MOVING)
        end
    end
    else
      L3_11 = IsMoving
      L3_11 = L3_11()
      if L3_11 then
        L3_11 = false
        return L3_11
      end
    end
  end
  L3_11 = InitTimer
  L3_11("TimerCheckAttack", 0.1, true)
end
function TimerDistanceScan()
  local L0_12, L1_13
  L0_12 = GetState
  L0_12 = L0_12()
  L1_13 = AI_HALTED
  if L0_12 ~= L1_13 then
    L1_13 = AI_HARDIDLE
  elseif L0_12 == L1_13 then
    return
  end
  L1_13 = AI_STANDING
  if L0_12 ~= L1_13 then
    L1_13 = AI_IDLE
  elseif L0_12 == L1_13 then
    L1_13 = IsAutoAcquireTargetEnabled
    L1_13 = L1_13()
    if L1_13 then
      L1_13 = GetTargetOrFindTargetInAcR
      L1_13 = L1_13()
      if L1_13 ~= nil and CanSeeMe(L1_13) then
        SetStateAndCloseToTarget(AI_SOFTATTACK, L1_13)
        return true
      end
    end
  end
  L1_13 = AI_MOVE
  if L0_12 == L1_13 then
    L1_13 = IsMovementStopped
    L1_13 = L1_13()
    if L1_13 then
      L1_13 = IsAutoAcquireTargetEnabled
      L1_13 = L1_13()
      if L1_13 then
        L1_13 = GetTargetOrFindTargetInAcR
        L1_13 = L1_13()
        if L1_13 ~= nil and CanSeeMe(L1_13) then
          SetStateAndCloseToTarget(AI_SOFTATTACK, L1_13)
          TurnOnAutoAttack(L1_13)
          return true
        end
        NetSetState(AI_IDLE)
        return false
      end
    end
  end
  L1_13 = AI_ATTACKMOVESTATE
  if L0_12 == L1_13 then
    L1_13 = GetTargetOrFindTargetInAcR
    L1_13 = L1_13()
    if L1_13 ~= nil then
      SetStateAndCloseToTarget(AI_SOFTATTACK, L1_13)
      return true
    elseif DistanceBetweenObjectAndTargetPosSq(me) <= 100 then
      NetSetState(AI_STANDING)
      ClearTargetPosInPos()
      return true
    end
  end
  L1_13 = AI_ATTACK_GOING_TO_LAST_KNOWN_LOCATION
  if L0_12 == L1_13 then
    L1_13 = GetLostTargetIfVisible
    L1_13 = L1_13()
    if L1_13 ~= nil then
      SetStateAndCloseToTarget(AI_HARDATTACK, L1_13)
    end
  end
end
function OnAICommand(A0_14, A1_15)
  if GetState() == AI_HALTED then
    return
  end
end
function OnReachedDestinationForGoingToLastLocation()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
function HaltAI()
  StopTimer("TimerDistanceScan")
  StopTimer("TimerCheckAttack")
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  StopTimer("TimerCharmed")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
