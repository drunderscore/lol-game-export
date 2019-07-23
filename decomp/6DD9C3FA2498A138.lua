local L0_0, L1_1
function L0_0()
  PreloadSpell("Poultry_MEM")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("Poultry_MEM", false)
end
OnInitServer = L0_0
