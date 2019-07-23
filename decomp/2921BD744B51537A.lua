DoLuaShared("ObjectTags")
function OnInit()
  SetState(AI_HARDIDLE)
  InitTimer("TimerFindEnemies", 0.15, true)
  return false
end
DEBUG_MINION_STATE_TABLE = {
  [0] = "AI_IDLE",
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
function OnTargetLost(A0_0, A1_1)
  if GetState() == AI_HALTED then
    return false
  end
  newTarget = FindTargetInAcRWithFilter(0, {
    UnitTagIndicies.Special_TurretIgnores
  })
  if newTarget == nil then
    if GetState() == AI_HARDIDLE_ATTACKING or GetState() == AI_TAUNTED then
      NetSetState(AI_HARDIDLE)
      return true
    end
  elseif GetState() == AI_HARDIDLE_ATTACKING or GetState() == AI_TAUNTED then
    NetSetState(AI_HARDIDLE_ATTACKING)
    SetTarget(newTarget)
    return true
  end
  NetSetState(AI_HARDIDLE)
  return true
end
function OnCallForHelp(A0_2, A1_3)
  if GetState() == AI_HALTED then
    return false
  end
  if A1_3 and (GetState() == AI_HARDIDLE or GetState() == AI_HARDIDLE_ATTACKING) and GetCanAttack(me) and not GetInvulnerable(A1_3) and GetTargetableByUnit(A1_3, me) then
    NetSetState(AI_HARDIDLE_ATTACKING)
    SetTarget(A1_3)
    return true
  end
  return false
end
function OnReceiveImportantCallForHelp(A0_4, A1_5)
  if ObjectInAttackRange(A1_5) then
    PutTargetInTargetList(A1_5)
  end
end
function OnTauntBegin()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    NetSetState(AI_TAUNTED)
    SetTarget(tauntTarget)
  end
end
function OnTauntEnd()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    NetSetState(AI_HARDIDLE_ATTACKING)
    SetTarget(tauntTarget)
  else
    NetSetState(AI_HARDIDLE)
    TimerFindEnemies()
  end
end
function OnCanMove()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_HARDIDLE)
  TimerFindEnemies()
end
function OnCanAttack()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_HARDIDLE)
  TimerFindEnemies()
end
function TimerFindEnemies()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_HARDIDLE then
    newTarget = FindTargetInAcRWithFilter(0, {
      UnitTagIndicies.Special_TurretIgnores
    })
    if newTarget == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    if GetState() == AI_HARDIDLE then
      NetSetState(AI_HARDIDLE_ATTACKING)
      SetTarget(newTarget)
    end
  end
  if GetState() == AI_HARDIDLE_ATTACKING or GetState() == AI_TAUNTED then
    if TargetInAttackRange() then
      TurnOnAutoAttack(GetTarget())
    else
      NetSetState(AI_HARDIDLE)
      TurnOffAutoAttack(STOPREASON_MOVING)
    end
  end
end
function HaltAI()
  StopTimer("TimerFindEnemies")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
