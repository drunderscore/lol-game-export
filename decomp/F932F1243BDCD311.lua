local L0_0, L1_1
function L0_0()
  PreloadSpell("DoomBotsBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("DoomBotsBuff", false)
end
OnInitServer = L0_0
