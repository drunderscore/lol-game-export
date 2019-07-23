local L0_0, L1_1
function L0_0()
  PreloadSpell("IDAHOTB2019_RainbowTrailBuff")
end
OnInitClient = L0_0
function L0_0()
  ApplyPersistentBuffToAllChampions("IDAHOTB2019_RainbowTrailBuff", false)
end
OnInitServer = L0_0
