MAX_ENGAGE_DISTANCE = 2500
FEAR_WANDER_DISTANCE = 500
DELAY_FIND_ENEMIES = 0.25
DELAY_WAIT_FOR_ATTACK = 0.1
CENTER_LANE = 1
FIRST_WAVE_TIME = 90
ASLEEP_TIME_DEFAULT_LANE = 125
ASLEEP_TIME_CENTER_LANE = ASLEEP_TIME_DEFAULT_LANE - 10
FIRST_WAVE_GHOST_TIME = 18
FIRST_WAVE_GHOST_TIME_OUTERLANES = 28
DoLuaShared("ObjectTags")
DoLuaShared("Minions")
function OnPostInit()
  local L0_0
  L0_0 = FIRST_WAVE_GHOST_TIME
  if GetMissionTime() < FIRST_WAVE_TIME then
    SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_ASLEEP)
    SetGhostedForAllies(true)
    if GetMinionLane() ~= CENTER_LANE then
      L0_0 = FIRST_WAVE_GHOST_TIME_OUTERLANES
    end
    InitTimer("TimerDisableGhosting", L0_0, true)
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
  local L0_1, L1_2, L2_3
  L1_2 = GetTargetAcquisitionMode
  L1_2 = L1_2()
  L2_3 = TARGET_ACQUISITION_MODE_DEFAULT
  if L1_2 ~= L2_3 then
    L2_3 = TARGET_ACQUISITION_MODE_ASLEEP
    if L1_2 == L2_3 then
      L2_3 = SetTargetAcquisitionMode
      L2_3(TARGET_ACQUISITION_MODE_DEFAULT)
      L2_3 = FindTargetInWakeUpRange
      L2_3 = L2_3()
      SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_ASLEEP)
      if L2_3 ~= nil then
        SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DISTRIBUTE_FIRE)
        L0_1 = FindTargetInFirstAcquisitionRangeWithFilter({}, {
          UnitTagIndicies.Minion_Lane_Ranged
        })
      end
    else
      L2_3 = ASLEEP_TIME_DEFAULT_LANE
      if GetMinionLane() == CENTER_LANE then
        L2_3 = ASLEEP_TIME_CENTER_LANE
      end
      if L2_3 < GetMissionTime() or GetTarget() == nil then
        SetTargetAcquisitionMode(TARGET_ACQUISITION_MODE_DEFAULT)
        L0_1 = FindTargetInAcR()
      end
    end
    if L0_1 ~= nil then
      L2_3 = IsHeroAI
      L2_3 = L2_3(L0_1)
      if L2_3 then
        L2_3 = SetTarget
        L2_3(L0_1)
        L2_3 = AddToIgnore
        L2_3(0.1)
        L2_3 = SetTargetAcquisitionMode
        L2_3(TARGET_ACQUISITION_MODE_DEFAULT)
        L2_3 = FindTargetInAcR
        L2_3 = L2_3()
        L0_1 = L2_3
      end
    end
  else
    L2_3 = FindTargetInAcR
    L2_3 = L2_3()
    L0_1 = L2_3
  end
  if L0_1 ~= nil then
    L2_3 = GetRegionTag
    L2_3 = L2_3(L0_1, GameplayArea)
    if IsNochaseRegionForMinions(L2_3) then
      SetTarget(L0_1)
      AddToIgnore(0.1)
      return LaneMinionFindTarget()
    end
    SetTarget(L0_1)
  end
  return L0_1
end
function IsNochaseRegionForMinions(A0_4)
  local L1_5
  L1_5 = AREA_Lane_Top
  if A0_4 ~= L1_5 then
    L1_5 = AREA_Lane_Mid
    if A0_4 ~= L1_5 then
      L1_5 = AREA_Lane_Bot
      if A0_4 ~= L1_5 then
        L1_5 = AREA_Base
        if A0_4 ~= L1_5 then
          L1_5 = AREA_Platform
          if A0_4 ~= L1_5 then
            L1_5 = true
            return L1_5
          end
        end
      end
    end
  end
  L1_5 = false
  return L1_5
end
function TimerWaitForAttackFinish()
  if LastAutoAttackFinished() == true then
    StopTimer("TimerWaitForAttackFinish")
    FindTargetOrMove()
  end
end
function TimerFindEnemies()
  local L0_6, L1_7, L2_8
  L0_6 = GetState
  L0_6 = L0_6()
  L1_7 = AI_HALTED
  if L0_6 == L1_7 then
    return
  end
  L1_7 = GetMyRegionTag
  L2_8 = GameplayArea
  L1_7 = L1_7(L2_8)
  L2_8 = IsNochaseRegionForMinions
  L2_8 = L2_8(L1_7)
  if L2_8 then
    L2_8 = GetTarget
    L2_8 = L2_8()
    if L2_8 ~= nil then
      L2_8 = AddToIgnore
      L2_8(0.6)
    end
    L2_8 = FindTargetOrMove
    L2_8()
    return
  end
  L2_8 = AI_ATTACKMOVESTATE
  if L0_6 == L2_8 then
    L2_8 = LaneMinionFindTarget
    L2_8 = L2_8()
    if L2_8 == nil then
      TurnOffAutoAttack(STOPREASON_TARGET_LOST)
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L2_8)
    ResetAndStartTimer("TimerAntiKite")
  else
    L2_8 = AI_TAUNTED
    if L0_6 == L2_8 then
      L2_8 = GetTauntTarget
      L2_8 = L2_8()
      if L2_8 ~= nil then
        L2_8 = SetStateAndCloseToTarget
        L2_8(AI_TAUNTED, GetTauntTarget())
      end
    end
  end
  L2_8 = AI_ATTACKMOVE_ATTACKING
  if L0_6 ~= L2_8 then
    L2_8 = AI_TAUNTED
  elseif L0_6 == L2_8 then
    L2_8 = GetTarget
    L2_8 = L2_8()
    if L2_8 ~= nil then
      L2_8 = DistanceBetweenMeAndObject
      L2_8 = L2_8(GetTarget())
    elseif L2_8 > MAX_ENGAGE_DISTANCE then
      L2_8 = FindTargetOrMove
      L2_8()
    end
    L2_8 = TargetInAttackRange
    L2_8 = L2_8()
    if L2_8 then
      L2_8 = AI_TAUNTED
      if L0_6 ~= L2_8 then
        L2_8 = ResetAndStartTimer
        L2_8("TimerAntiKite")
      end
      L2_8 = TurnOnAutoAttack
      L2_8(GetTarget())
    else
      L2_8 = TargetInCancelAttackRange
      L2_8 = L2_8()
      if L2_8 == false then
        L2_8 = TurnOffAutoAttack
        L2_8(STOPREASON_MOVING)
      end
    end
  end
end
function FindTargetOrMove()
  local L0_9, L1_10
  L0_9 = GetState
  L0_9 = L0_9()
  L1_10 = AI_HALTED
  if L0_9 == L1_10 then
    L1_10 = TurnOffAutoAttack
    L1_10(STOPREASON_MOVING)
    return
  end
  L1_10 = LaneMinionFindTarget
  L1_10 = L1_10()
  if L1_10 ~= nil then
    if LastAutoAttackFinished() == false then
      ResetAndStartTimer("TimerWaitForAttackFinish")
      ResetAndStartTimer("TimerFindEnemies")
      return
    end
    SetStateAndCloseToTarget(AI_ATTACKMOVE_ATTACKING, L1_10)
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
