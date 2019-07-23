local L0_0, L1_1
function L0_0()
  PreloadSpell("DeterminismTestBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("DeterminismTestBuff", false)
end
OnInitServer = L0_0
