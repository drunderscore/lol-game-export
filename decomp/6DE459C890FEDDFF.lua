local L0_0
L0_0 = {
  {
    Name = "Top",
    Pos = Make3DPoint(2721, 22.09, 11893.56)
  },
  {
    Name = "Bot",
    Start = Make3DPoint(11861.1, -44.44, 3208.69)
  }
}
LaneSigilDefinitions = L0_0
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6
  for L3_4, L4_5 in L0_1(L1_2) do
    L5_6 = {}
    L5_6.Pos = L4_5.Pos
    L5_6.EffectName = "ItemMuramanaToggle.troy"
    L5_6.TargetPos = L4_5.Pos
    L5_6.FOWVisibilityRadius = 10
    L5_6.SendIfOnScreenOrDiscard = false
    L5_6.PersistsThroughReconnect = true
    L5_6.BindFlexToOwnerPAR = false
    L5_6.FollowsGroundTilt = true
    L5_6.FacesTarget = true
    L5_6.HideFromSpectator = false
    L5_6.TimeoutInFOW = 99999
    L5_6.Scale = 0.5
    SpellEffectCreateFromTable(L5_6)
  end
end
SpawnLaneSigilEffects = L0_0
