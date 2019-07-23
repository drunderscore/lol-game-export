MAX_ENGAGE_DISTANCE = 2500
FEAR_WANDER_DISTANCE = 500
DELAY_FIND_ENEMIES = 0.25
DELAY_WAIT_FOR_ATTACK = 0.1
CENTER_LANE = 1
FIRST_WAVE_TIME = 90
ASLEEP_TIME_DEFAULT_LANE = 125
ASLEEP_TIME_CENTER_LANE = ASLEEP_TIME_DEFAULT_LANE - 10
FIRST_WAVE_GHOST_TIME = 18
DoLuaShared("ObjectTags")
DoLuaShared("Minions")
function OnPostInit()
  if GetMissionTime() < FIRST_WAVE_TIME then
    SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_ASLEEP)
    SetGhostedForAllies(true)
    InitTimer("TimerDisableGhosting", FIRST_WAVE_GHOST_TIME, true)
    ResetAndStartTimer("TimerDisableGhosting")
  end
  InitTimer("TimerWaitForAttackFinish", DELAY_WAIT_FOR_ATTACK, true)
  StopTimer("TimerWaitForAttackFinish")
end
function TimerDisableGhosting()
  SetGhostedForAllies(false)
  StopTimer("TimerDisableGhosting")
end
function OnTauntBegin()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil then
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    StopTimer("TimerAntiKite")
  end
end
function OnTauntEnd()
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
function LaneMinionFindTarget()
  local L0_0
  if GetTargetAcquisitionMode() ~= TARGET_ACQUISITION_MODE_DEFAULT then
    if GetTargetAcquisitionMode() == TARGET_ACQUISITION_MODE_ASLEEP then
      SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DEFAULT)
      SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_ASLEEP)
      if FindTargetInWakeUpRange() ~= nil then
        SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DISTRIBUTE_FIRE)
        L0_0 = FindTargetInFirstAcquisitionRangeWithFilter({}, {
          UnitTagIndicies.Minion_Lane_Ranged
        })
      end
    elseif ASLEEP_TIME_CENTER_LANE < GetMissionTime() or GetTarget() == nil then
      SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DEFAULT)
      L0_0 = FindTargetInAcR()
    end
    if L0_0 ~= nil and IsHeroAI(L0_0) then
      SetTarget(L0_0)
      AddToIgnore(0.1)
      SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DEFAULT)
      L0_0 = FindTargetInAcR()
    end
  else
    L0_0 = FindTargetInAcR()
  end
  if L0_0 ~= nil then
    SetTarget(L0_0)
  end
  return L0_0
end
function IsNochaseRegionForMinions(A0_1)
  local L1_2
  L1_2 = AREA_Lane_Top
  if A0_1 ~= L1_2 then
    L1_2 = AREA_Lane_Mid
    if A0_1 ~= L1_2 then
      L1_2 = AREA_Lane_Bot
      if A0_1 ~= L1_2 then
        L1_2 = AREA_Base
        if A0_1 ~= L1_2 then
          L1_2 = AREA_Platform
          if A0_1 ~= L1_2 then
            L1_2 = true
            return L1_2
          end
        end
      end
    end
  end
  L1_2 = false
  return L1_2
end
function TimerWaitForAttackFinish()
  if LastAutoAttackFinished() == true then
    StopTimer("TimerWaitForAttackFinish")
    FindTargetOrMove()
  end
end
function TimerFindEnemies()
  local L0_3, L1_4, L2_5
  L0_3 = GetState
  L0_3 = L0_3()
  L1_4 = AI_HALTED
  if L0_3 == L1_4 then
    return
  end
  L1_4 = GetMyRegionTag
  L2_5 = GameplayArea
  L1_4 = L1_4(L2_5)
  L2_5 = AI_ATTACKMOVESTATE
  if L0_3 == L2_5 then
    L2_5 = LaneMinionFindTarget
    L2_5 = L2_5()
    if L2_5 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_5)
    ResetAndStartTimer("TimerAntiKite")
  else
    L2_5 = AI_TAUNTED
    if L0_3 == L2_5 then
      L2_5 = GetTauntTarget
      L2_5 = L2_5()
      if L2_5 ~= nil then
        L2_5 = SetStateAndCloseToTarget
        L2_5(AI_TAUNTED, GetTauntTarget())
      end
    end
  end
  L2_5 = AI_ATTACKMOVE_ATTACKING
  if L0_3 ~= L2_5 then
    L2_5 = AI_TAUNTED
  elseif L0_3 == L2_5 then
    L2_5 = GetTarget
    L2_5 = L2_5()
    if L2_5 ~= nil then
      L2_5 = DistanceBetweenMeAndObject
      L2_5 = L2_5(GetTarget())
    elseif L2_5 > MAX_ENGAGE_DISTANCE then
      L2_5 = FindTargetOrMove
      L2_5()
    end
    L2_5 = TargetInAttackRange
    L2_5 = L2_5()
    if L2_5 then
      L2_5 = AI_TAUNTED
      if L0_3 ~= L2_5 then
        L2_5 = ResetAndStartTimer
        L2_5("TimerAntiKite")
      end
      L2_5 = TurnOnAutoAttack
      L2_5(GetTarget())
    else
      L2_5 = TargetInCancelAttackRange
      L2_5 = L2_5()
      if L2_5 == false then
        L2_5 = TurnOffAutoAttack
        L2_5(STOPREASON_MOVING)
      end
    end
  end
end
function FindTargetOrMove()
  local L0_6, L1_7
  L0_6 = GetState
  L0_6 = L0_6()
  L1_7 = AI_HALTED
  if L0_6 == L1_7 then
    L1_7 = TurnOffAutoAttack
    L1_7(STOPREASON_MOVING)
    return
  end
  L1_7 = LaneMinionFindTarget
  L1_7 = L1_7()
  if L1_7 ~= nil then
    if LastAutoAttackFinished() == false then
      ResetAndStartTimer("TimerWaitForAttackFinish")
      ResetAndStartTimer("TimerFindEnemies")
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_7)
    ResetAndStartTimer("TimerAntiKite")
  else
    TurnOffAutoAttack(STOPREASON_MOVING)
    SetStateAndMoveToForwardNav(AI_ATTACKMOVESTATE)
    StopTimer("TimerAntiKite")
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
  end
end
