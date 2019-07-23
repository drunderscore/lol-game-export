local L0_0
L0_0 = 2500
MAX_ENGAGE_DISTANCE = L0_0
L0_0 = 500
FEAR_WANDER_DISTANCE = L0_0
L0_0 = 0.25
DELAY_FIND_ENEMIES = L0_0
L0_0 = 1
AI_TARGET_HEROES = L0_0
L0_0 = 2
AI_TARGET_MINIONS = L0_0
L0_0 = 4
AI_TARGET_TURRETS = L0_0
L0_0 = 8
AI_TARGET_DAMPENER = L0_0
L0_0 = 16
AI_TARGET_HQ = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    StopTimer("TimerAntiKite")
  end
end
OnTauntBegin = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, tauntTarget)
    ResetAndStartTimer("TimerAntiKite")
  else
    FindTargetOrMove()
  end
end
OnTauntEnd = L0_0
function L0_0()
  local L0_1, L1_2
  L0_1 = GetState
  L0_1 = L0_1()
  L1_2 = AI_HALTED
  if L0_1 == L1_2 then
    return
  end
  L1_2 = AI_ATTACKMOVESTATE
  if L0_1 == L1_2 then
    L1_2 = FindTargetInAcRWithFilter
    L1_2 = L1_2(AI_TARGET_MINIONS)
    if L1_2 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_2)
    ResetAndStartTimer("TimerAntiKite")
  else
    L1_2 = AI_TAUNTED
    if L0_1 == L1_2 then
      L1_2 = GetTauntTarget
      L1_2 = L1_2()
      if L1_2 ~= nil then
        L1_2 = SetStateAndCloseToTarget
        L1_2(AI_TAUNTED, GetTauntTarget())
      end
    end
  end
  L1_2 = AI_ATTACKMOVE_ATTACKING
  if L0_1 ~= L1_2 then
    L1_2 = AI_TAUNTED
  elseif L0_1 == L1_2 then
    L1_2 = GetTarget
    L1_2 = L1_2()
    if L1_2 ~= nil then
      L1_2 = DistanceBetweenMeAndObject
      L1_2 = L1_2(GetTarget())
    elseif L1_2 > MAX_ENGAGE_DISTANCE then
      L1_2 = FindTargetOrMove
      L1_2()
    end
    L1_2 = TargetInAttackRange
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = AI_TAUNTED
      if L0_1 ~= L1_2 then
        L1_2 = ResetAndStartTimer
        L1_2("TimerAntiKite")
      end
      L1_2 = TurnOnAutoAttack
      L1_2(GetTarget())
    else
      L1_2 = TargetInCancelAttackRange
      L1_2 = L1_2()
      if L1_2 == false then
        L1_2 = TurnOffAutoAttack
        L1_2(STOPREASON_MOVING)
        L1_2 = 0
        LastAttackScan = L1_2
      end
    end
  end
end
TimerFindEnemies = L0_0
function L0_0()
  local L0_3, L1_4
  L0_3 = GetState
  L0_3 = L0_3()
  L1_4 = AI_HALTED
  if L0_3 == L1_4 then
    return
  end
  L1_4 = FindTargetInAcRWithFilter
  L1_4 = L1_4(AI_TARGET_MINIONS)
  if L1_4 then
    if LastAutoAttackFinished() == false then
      InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_4)
    ResetAndStartTimer("TimerAntiKite")
  else
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    StopTimer("TimerAntiKite")
    LastAttackScan = 0
  end
end
FindTargetOrMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_IDLE then
    FindTargetOrMove()
  elseif GetState() == AI_ATTACKMOVESTATE then
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    LastAttackScan = 0
  end
end
TimerMoveForward = L0_0
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
  StopTimer("TimerAntiKite")
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
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
function L0_0(A0_5, A1_6)
  if GetState() == AI_HALTED then
    return
  end
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
function L0_0(A0_7)
  if GetState() == AI_HALTED then
    return
  end
  return true
end
OnCollisionEnemy = L0_0
function L0_0(A0_8)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() ~= AI_TAUNTED and GetState() ~= AI_FEARED and GetState() ~= AI_FLEEING then
    FindTargetOrMove()
    return false
  end
  return true
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
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
