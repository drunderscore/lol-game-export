local L0_0, L1_1
function L0_0()
  CreateChildTurret("Turret_T1_C_08", "HA_AP_OrderTurret", TEAM_ORDER, 4, 1)
  CreateChildTurret("Turret_T1_C_07", "HA_AP_OrderTurret2", TEAM_ORDER, 3, 1)
  CreateChildTurret("Turret_T1_C_09", "HA_AP_OrderTurret3", TEAM_ORDER, 2, 1)
  CreateChildTurret("Turret_T1_C_010", "HA_AP_OrderTurret3", TEAM_ORDER, 1, 1)
  CreateChildTurret("Turret_T2_L_01", "HA_AP_ChaosTurret", TEAM_CHAOS, 4, 1)
  CreateChildTurret("Turret_T2_L_02", "HA_AP_ChaosTurret2", TEAM_CHAOS, 3, 1)
  CreateChildTurret("Turret_T2_L_03", "HA_AP_ChaosTurret3", TEAM_CHAOS, 2, 1)
  CreateChildTurret("Turret_T2_L_04", "HA_AP_ChaosTurret3", TEAM_CHAOS, 1, 1)
  CreateChildTurret("Turret_OrderTurretShrine", "HA_AP_OrderShrineTurret", TEAM_ORDER, 0, 1)
  CreateChildTurret("Turret_ChaosTurretShrine", "HA_AP_ChaosTurretShrine", TEAM_CHAOS, 0, 1)
end
CreateLevelProps = L0_0
function L0_0()
  CreateChildTurret("Turret_T1_C_08", "HA_AP_OrderTurretTutorial", TEAM_ORDER, 4, 1)
  CreateChildTurret("Turret_T1_C_07", "HA_AP_OrderTurretTutorial", TEAM_ORDER, 3, 1)
  CreateChildTurret("Turret_T2_L_01", "HA_AP_ChaosTurretTutorial", TEAM_CHAOS, 4, 1)
  CreateChildTurret("Turret_OrderTurretShrine", "HA_AP_OrderShrineTurret", TEAM_ORDER, 0, 1)
end
CreateLevelPropsTutorial = L0_0
