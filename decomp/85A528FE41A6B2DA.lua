FAR_MOVMEMENT_DISTANCE = 1000
TELEPORT_DISTANCE = 2000
FEAR_WANDER_DISTANCE = 500
PET_COMMAND_BUFF_TYPE = 0
DoLuaShared("ObjectTags")
TARGET_UNIT_TAG_INCLUDES = {
  UnitTagIndicies.Champion,
  UnitTagIndicies.Minion,
  UnitTagIndicies.Monster
}
TARGET_UNIT_TAG_EXCLUDES = {
  UnitTagIndicies.Structure,
  UnitTagIndicies.Ward
}
function OnInit()
  SetState(AI_PET_IDLE)
  InitTimer("TimerScanDistance", 0.15, true)
  InitTimer("TimerFindEnemies", 0.15, true)
  InitTimer("TimerFeared", 1, true)
  StopTimer("TimerFeared")
  if GetCharacterData().Name == "SRU_Dragon" then
    TELEPORT_DISTANCE = 25000
    return false
  end
  return false
end
function OnOrder(A0_0, A1_1)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_TAUNTED or GetState() == AI_FEARED then
    return
  end
  if (GetState() == AI_PET_HARDATTACK or GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDIDLE or GetState() == AI_PET_HARDIDLE_ATTACKING or GetState() == AI_PET_HARDRETURN or GetState() == AI_PET_HARDSTOP) and (A0_0 == ORDER_ATTACKTO or A0_0 == ORDER_MOVETO or A0_0 == ORDER_ATTACKMOVE or A0_0 == ORDER_STOP) then
    return true
  end
  owner = GetOwner()
  if owner == nil then
    Die(me)
    return false
  end
  if A0_0 == ORDER_ATTACKTO then
    if A1_1 == nil then
      return false
    end
    TurnOffAutoAttack(STOPREASON_TARGET_LOST)
    SetStateAndCloseToTarget(AI_PET_ATTACK, A1_1)
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    return true
  end
  if A0_0 == ORDER_MOVETO then
    if DistanceBetweenObjectAndInPosSq(me) > FAR_MOVMEMENT_DISTANCE * FAR_MOVMEMENT_DISTANCE or GetState() == AI_PET_HOLDPOSITION or GetState() == AI_PET_HOLDPOSITION_ATTACKING then
      SetStateAndCloseToTarget(AI_PET_MOVE, owner)
      AIScriptSpellBuffRemove(me, "PetCommandParticle")
    end
    return true
  end
  if A0_0 == ORDER_ATTACKMOVE then
    SetStateAndCloseToTarget(AI_PET_ATTACKMOVE, owner)
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    return true
  end
  if A0_0 == ORDER_STOP then
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    return true
  end
  if A0_0 == ORDER_PETHARDSTOP then
    TurnOffAutoAttack(STOPREASON_TARGET_LOST)
    SetStateAndCloseToTarget(AI_PET_HARDSTOP, me)
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    return true
  end
  if A0_0 == ORDER_PETHARDATTACK then
    if A1_1 == nil then
      return false
    end
    TurnOffAutoAttack(STOPREASON_TARGET_LOST)
    SetStateAndCloseToTarget(AI_PET_HARDATTACK, A1_1)
    AIScriptSpellBuffAdd(A1_1, me, "PetCommandParticle", PET_COMMAND_BUFF_TYPE, 45)
    return true
  end
  if A0_0 == ORDER_PETHARDMOVE then
    SetStateAndMoveInPos(AI_PET_HARDMOVE)
    AIScriptSpellBuffAdd(me, me, "PetCommandParticle", PET_COMMAND_BUFF_TYPE, 45)
    return true
  end
  if A0_0 == ORDER_PETHARDRETURN then
    SetStateAndCloseToTarget(AI_PET_HARDRETURN, owner)
    AIScriptSpellBuffAdd(owner, me, "PetCommandParticle", PET_COMMAND_BUFF_TYPE, 45)
    return true
  end
  if A0_0 == ORDER_HOLD then
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    SetStateAndCloseToTarget(AI_PET_HOLDPOSITION, me)
    return true
  end
  Say("BAD ORDER DUDE! ")
  return false
end
function OnTargetLost()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_PET_MOVE or GetState() == AI_PET_HARDMOVE or GetState() == AI_PET_HARDRETURN or GetState() == AI_FEARED or GetState() == AI_PET_HARDSTOP then
    return true
  end
  newTarget = FindTargetInAcRWithFilter(TARGET_UNIT_TAG_INCLUDES, TARGET_UNIT_TAG_EXCLUDES)
  if newTarget == nil then
    owner = GetOwner()
    if owner == nil then
      Die(me)
      return false
    end
    if GetState() == AI_PET_HARDIDLE_ATTACKING then
      NetSetState(AI_PET_HARDIDLE)
      return true
    elseif GetState() == AI_PET_HOLDPOSITION_ATTACKING then
      NetSetState(AI_PET_HOLDPOSITION)
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
  elseif GetState() == AI_PET_HOLDPOSITION_ATTACKING then
    NetSetState(AI_PET_HOLDPOSITION_ATTACKING)
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
function OnTauntBegin()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
  end
