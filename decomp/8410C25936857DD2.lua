local L0_0, L1_1
L0_0 = 25000
FAR_MOVMEMENT_DISTANCE = L0_0
L0_0 = 2500
TELEPORT_DISTANCE = L0_0
L0_0 = 25000
FEAR_WANDER_DISTANCE = L0_0
function L0_0()
  NetSetState(AI_HALTED)
  InitTimer("TimerFeared", 1, true)
  InitTimer("TimerFlee", 0.5, true)
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  return false
end
OnInit = L0_0
function L0_0(A0_2, A1_3)
  owner = GetOwner()
  if owner == nil then
    Die(me)
    return false
  end
  if A0_2 == ORDER_ATTACKMOVE then
    SetStateAndMoveInPos(AI_PET_HARDMOVE)
    return true
  end
  if A0_2 == ORDER_HOLD then
    SetStateAndCloseToTarget(AI_PET_HARDMOVE, me)
    return true
  end
  return true
end
OnOrder = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_PET_MOVE or GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDRETURN or GetState() == AI_FEARED or GetState() == AI_FLEEING or GetState() == AI_PET_HARDSTOP then
    return true
  end
  NetSetState(AI_PET_IDLE)
  return true
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
    SetStateAndCloseToTarget(AI_PET_ATTACK, tauntTarget)
  else
    NetSetState(AI_PET_IDLE)
  end
end
OnTauntEnd = L0_0
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
  NetSetState(AI_PET_IDLE)
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
  NetSetState(AI_PET_IDLE)
  TimerFindEnemies()
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
  NetSetState(AI_PET_IDLE)
end
OnCanMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_PET_IDLE)
end
OnCanAttack = L0_0
function L0_0()
  StopTimer("TimerFeared")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
