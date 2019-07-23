local L0_0, L1_1
L0_0 = 800
FAR_MOVEMENT_DISTANCE = L0_0
L0_0 = 1200
MINION_MAX_VISION_DISTANCE = L0_0
L0_0 = 2000
TELEPORT_DISTANCE = L0_0
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
function L0_0()
  Say("[TimerDebug()] State: " .. GetState())
end
TimerDebug = L0_0
function L0_0(A0_2, A1_3)
  local L2_4
  L2_4 = true
  return L2_4
end
OnOrder = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_PET_MOVE or GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDRETURN or GetState() == AI_FEARED or GetState() == AI_FLEEING or GetState() == AI_PET_HARDSTOP then
    return true
  end
  newTarget = FindTargetInAcR()
  if newTarget == nil then
    owner = GetGoldRedirectTarget()
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
  elseif GetState() == AI_PET_HARDATTACK or GetState() == AI_PET_ATTACK or GetState() == AI_TAUNTED then
    SetStateAndCloseToTarget(AI_PET_ATTACK, newTarget)
    return true
  elseif GetState() == AI_PET_HARDIDLE_ATTACKING then
    NetSetState(AI_PET_HARDIDLE_ATTACKING)
    SetTarget(newTarget)
    return true
  elseif GetState() == AI_PET_RETURN_ATTACKING then
    SetStateAndCloseToTarget(AI_PET_RETURN_ATTACKING, newTarget)
    return true
  elseif GetState() == AI_PET_ATTACKMOVE_ATTACKING then
    SetStateAndCloseToTarget(AI_PET_ATTACKMOVE_ATTACKING, newTarget)
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
    TimerFindEnemies()
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
  TimerFindEnemies()
end
OnCanMove = L0_0
function L0_0()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_PET_IDLE)
  TimerFindEnemies()
end
OnCanAttack = L0_0
function L0_0()
  local L0_5
  L0_5 = GetState
  L0_5 = L0_5()
  if L0_5 == AI_HALTED then
    return
  end
  tempOwner = GetGoldRedirectTarget()
  if tempOwner == nil then
    Die(me)
    return
  end
  canMove = GetCanMove(me)
  distanceToOwner = DistanceBetweenObjectBounds(me, tempOwner)
  if canMove and distanceToOwner > TELEPORT_DISTANCE then
    SetActorPositionFromObject(me, tempOwner)
    NetSetState(AI_PET_IDLE)
    return
  end
  if canMove and distanceToOwner > FAR_MOVEMENT_DISTANCE then
    if distanceToOwner > MINION_MAX_VISION_DISTANCE then
      SetLastPosPointWithObj(tempOwner)
      SetStateAndMoveInPos(AI_PET_MOVE)
    else
      SetStateAndCloseToTarget(AI_PET_MOVE, tempOwner)
    end
    return
  end
  L0_5 = GetState()
  bNoEnemiesNear = FindTargetInAcR() == nil
  if L0_5 == AI_PET_IDLE and distanceToOwner > GetPetReturnRadius(me) and bNoEnemiesNear then
    SetStateAndCloseToTarget(AI_PET_RETURN, tempOwner)
    return
  end
  if (L0_5 == AI_PET_MOVE or L0_5 == AI_PET_RETURN or L0_5 == AI_PET_HARDRETURN) and distanceToOwner <= GetPetReturnRadius(me) then
    NetSetState(AI_PET_IDLE)
    return
  end
  if not IsMoving() and L0_5 == AI_PET_HARDMOVE then
    NetSetState(AI_PET_HARDIDLE)
    return
  end
  if L0_5 == AI_PET_SPAWNING and IsNetworkLocal() then
    NetSetState(AI_PET_IDLE)
  end
end
TimerScanDistance = L0_0
function L0_0()
  local L0_6
  L0_6 = GetState
  L0_6 = L0_6()
  if L0_6 == AI_HALTED then
    return
  end
  if GetGoldRedirectTarget() == nil then
    Die(me)
    return
  end
  L0_6 = GetState()
  if L0_6 == AI_PET_MOVE or L0_6 == AI_PET_HARDMOVE or L0_6 == AI_PET_HARDSTOP then
    return
  end
  if L0_6 == AI_PET_IDLE or L0_6 == AI_PET_RETURN or L0_6 == AI_PET_ATTACKMOVE or L0_6 == AI_PET_HARDIDLE then
    newTarget = FindTargetInAcRUsingGoldRedirectTarget()
    if newTarget == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    if L0_6 == AI_PET_IDLE then
      SetStateAndCloseToTarget(AI_PET_ATTACK, newTarget)
    elseif L0_6 == AI_PET_RETURN then
      SetStateAndCloseToTarget(AI_PET_RETURN_ATTACKING, newTarget)
    elseif L0_6 == AI_PET_ATTACKMOVE then
      SetStateAndCloseToTarget(AI_PET_ATTACKMOVE_ATTACKING, newTarget)
    elseif L0_6 == AI_PET_HARDIDLE then
      NetSetState(AI_PET_HARDIDLE_ATTACKING)
    end
  end
  if L0_6 == AI_PET_ATTACK or L0_6 == AI_PET_HARDATTACK or L0_6 == AI_PET_RETURN_ATTACKING or L0_6 == AI_PET_ATTACKMOVE_ATTACKING or L0_6 == AI_PET_HARDIDLE_ATTACKING or L0_6 == AI_TAUNTED then
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
