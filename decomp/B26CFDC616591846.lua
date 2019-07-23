local L0_0, L1_1
L0_0 = {}
EventRecipients = L0_0
function L0_0(A0_2, A1_3)
  local L2_4, L3_5
  L2_4 = EventRecipients
  L2_4 = L2_4[A0_2]
  if L2_4 == nil then
    L2_4 = EventRecipients
    L3_5 = {A1_3}
    L2_4[A0_2] = L3_5
    L2_4 = _G
    function L3_5(...)
      local L1_7, L2_8, L3_9, L4_10, L5_11
      for L4_10, L5_11 in L1_7(L2_8) do
        L5_11[_UPVALUE0_](L5_11, ...)
      end
    end
    L2_4[A0_2] = L3_5
  else
    L2_4 = EventRecipients
    L2_4 = L2_4[A0_2]
    L3_5 = false
    for _FORV_7_, _FORV_8_ in ipairs(L2_4) do
      if _FORV_8_ == A1_3 then
        L3_5 = true
      end
    end
    if not L3_5 then
      L2_4[#L2_4 + 1] = A1_3
    end
  end
end
RegisterForEvent = L0_0
function L0_0(A0_12, ...)
  local L2_14, L3_15, L4_16
  L2_14 = EventRecipients
  L2_14 = L2_14[A0_12]
  if L2_14 ~= nil then
    L3_15 = #L2_14
    if L3_15 > 0 then
      L3_15 = _G
      L3_15 = L3_15[A0_12]
      L4_16 = ...
      L3_15(L4_16)
    end
  end
end
Event = L0_0
