local L0_0, L1_1
L0_0 = 100
TEAM_ORDER = L0_0
L0_0 = 200
TEAM_CHAOS = L0_0
L0_0 = 1
DIFFICULTY_INDEX = L0_0
function L0_0()
  local L0_2, L1_3
end
OnInitClient = L0_0
function L0_0(A0_4)
  DIFFICULTY_INDEX = A0_4:GetFloat()
  LuaForEachChampion(TEAM_ORDER, "SetNightmareBotDifficulty")
  LuaForEachChampion(TEAM_CHAOS, "SetNightmareBotDifficulty")
end
OnInitServer = L0_0
function L0_0(A0_5)
  ApplyPersistentBuff(A0_5, "NightmareBotDifficulty", false, DIFFICULTY_INDEX, 3)
end
SetNightmareBotDifficulty = L0_0
