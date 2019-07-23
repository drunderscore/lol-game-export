local L0_0, L1_1
L0_0 = 100
TEAM_ORDER = L0_0
L0_0 = 200
TEAM_CHAOS = L0_0
L0_0 = 0
DELAY = L0_0
function L0_0(A0_2)
  DELAY = A0_2:GetFloat()
  LuaForEachChampion(TEAM_ORDER, "InitBonusAmbientXPDelay")
  LuaForEachChampion(TEAM_CHAOS, "InitBonusAmbientXPDelay")
end
OnInitServer = L0_0
function L0_0(A0_3)
  ApplyPersistentBuff(A0_3, "BonusAmbientXPDelay", false, 1, 1)
  AddBuffCounter(A0_3, "BonusAmbientXPDelay", DELAY, 120)
end
InitBonusAmbientXPDelay = L0_0
