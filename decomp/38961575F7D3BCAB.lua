local L0_0, L1_1
function L0_0()
  PreloadSpell("NightmareBotNightmareManager")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("NightmareBotNightmareManager", false)
end
OnInitServer = L0_0
