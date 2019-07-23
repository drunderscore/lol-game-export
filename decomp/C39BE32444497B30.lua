local L0_0, L1_1
L0_0 = 100
TEAM_ORDER = L0_0
L0_0 = 200
TEAM_CHAOS = L0_0
L0_0 = 1
AMBIENT_XP = L0_0
function L0_0(A0_2)
  AMBIENT_XP = A0_2:GetFloat()
  LuaForEachChampion(TEAM_ORDER, "InitBonusAmbientXP")
  LuaForEachChampion(TEAM_CHAOS, "InitBonusAmbientXP")
end
OnInitServer = L0_0
function L0_0(A0_3)
  ApplyPersistentBuff(A0_3, "BonusAmbientXP", false, 1, 1)
  AddBuffCounter(A0_3, "BonusAmbientXP", AMBIENT_XP, 100)
end
InitBonusAmbientXP = L0_0
