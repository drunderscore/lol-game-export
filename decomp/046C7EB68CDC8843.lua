MAX_ENGAGE_DISTANCE = 2500
DELAY_FIND_ENEMIES = 0.25
TURRET_BREAK_RANGE = 2500
DoLuaShared("ObjectTags")
DoLuaShared("AIComponentSystem")
AddComponent("DefaultCharmBehavior")
AddComponent("DefaultFearBehavior")
AddComponent("DefaultFleeBehavior")
AddComponent("DefaultTauntBehavior")
TARGET_UNIT_TAG_INCLUDES = {
  UnitTagIndicies.Minion,
  UnitTagIndicies.Structure
}
TARGET_UNIT_TAG_EXCLUDES = {
  UnitTagIndicies.Special_Void
}
function OnInit()
  SpellIncLevel(0)
  Event("ComponentInit")
  InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
  InitTimer("TimerMoveForward", 0, true)
  InitTimer("TimerAntiKite", 4, false)
  Test = false
  StopAI()
  return false
end
function HaltAI()
  Event("ComponentHalt")
  StopAI()
end
function StopAI()
  NetSetState(AI_HALTED)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  StopMove()
  Test = true
  StopTimer("TimerFindEnemies")
  StopTimer("TimerMoveForward")
  StopTimer("TimerAntiKite")
end
function StartAI()
  NetSetState(AI_ATTACKMOVESTATE)
  Test = false
  ResetAndStartTimer("TimerFindEnemies")
  ResetAndStartTimer("TimerMoveForward")
  TimerFindEnemies()
end
function TimerFindEnemies()
  local L0_0, L1_1
  L0_0 = GetState
  L0_0 = L0_0()
  L1_1 = AI_HALTED
  if L0_0 == L1_1 then
    return
  end
  L1_1 = AI_ATTACKMOVESTATE
  if L0_0 == L1_1 then
    L1_1 = FindTargetInAcRWithFilter
    L1_1 = L1_1(TARGET_UNIT_TAG_INCLUDES, TARGET_UNIT_TAG_EXCLUDES)
    if L1_1 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_1)
    ResetAndStartTimer("TimerAntiKite")
  else
    L1_1 = AI_TAUNTED
    if L0_0 == L1_1 then
      L1_1 = GetTauntTarget
      L1_1 = L1_1()
      if L1_1 ~= nil then
        L1_1 = SetStateAndCloseToTarget
        L1_1(AI_TAUNTED, GetTauntTarget())
      end
    end
  end
  L1_1 = AI_ATTACKMOVE_ATTACKING
  if L0_0 ~= L1_1 then
    L1_1 = AI_TAUNTED
  elseif L0_0 == L1_1 then
    L1_1 = GetTarget
    L1_1 = L1_1()
    if L1_1 ~= nil then
      L1_1 = DistanceBetweenMeAndObject
      L1_1 = L1_1(GetTarget())
    elseif L1_1 > MAX_ENGAGE_DISTANCE then
      L1_1 = FindTargetOrMove
      L1_1()
    end
    L1_1 = TargetInAttackRange
    L1_1 = L1_1()
    if L1_1 then
      L1_1 = AI_TAUNTED
      if L0_0 ~= L1_1 then
        L1_1 = ResetAndStartTimer
        L1_1("TimerAntiKite")
      end
      L1_1 = TurnOnAutoAttack
      L1_1(GetTarget())
    else
      L1_1 = TargetInCancelAttackRange
      L1_1 = L1_1()
      if L1_1 == false then
        L1_1 = TurnOffAutoAttack
        L1_1(STOPREASON_MOVING)
        L1_1 = 0
        LastAttackScan = L1_1
      end
    end
  end
end
function FindTargetOrMove()
  local L0_2, L1_3
  L0_2 = GetState
  L0_2 = L0_2()
  L1_3 = AI_HALTED
  if L0_2 == L1_3 then
    return
  end
  L1_3 = FindTargetInAcRWithFilter
  L1_3 = L1_3(TARGET_UNIT_TAG_INCLUDES, TARGET_UNIT_TAG_EXCLUDES)
  if L1_3 then
    if LastAutoAttackFinished() == false then
      InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_3)
    ResetAndStartTimer("TimerAntiKite")
  else
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    StopTimer("TimerAntiKite")
    LastAttackScan = 0
  end
end
function TimerMoveForward()
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
function OnTargetLost()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING or GetState() == AI_TAUNTED then
    FindTargetOrMove()
  end
end
function OnPathToTargetBlocked()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
function OnCallForHelp(A0_4, A1_5)
  if GetState() == AI_HALTED then
    return
  end
end
function OnCanMove()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
function OnCanAttack()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  FindTargetOrMove()
end
function TimerAntiKite()
  if GetState() == AI_HALTED then
    return
  end
  if GetState() == AI_ATTACKMOVE_ATTACKING and IsMoving() then
    AddToIgnore(0.1)
    FindTargetOrMove()
  end
end
function OnCollisionEnemy(A0_6)
  if GetState() == AI_HALTED then
    return
  end
  return true
end
function OnCollisionOther(A0_7)
  if GetState() == AI_HALTED then
    return
  end
  if GetState() ~= AI_TAUNTED and GetState() ~= AI_FEARED and GetState() ~= AI_FLEEING then
    FindTargetOrMove()
    return false
  end
  return true
end
function OnReachedDestinationForGoingToLastLocation()
  if GetState() == AI_HALTED then
    return
  end
  NetSetState(AI_IDLE)
  TimerDistanceScan()
  TimerCheckAttack()
end
