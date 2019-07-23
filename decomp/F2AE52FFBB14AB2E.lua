local L0_0, L1_1
function L0_0()
  local L0_2
  L0_2 = SetState
  L0_2(AI_IDLE)
  L0_2 = GetGoldRedirectTarget
  L0_2 = L0_2()
  if L0_2 == nil then
    Die(me)
    return
  end
  EnableTargetTracking(me, L0_2, 4)
  return false
end
OnInit = L0_0
function L0_0(A0_3, A1_4, A2_5)
  if A0_3 == ORDER_CASTSPELL then
    AddTeleportToTargetTracking(me, A2_5)
  end
  return true
end
OnOrder = L0_0