end
function OnTauntEnd()
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
function OnFearBegin()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer("TimerFeared")
end
function OnFearEnd()
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerFeared")
  NetSetState(AI_PET_IDLE)
  TimerFindEnemies()
end
function TimerFeared()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
end
function OnCanMove()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_PET_IDLE)
  TimerFindEnemies()
end
function OnCanAttack()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_PET_IDLE)
  TimerFindEnemies()
end
function TimerScanDistance()
  if GetState() == AI_HALTED then
    return
  end
  tempOwner = GetOwner()
  if tempOwner == nil then
    Die(me)
    return
  end
  distanceToOwner = DistanceBetweenObjectBounds(me, tempOwner)
  if distanceToOwner > TELEPORT_DISTANCE then
    TeleportToObj(tempOwner)
    AIScriptSpellBuffRemove(me, "PetCommandParticle")
    NetSetState(AI_PET_IDLE)
    return
  end
  if (GetState() == AI_PET_RETURN or GetState() == AI_PET_HARDRETURN) and distanceToOwner <= GetPetReturnRadius(me) then
    NetSetState(AI_PET_IDLE)
    return
  end
  if not OwnerIsMoving() and (GetState() == AI_PET_MOVE or GetState() == AI_PET_ATTACKMOVE and bNoEnemiesNear) then
    NetSetState(AI_PET_IDLE)
    return
  end
  if not IsMoving() and GetState() == AI_PET_HARDMOVE then
    NetSetState(AI_PET_HARDIDLE)
    return
  end
  if GetState() == AI_PET_SPAWNING and IsNetworkLocal() then
    NetSetState(AI_PET_IDLE)
  end
end
function TimerFindEnemies()
  local L0_2
  L0_2 = GetState
  L0_2 = L0_2()
  if L0_2 == AI_HALTED then
    return
  end
  if GetOwner() == nil then
    Die(me)
    return
  end
  L0_2 = GetState()
  if L0_2 == AI_PET_MOVE or L0_2 == AI_PET_HARDMOVE or L0_2 == AI_PET_HARDSTOP then
    return
  end
  if L0_2 == AI_PET_IDLE or L0_2 == AI_PET_RETURN or L0_2 == AI_PET_ATTACKMOVE or L0_2 == AI_PET_HARDIDLE or L0_2 == AI_PET_HOLDPOSITION then
    newTarget = FindTargetInAcRWithFilter(TARGET_UNIT_TAG_INCLUDES, TARGET_UNIT_TAG_EXCLUDES)
    if newTarget == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    if L0_2 ~= AI_PET_HARDATTACK and L0_2 ~= AI_PET_HARDMOVE and L0_2 ~= AI_PET_HARDIDLE and L0_2 ~= AI_PET_HARDIDLE_ATTACKING and L0_2 ~= AI_PET_HARDRETURN then
      AIScriptSpellBuffRemove(me, "PetCommandParticle")
    end
    if L0_2 == AI_PET_IDLE then
      SetStateAndCloseToTarget(AI_PET_ATTACK, newTarget)
    elseif L0_2 == AI_PET_RETURN then
      SetStateAndCloseToTarget(AI_PET_RETURN_ATTACKING, newTarget)
    elseif L0_2 == AI_PET_ATTACKMOVE then
      SetStateAndCloseToTarget(AI_PET_ATTACKMOVE_ATTACKING, newTarget)
    elseif L0_2 == AI_PET_HARDIDLE then
      NetSetState(AI_PET_HARDIDLE_ATTACKING)
      SetTarget(newTarget)
    elseif L0_2 == AI_PET_HOLDPOSITION then
      NetSetState(AI_PET_HOLDPOSITION_ATTACKING)
      SetTarget(newTarget)
    end
  end
  if L0_2 == AI_PET_ATTACK or L0_2 == AI_PET_HARDATTACK or L0_2 == AI_PET_RETURN_ATTACKING or L0_2 == AI_PET_ATTACKMOVE_ATTACKING or L0_2 == AI_PET_HARDIDLE_ATTACKING or L0_2 == AI_PET_HOLDPOSITION_ATTACKING or L0_2 == AI_TAUNTED then
    if TargetInAttackRange() then
      TurnOnAutoAttack(GetTarget())
    elseif TargetInCancelAttackRange() == false then
      TurnOffAutoAttack(STOPREASON_MOVING)
    end
    return
  end
end
function HaltAI()
  StopTimer("TimerScanDistance")
  StopTimer("TimerFindEnemies")
  StopTimer("TimerFeared")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
