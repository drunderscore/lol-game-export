local L0_0, L1_1
function L0_0()
  PreloadSpell("KingPoroPortals_MasterBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("KingPoroPortals_MasterBuff", false)
end
OnInitServer = L0_0
