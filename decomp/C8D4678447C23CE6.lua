if REGEN_PERCENT_PER_SECOND == nil then
  REGEN_PERCENT_PER_SECOND = 0.035
end
INITIAL_REGEN_BOOST = 0.25
OutOfCombatRegen = {TimerCallbackName = "TimerRegen"}
RegisterForEvent("ComponentInit", OutOfCombatRegen)
RegisterForEvent("ComponentHalt", OutOfCombatRegen)
function OutOfCombatRegen.ComponentInit(A0_0, A1_1, A2_2, A3_3)
  InitTimer(A0_0.TimerCallbackName, 0.25, true)
  OutOfCombatRegen:Stop()
end
function OutOfCombatRegen.ComponentHalt(A0_4)
  OutOfCombatRegen:Stop()
end
function TimerRegen()
  local L0_5, L1_6, L2_7, L3_8, L4_9, L5_10
  L0_5 = GetState
  L0_5 = L0_5()
  L1_6 = AI_HALTED
  if L0_5 == L1_6 then
    return
  end
  L1_6 = GetCharVar
  L2_7 = "StartBoostRegen"
  L1_6 = L1_6(L2_7)
  L2_7 = GetMaxHP
  L2_7 = L2_7()
  L3_8 = REGEN_PERCENT_PER_SECOND
  L3_8 = L2_7 * L3_8
  if L1_6 > 0 then
    L4_9 = L1_6 * 3
    L4_9 = 1 + L4_9
    L3_8 = L3_8 * L4_9
    L1_6 = L1_6 - 0.2
    L4_9 = SetCharVar
    L5_10 = "StartBoostRegen"
    L4_9(L5_10, L1_6)
  end
  L4_9 = GetHP
  L4_9 = L4_9()
  if L4_9 > 0 then
    L5_10 = L4_9 + L3_8
    SetHP(L5_10)
  end
end
function OutOfCombatRegen.Start(A0_11)
  ResetAndStartTimer(A0_11.TimerCallbackName)
end
function OutOfCombatRegen.Stop(A0_12)
  StopTimer(A0_12.TimerCallbackName)
end
