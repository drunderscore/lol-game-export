SkittishMonster = {
  TimerCallbackName = "TimerSkittishMonster",
  MeleeRange = 350
}
RegisterForEvent("ComponentInit", SkittishMonster)
RegisterForEvent("LeashedCallForHelp", SkittishMonster)
RegisterForEvent("ComponentHalt", SkittishMonster)
RegisterForEvent("SkittishResume", SkittishMonster)
RegisterForEvent("SkittishPause", SkittishMonster)
function SkittishMonster.ComponentInit(A0_0)
  A0_0.timerDuration = 0.5
  InitTimer(A0_0.TimerCallbackName, A0_0.timerDuration, true)
  StopTimer(A0_0.TimerCallbackName)
  A0_0.Attackers = {}
  A0_0.attackDuration = 5
  A0_0.MeleeAttackers = 0
  A0_0.MeleeRangeSq = A0_0.MeleeRange * A0_0.MeleeRange
  A0_0.Enabled = true
end
function SkittishMonster.Start(A0_1)
  Event("WanderPause")
  ResetAndStartTimer(A0_1.TimerCallbackName)
end
function SkittishMonster.SkittishResume(A0_2)
  local L1_3
  A0_2.Enabled = true
end
function SkittishMonster.SkittishPause(A0_4)
  local L1_5
  A0_4.Enabled = false
end
function SkittishMonster.Stop(A0_6)
  Event("WanderResume")
  StopTimer(A0_6.TimerCallbackName)
end
function SkittishMonster.SendMeleeState(A0_7)
  if A0_7.MeleeAttackers > 0 then
    Event("MeleeAttacked")
  else
    Event("RangeAttacked")
  end
end
function SkittishMonster.LeashedCallForHelp(A0_8, A1_9, A2_10)
  local L3_11
  L3_11 = A0_8.Enabled
  if L3_11 == false then
    return
  end
  L3_11 = true
  if GetDistSquared(GetMyPos(), GetPos(A2_10)) > A0_8.MeleeRangeSq then
    L3_11 = false
  end
  for _FORV_7_, _FORV_8_ in ipairs(A0_8.Attackers) do
    if _FORV_8_.attacker == A2_10 then
      _FORV_8_.remainingTime = A0_8.attackDuration
      if L3_11 ~= _FORV_8_.isMelee then
        if L3_11 == true then
          A0_8.MeleeAttackers = A0_8.MeleeAttackers + 1
        else
          A0_8.MeleeAttackers = A0_8.MeleeAttackers - 1
        end
      end
      _FORV_8_.isMelee = L3_11
      A0_8:SendMeleeState()
      return
    end
  end
  if #A0_8.Attackers == 0 then
    A0_8:Start()
  end
  A0_8.Attackers[#A0_8.Attackers + 1] = {
    attacker = GetUnitRef(A2_10),
    remainingTime = A0_8.attackDuration,
    isMelee = L3_11
  }
  if L3_11 == true then
    A0_8.MeleeAttackers = A0_8.MeleeAttackers + 1
  end
  A0_8:SendMeleeState()
end
function SkittishMonster.ComponentHalt(A0_12)
  StopTimer(A0_12.TimerCallbackName)
end
function TimerSkittishMonster()
  SkittishMonster:Timer()
end
function SkittishMonster.Timer(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18, L6_19
  L1_14 = GetState
  L1_14 = L1_14()
  L2_15 = AI_HALTED
  if L1_14 ~= L2_15 then
    L2_15 = A0_13.Enabled
  elseif L2_15 == false then
    return
  end
  L2_15 = 1
  while true do
    L3_16 = A0_13.Attackers
    L3_16 = #L3_16
    if L2_15 <= L3_16 then
      L3_16 = A0_13.Attackers
      L3_16 = L3_16[L2_15]
      L4_17 = L3_16.remainingTime
      L5_18 = A0_13.timerDuration
      L4_17 = L4_17 - L5_18
      L3_16.remainingTime = L4_17
      L4_17 = L3_16.remainingTime
      if not (L4_17 <= 0) then
        L4_17 = TryGetUnitFromRef
        L5_18 = L3_16.attacker
        L4_17 = L4_17(L5_18)
      end
      if not L4_17 then
        L4_17 = RemoveElement
        L5_18 = A0_13.Attackers
        L6_19 = L2_15
        L4_17(L5_18, L6_19)
        L4_17 = A0_13.Attackers
        L4_17 = #L4_17
        if L4_17 == 0 then
          L5_18 = A0_13
          L4_17 = A0_13.Stop
          L4_17(L5_18)
          return
        end
      else
        L2_15 = L2_15 + 1
      end
    end
  end
  L3_16 = GetPos
  L4_17 = TryGetUnitFromRef
  L5_18 = A0_13.Attackers
  L5_18 = L5_18[1]
  L5_18 = L5_18.attacker
  L6_19 = L4_17(L5_18)
  L3_16 = L3_16(L4_17, L5_18, L6_19, L4_17(L5_18))
  L4_17 = GetMyPos
  L4_17 = L4_17()
  L5_18 = L4_17 - L3_16
  L6_19 = L5_18.length
  L6_19 = L6_19(L5_18)
  if L6_19 < 0.01 then
    L6_19 = GetFacingDirection
    L6_19 = L6_19()
    L5_18 = L6_19
  end
  L6_19 = L5_18.normalize
  L6_19 = L6_19(L5_18)
  offset = L6_19
  L6_19 = offset
  L6_19 = 600 * L6_19
  L6_19 = L4_17 + L6_19
  SetStateAndMove(AI_MOVE, L6_19)
end
function RemoveElement(A0_20, A1_21)
  local L2_22, L3_23, L4_24, L5_25, L6_26
  for L5_25 = A1_21 + 1, #A0_20 do
    L6_26 = L5_25 - 1
    A0_20[L6_26] = A0_20[L5_25]
  end
  A0_20[L2_22] = nil
end
