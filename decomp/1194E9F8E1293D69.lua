local L0_0, L1_1
function L0_0()
  PreloadSpell("IntroBotDamageIndicatorController")
  PreloadSpell("IntroBotPlayerDamageReduction")
  PreloadSpell("IntroBotPlayerExp")
  PreloadSpell("IntroBotForceBuy")
  PreloadSpell("IntroBotReducedAttackRange")
end
OnInitClient = L0_0
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6
  for L3_5 = 0, 4 do
    L4_6 = GetPlayerByClientID
    L4_6 = L4_6(L3_5)
    if L4_6 ~= nil then
      ApplyPersistentBuff(L4_6, "IntroBotDamageIndicatorController", false, 1, 1)
      ApplyPersistentBuff(L4_6, "IntroBotPlayerDamageReduction", false, 1, 1)
      ApplyPersistentBuff(L4_6, "IntroBotPlayerExp", false, 1, 1)
      ApplyPersistentBuff(L4_6, "IntroBotForceBuy", false, 1, 1)
    end
  end
  L0_2(L1_3, L2_4)
end
OnInitServer = L0_0
