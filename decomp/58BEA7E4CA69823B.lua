local L1_0
function L1_0(A0_1)
  for _FORV_4_, _FORV_5_ in ipairs(A0_1) do
    Marker = SpawnMinion("CampRespawn", "SRU_CampRespawnMarker", "Idle.lua", Make3DPoint(2000, 70, 2000), TEAM_NEUTRAL, false, true, true, true, true, true)
    ApplyPersistentBuff(Marker, "CampRespawnInitial", false, 1, 1)
  end
end
SpawnCampSpawnMarkers = L1_0
