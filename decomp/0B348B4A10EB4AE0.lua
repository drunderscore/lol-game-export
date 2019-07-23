local L0_0, L1_1
function L0_0()
  PreloadSpell("BWPlayerBuff")
  PreloadCharacter("BilgeLaneMelee_Order")
  PreloadCharacter("BilgeLaneMelee_Chaos")
  PreloadCharacter("BilgeLaneRanged_Order")
  PreloadCharacter("BilgeLaneRanged_Chaos")
  PreloadCharacter("BilgeLaneCannon_Order")
  PreloadCharacter("BilgeLaneCannon_Chaos")
  PreloadCharacter("BW_Razorfin")
  PreloadCharacter("BW_Ironback")
  PreloadCharacter("BW_Plundercrab")
  PreloadCharacter("BW_Ocklepod")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("BWPlayerBuff", false)
end
OnInitServer = L0_0
