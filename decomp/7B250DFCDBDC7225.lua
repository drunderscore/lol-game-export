local L1_0
function L1_0()
  ApplyPersistentBuffToAllChampions("TreelineMasterBuffHexakill", false)
  NeutralMinionCamps[8].GroupsRespawnTime = 240
end
OnInitServer = L1_0
