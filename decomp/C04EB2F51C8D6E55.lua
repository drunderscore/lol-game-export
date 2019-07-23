local L0_0, L1_1
function L0_0()
  PreloadCharacter("KINGPORO_PoroFollower")
end
OnInitClient = L0_0
function L0_0()
  PreloadCharacter("KINGPORO_PoroFollower")
  ApplyPersistentBuffToAllChampions("PoroFollowerManager", false)
  ApplyPersistentBuffToAllChampions("SNOWURF_PlayerBuff", false)
end
OnInitServer = L0_0
