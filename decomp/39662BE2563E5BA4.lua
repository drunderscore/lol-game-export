local L0_0, L1_1
L0_0 = 100
TEAM_ORDER = L0_0
L0_0 = 200
TEAM_CHAOS = L0_0
L0_0 = 2
MIDDLE_TOWER = L0_0
L0_0 = 0
RIGHT_LANE = L0_0
L0_0 = 1
CENTER_LANE = L0_0
L0_0 = 2
LEFT_LANE = L0_0
function L0_0(A0_2)
  modifier = math.floor(A0_2:GetFloat() * 100)
  SetBuffOnTeamTurrets(TEAM_ORDER, modifier)
  SetBuffOnTeamTurrets(TEAM_CHAOS, modifier)
end
HumanInnerTurretDamageModOnInit = L0_0
function L0_0(A0_3, A1_4)
  local L2_5, L3_6, L4_7, L5_8
  for L5_8 = RIGHT_LANE, LEFT_LANE do
    innerTurret = GetTurret(A0_3, L5_8, MIDDLE_TOWER)
    ApplyPersistentBuff(innerTurret, "ModTurretDamageToHumans", false, 1, 1)
    AddBuffCounter(innerTurret, "ModTurretDamageToHumans", A1_4, 100)
  end
end
SetBuffOnTeamTurrets = L0_0
