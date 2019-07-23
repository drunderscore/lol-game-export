local L0_0, L1_1
function L0_0()
  PreloadSpell("MEM_Persistent")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("MEM_Persistent", false)
end
OnInitServer = L0_0
