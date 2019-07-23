MAX_ENGAGE_DISTANCE = 550
FEAR_WANDER_DISTANCE = 500
DELAY_FIND_ENEMIES = 0.25
DoLuaShared("Minions")
function OnPostInit()
  local L0_0, L1_1
end
function OnTauntBegin()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    if IsObjectUseable(tauntTarget) then
      UseTarget(tauntTarget)
    else
      SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    end
    StopTimer("TimerAntiKite")
  end
end
function OnTauntEnd()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    if IsObjectUseable(tauntTarget) then
      UseTarget(tauntTarget)
    else
      SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, tauntTarget)
    end
    ResetAndStartTimer("TimerAntiKite")
  else
    FindTargetOrMove()
  end
end
function TimerFindEnemies()
  local L0_2, L1_3, L2_4
  L0_2 = GetState
  L0_2 = L0_2()
  L1_3 = AI_HALTED
  if L0_2 == L1_3 then
    return
  end
  L1_3 = AI_ATTACKMOVESTATE
  if L0_2 == L1_3 then
    L1_3 = FindUseableObjectInAcR
    L1_3 = L1_3()
    if L1_3 ~= nil then
      L2_4 = NetSetState
      L2_4(AI_IDLE)
      L2_4 = TurnOffAutoAttack
      L2_4(STOPREASON_MOVING)
      L2_4 = UseTarget
      L2_4(L1_3)
      return
    end
    L2_4 = FindTargetInAcR
    L2_4 = L2_4()
    if L2_4 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_4)
    ResetAndStartTimer("TimerAntiKite")
  else
    L1_3 = GetTauntTarget
    L1_3 = L1_3()
    tauntTarget = L1_3
    L1_3 = AI_TAUNTED
    if L0_2 == L1_3 then
      L1_3 = tauntTarget
      if L1_3 ~= nil then
        L1_3 = IsObjectUseable
        L2_4 = tauntTarget
        L1_3 = L1_3(L2_4)
        if L1_3 then
          L1_3 = UseTarget
          L2_4 = tauntTarget
          L1_3(L2_4)
        else
          L1_3 = SetStateAndCloseToTarget
          L2_4 = AI_TAUNTED
          L1_3(L2_4, tauntTarget)
        end
      end
    end
  end
  L1_3 = AI_ATTACKMOVE_ATTACKING
  if L0_2 ~= L1_3 then
    L1_3 = AI_TAUNTED
  elseif L0_2 == L1_3 then
    L1_3 = GetTarget
    L1_3 = L1_3()
    if L1_3 ~= nil then
      L1_3 = DistanceBetweenMeAndObject
      L2_4 = GetTarget
      L2_4 = L2_4()
      L1_3 = L1_3(L2_4, L2_4())
      L2_4 = MAX_ENGAGE_DISTANCE
    elseif L1_3 > L2_4 then
      L1_3 = FindTargetOrMove
      L1_3()
    end
    L1_3 = TargetInAttackRange
    L1_3 = L1_3()
    if L1_3 then
      L1_3 = AI_TAUNTED
      if L0_2 ~= L1_3 then
        L1_3 = ResetAndStartTimer
        L2_4 = "TimerAntiKite"
        L1_3(L2_4)
      end
      L1_3 = TurnOnAutoAttack
      L2_4 = GetTarget
      L2_4 = L2_4()
      L1_3(L2_4, L2_4())
    else
      L1_3 = TargetInCancelAttackRange
      L1_3 = L1_3()
      if L1_3 == false then
        L1_3 = TurnOffAutoAttack
        L2_4 = STOPREASON_MOVING
        L1_3(L2_4)
        L1_3 = 0
        LastAttackScan = L1_3
      end
    end
  end
end
function FindTargetOrMove()
  local L0_5, L1_6, L2_7
  L0_5 = GetState
  L0_5 = L0_5()
  L1_6 = AI_HALTED
  if L0_5 == L1_6 then
    return
  end
  L1_6 = FindUseableObjectInAcR
  L1_6 = L1_6()
  if L1_6 ~= nil then
    L2_7 = NetSetState
    L2_7(AI_IDLE)
    L2_7 = TurnOffAutoAttack
    L2_7(STOPREASON_MOVING)
    L2_7 = UseTarget
    L2_7(L1_6)
    return
  end
  L2_7 = FindTargetInAcR
  L2_7 = L2_7()
  if L2_7 then
    if LastAutoAttackFinished() == false then
      InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, true)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_7)
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
