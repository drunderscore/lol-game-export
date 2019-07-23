local L0_0
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
  "AI_SIEGEATTACK",
  "AI_LAST_NONPET_AI_STATE"
}
L0_0[0] = "AI_IDLE"
DEBUG_MINION_STATE_TABLE = L0_0
function L0_0()
  SetState(AI_IDLE)
  InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
  InitTimer("TimerMoveForward", 0, true)
  InitTimer("TimerAntiKite", 4, false)
  InitTimer("TimerFeared", 1, true)
  InitTimer("TimerFlee", 0.5, true)
  InitTimer("TimerCharmed", 0.2, true)
  StopTimer("TimerAntiKite")
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  StopTimer("TimerCharmed")
  OnPostInit()
  return false
end
OnInit = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING or GetState() == AI_TAUNTED then
    FindTargetOrMove()
  end
end
OnTargetLost = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
OnPathToTargetBlocked = L0_0
function L0_0(A0_1, A1_2)
  if GetState() == AI_HALTED then
    return false
  end
  if A1_2 and (GetState() == AI_ATTACKMOVESTATE or GetState() == AI_ATTACKMOVE_ATTACKING) then
    SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DEFAULT)
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, A1_2)
    ResetAndStartTimer("TimerAntiKite")
    return true
  end
  return false
end
OnCallForHelp = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFeared")
end
OnFearBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFeared")
  FindTargetOrMove()
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
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFlee")
end
OnFleeBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFlee")
  FindTargetOrMove()
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
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, charmTarget)
  else
    FindTargetOrMove()
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
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
OnCanMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
OnCanAttack = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING and IsMoving() then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
TimerAntiKite = L0_0
function L0_0(A0_3)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() ~= AI_TAUNTED and GetState() ~= AI_FEARED and GetState() ~= AI_FLEEING then
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, A0_3)
    return false
  end
  return true
end
OnCollisionEnemy = L0_0
function L0_0(A0_4)
  local L1_5, L2_6
  L1_5 = GetState
  L1_5 = L1_5()
  L2_6 = AI_HALTED
  if L1_5 == L2_6 then
    return
  end
  L2_6 = AI_TAUNTED
  if L1_5 ~= L2_6 then
    L2_6 = AI_FEARED
    if L1_5 ~= L2_6 then
      L2_6 = AI_FLEEING
      if L1_5 ~= L2_6 then
        L2_6 = FindTargetInAcR
        L2_6 = L2_6()
        if L2_6 ~= nil then
          SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_6)
        end
        return false
      end
    end
  end
  L2_6 = true
  return L2_6
end
OnCollisionOther = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
OnReachedDestinationForGoingToLastLocation = L0_0
function L0_0()
  StopTimer("TimerFindEnemies")
  StopTimer("TimerMoveForward")
  StopTimer("TimerAntiKite")
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  StopTimer("TimerCharmed")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
