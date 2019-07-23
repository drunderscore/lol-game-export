local L0_0, L1_1
function L0_0()
  DebugPrintToChat("hello friends cats")
  return false
end
OnInit = L0_0
function L0_0(A0_2, A1_3)
  DebugPrintToChat("order")
  if GetState() == AI_HALTED then
    return
  end
  if A0_2 == ORDER_ATTACKTO then
    DebugPrintToChat("attack order received")
    SetStateAndCloseToTarget(AI_ATTACK, A1_3)
    SetRoamState(1)
    return true
  end
  Error("Unsupported Order")
  return false
end
OnOrder = L0_0
