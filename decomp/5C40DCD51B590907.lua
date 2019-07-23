local L0_0, L1_1
function L0_0()
  PreloadSpell("AwesomeBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("AwesomeBuff", true)
end
OnInitServer = L0_0
