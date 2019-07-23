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
EVENT_STAGE_PREANNOUNCE_TIME = 30
EVENT_STAGE_SDANNOUNCE_TIME = 3600
function OnInitClient()
  PreloadSpell("TournamentsSuddenDeathManager")
end
function OnInitServer()
  ApplyPersistentBuffToAllChampions("TournamentsSuddenDeathManager", true)
  SetWorldVar("ThisGameIsATournamentGame", true)
  SetWorldVar("SuddenDeathAnnouncementTime", EVENT_STAGE_SDANNOUNCE_TIME)
end
