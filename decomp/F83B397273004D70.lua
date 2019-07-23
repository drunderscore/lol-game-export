local L0_0, L1_1
function L0_0()
  PreloadCharacter("KingPoro")
end
OnInitClient = L0_0
function L0_0()
  PreloadCharacter("KingPoro")
  ApplyPersistentBuffToAllChampions("KINGPORO_PlayerBuff", false)
end
OnInitServer = L0_0
