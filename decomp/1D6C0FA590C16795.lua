local L0_0, L1_1
L0_0 = 500
FEAR_WANDER_DISTANCE = L0_0
function L0_0()
  SetState(AI_PET_IDLE)
  InitTimer("TimerScanDistance", 0.15, true)
  InitTimer("TimerFindEnemies", 0.15, true)
  InitTimer("TimerFeared", 1, true)
  InitTimer("TimerFlee", 0.5, true)
  StopTimer("TimerFeared")
  StopTimer("TimerFlee")
  return false
end
OnInit = L0_0
function L0_0(A0_2, A1_3)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_TAUNTED or GetState() == AI_FEARED or GetState() == AI_FLEEING then
    return
  end
  if (GetState() == AI_PET_HARDATTACK or GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDIDLE or GetState() == AI_PET_HARDIDLE_ATTACKING or GetState() == AI_PET_HARDRETURN or GetState() == AI_PET_HARDSTOP) and (A0_2 == ORDER_ATTACKTO or A0_2 == ORDER_MOVETO or A0_2 == ORDER_ATTACKMOVE or A0_2 == ORDER_STOP) then
    return true
  end
  owner = GetOwner()
  if owner == nil then
    Die(me)
    return false
  end
  if A0_2 == ORDER_ATTACKTO then
    return true
  end
  if A0_2 == ORDER_MOVETO then
    return true
  end
  if A0_2 == ORDER_ATTACKMOVE then
    return true
  end
  if A0_2 == ORDER_STOP then
    return true
  end
  if A0_2 == ORDER_PETHARDSTOP then
    TurnOffAutoAttack(STOPREASON_TARGET_LOST)
    SetStateAndCloseToTarget(AI_PET_HARDSTOP, me)
    return true
  end
  if A0_2 == ORDER_PETHARDATTACK then
    if A1_3 == nil then
      return false
    end
    TurnOffAutoAttack(STOPREASON_TARGET_LOST)
    SetStateAndCloseToTarget(AI_PET_HARDATTACK, A1_3)
    return true
  end
  if A0_2 == ORDER_PETHARDMOVE then
    SetStateAndMoveInPos(AI_PET_HARDMOVE)
    return true
  end
  if A0_2 == ORDER_PETHARDRETURN then
    SetStateAndCloseToTarget(AI_PET_HARDRETURN, owner)
    return true
  end
  Say("BAD ORDER DUDE! ")
  return false
end
OnOrder = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDRETURN or GetState() == AI_FEARED or GetState() == AI_FLEEING or GetState() == AI_PET_HARDSTOP then
    return true
  end
  newTarget = FindTargetInAcR()
  if newTarget == nil then
    owner = GetOwner()
    if owner == nil then
      Die(me)
      return false
    end
    if GetState() == AI_PET_HARDIDLE_ATTACKING then
      NetSetState(AI_PET_HARDIDLE)
      return true
    elseif GetState() == AI_PET_RETURN_ATTACKING then
      SetStateAndCloseToTarget(AI_PET_RETURN, owner)
      return true
    elseif GetState() == AI_PET_ATTACKMOVE_ATTACKING then
      SetStateAndCloseToTarget(AI_PET_ATTACKMOVE, owner)
      return true
    end
  elseif GetState() == AI_PET_HARDATTACK or GetState() == AI_TAUNTED then
    SetStateAndCloseToTarget(AI_PET_ATTACK, newTarget)
    return true
  elseif GetState() == AI_PET_HARDIDLE_ATTACKING then
    NetSetState(AI_PET_HARDIDLE_ATTACKING)
    SetTarget(newTarget)
    return true
  end
  NetSetState(AI_PET_HARDIDLE)
  return true
end
OnTargetLost = L0_0
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
  NetSetState(AI_PET_HARDIDLE)
  TimerFindEnemies()
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
  NetSetState(AI_PET_HARDIDLE)
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
  NetSetState(AI_PET_HARDIDLE)
  TimerFindEnemies()
end
OnCanMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_PET_HARDIDLE)
  TimerFindEnemies()
end
OnCanAttack = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  tempOwner = GetOwner()
  if tempOwner == nil then
    Die(me)
    return
  end
  if not IsMoving() and GetState() == AI_PET_HARDMOVE then
    NetSetState(AI_PET_HARDIDLE)
    return
  end
  if GetState() == AI_PET_SPAWNING and IsNetworkLocal() then
    NetSetState(AI_PET_HARDIDLE)
  end
end
TimerScanDistance = L0_0
function L0_0()
  local L0_4
  L0_4 = GetState
  L0_4 = L0_4()
  if L0_4 == AI_HALTED then
    return
  end
  if GetOwner() == nil then
    Die(me)
    return
  end
  L0_4 = GetState()
  if L0_4 == AI_PET_HARDMOVE or L0_4 == AI_PET_HARDSTOP then
    return
  end
  if L0_4 == AI_PET_HARDIDLE then
    newTarget = FindTargetInAcR()
    if newTarget == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    NetSetState(AI_PET_HARDIDLE_ATTACKING)
    SetTarget(newTarget)
  end
  if L0_4 == AI_PET_HARDATTACK or L0_4 == AI_PET_HARDIDLE_ATTACKING or L0_4 == AI_TAUNTED then
    if TargetInAttackRange() then
      TurnOnAutoAttack(GetTarget())
    elseif TargetInCancelAttackRange() == false then
      TurnOffAutoAttack(STOPREASON_MOVING)
    end
    return
  end
end
TimerFindEnemies = L0_0
function L0_0()
  StopTimer("TimerScanDistance")
  StopTimer("TimerFindEnemies")
  StopTimer("TimerFeared")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
