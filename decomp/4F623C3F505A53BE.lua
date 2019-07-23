DoLuaShared("GlobalLevelScript")
TEAM_ORDER = 100
TEAM_CHAOS = 200
ORDER_HQ = 1
CHAOS_HQ = 2
FRONT_TOWER = 3
MIDDLE_TOWER = 2
BACK_TOWER = 1
HQ_TOWER2 = 4
HQ_TOWER1 = 5
RIGHT_LANE = 0
CENTER_LANE = 1
LEFT_LANE = 2
INITIAL_TIME_TO_SPAWN = 100000
EVENT_STAGE_WELCOME_TIME = 1
EVENT_STAGE_PREANNOUNCE_TIME = 10
function OnLevelInit()
  local L0_0, L1_1
end
function OnGameStartup()
  local L0_2, L1_3
end
function OnGameSwapChampion(A0_4)
  ApplyPersistentBuff(A0_4, "Odyssey_PlayerBuff", false, 1, 1)
end
