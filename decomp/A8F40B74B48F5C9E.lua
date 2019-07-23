local L0_0, L1_1
function L0_0()
  PreloadSpell("WorldsFandomChatBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("WorldsFandomChatBuff", false)
end
OnInitServer = L0_0
