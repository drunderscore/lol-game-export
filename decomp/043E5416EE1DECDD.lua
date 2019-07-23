local L0_0, L1_1
function L0_0()
  PreloadSpell("AllStarsFandomChatBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("AllStarsFandomChatBuff", false)
end
OnInitServer = L0_0
