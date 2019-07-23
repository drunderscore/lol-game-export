local L0_0, L1_1
function L0_0()
  local L0_2, L1_3
end
OnInitClient = L0_0
function L0_0()
  local L0_4, L1_5, L2_6, L3_7, L4_8
  for L3_7 = 0, 4 do
    L4_8 = GetPlayerByClientID
    L4_8 = L4_8(L3_7)
    if L4_8 ~= nil then
      ApplyPersistentBuff(L4_8, "IntroBotDamageIndicatorController", false, 1, 1)
      ApplyPersistentBuff(L4_8, "IntroBotPlayerDamageReduction", false, 1, 1)
      ApplyPersistentBuff(L4_8, "IntroBotPlayerExp", false, 1, 1)
    end
  end
  L0_4(L1_5, L2_6)
end
OnInitServer = L0_0
