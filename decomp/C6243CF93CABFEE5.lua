local L0_0, L1_1
function L0_0()
  PreloadSpell("AprilFools2019_MinionEmoteBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("AprilFools2019_MinionEmoteBuff", false)
end
OnInitServer = L0_0
