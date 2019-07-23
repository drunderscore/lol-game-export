DoLuaLevel("GlobalLevelScript")
EVENT_STAGE_WELCOME_TIME = 15
EVENT_STAGE_PREANNOUNCE_TIME = 30
EVENT_STAGE_MINIONS_SPAWNED_TIME = 120
MAX_MINIONS_EVER = 180
TEAM_ORDER = 100
TEAM_CHAOS = 200
ORDER_HQ = 1
CHAOS_HQ = 2
FRONT_TOWER = 4
MID_TOWER = 3
BACK_TOWER = 2
BACK_TOWER2 = 1
CENTER_LANE = 1
INITIAL_TIME_TO_SPAWN = 45
CANNON_MINION_SPAWN_FREQUENCY = 2
MINION_HEALTH_DENIAL_PERCENT = 0
UPGRADE_MINION_TIMER = 49.99
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = 6
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = 3
EXP_GIVEN_RADIUS = 1400
GOLD_GIVEN_RADIUS = 1250
DISABLE_MINION_SPAWN_BASE_TIME = 250
DISABLE_MINION_SPAWN_MAG_TIME = 0
CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION = 11.67
ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION = 11
LAST_WAVE = -1
HQTurretAttackable = false
UpgradedMinionIterations = 0
SpawnTable = {
  WaveSpawnRate = 25000,
  SingleMinionSpawnDelay = 800,
  ExpRadius = EXP_GIVEN_RADIUS,
  GoldRadius = GOLD_GIVEN_RADIUS
}
MeleeDefaultMinionInfo = {
  DefaultNumPerWave = 3,
  Armor = 0,
  ArmorUpgrade = 1,
  MagicResistance = 0,
  MagicResistanceUpgrade = 0.625,
  HPBonus = 0,
  HPUpgrade = 18,
  HPUpgradeGrowth = 0.3,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 2.25,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 1,
  DamageInhibitor = 0,
  ExpGiven = 64,
  ExpBonus = 0,
  ExpUpgrade = 5,
  ExpInhibitor = 0,
  GoldGiven = 19.875,
  GoldBonus = 0,
  GoldUpgrade = 0.125,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 12,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0
}
CasterDefaultMinionInfo = {
  DefaultNumPerWave = 3,
  Armor = 0,
  ArmorUpgrade = 0.625,
  MagicResistance = 0,
  MagicResistanceUpgrade = 1,
  HPBonus = 0,
  HPUpgrade = 6,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 0.75,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 2,
  DamageInhibitor = 0,
  ExpGiven = 32,
  ExpBonus = 0,
  ExpUpgrade = 3,
  ExpInhibitor = 0,
  GoldGiven = 16.875,
  GoldBonus = 0,
  GoldUpgrade = 0,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 8,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0
}
CannonDefaultMinionInfo = {
  DefaultNumPerWave = 0,
  Armor = 0,
  ArmorUpgrade = 1.5,
  MagicResistance = 0,
  MagicResistanceUpgrade = 1.5,
  HPBonus = 0,
  HPUpgrade = 23,
  HPUpgradeGrowth = 0.3,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 3,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 1.5,
  DamageInhibitor = 0,
  ExpGiven = 100,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 44.65,
  GoldBonus = 0,
  GoldUpgrade = 0.35,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 30,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0
}
SuperDefaultMinionInfo = {
  DefaultNumPerWave = 0,
  Armor = 0,
  ArmorUpgrade = 0,
  MagicResistance = 0,
  MagicResistanceUpgrade = 0,
  HPBonus = 0,
  HPUpgrade = 100,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = 0,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 5,
  DamageInhibitor = 0,
  ExpGiven = 100,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 44.65,
  GoldBonus = 0,
  GoldUpgrade = 0.35,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 30,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0
}
OrderMeleeMinionInfo = {
  MinionName = "HA_OrderMinionMelee",
  DefaultInfo = MeleeDefaultMinionInfo
}
ChaosMeleeMinionInfo = {
  MinionName = "HA_ChaosMinionMelee",
  DefaultInfo = MeleeDefaultMinionInfo
}
OrderCasterMinionInfo = {
  MinionName = "HA_OrderMinionRanged",
  DefaultInfo = CasterDefaultMinionInfo
}
ChaosCasterMinionInfo = {
  MinionName = "HA_ChaosMinionRanged",
  DefaultInfo = CasterDefaultMinionInfo
}
OrderCannonMinionInfo = {
  MinionName = "HA_OrderMinionSiege",
  DefaultInfo = CannonDefaultMinionInfo
}
ChaosCannonMinionInfo = {
  MinionName = "HA_ChaosMinionSiege",
  DefaultInfo = CannonDefaultMinionInfo
}
OrderSuperMinionInfo = {
  MinionName = "HA_OrderMinionSuper",
  DefaultInfo = SuperDefaultMinionInfo
}
ChaosSuperMinionInfo = {
  MinionName = "HA_ChaosMinionSuper",
  DefaultInfo = SuperDefaultMinionInfo
}
DefaultBarrackInfo = {
  IsDestroyed = false,
  NumOfSpawnDisables = 0,
  WillSpawnSuperMinion = 0,
  SpawnOrderMinionNames = {
    "Super",
    "Melee",
    "Cannon",
    "Caster"
  }
}
DefaultOrderMinionInfoTable = {
  Melee = OrderMeleeMinionInfo,
  Caster = OrderCasterMinionInfo,
  Cannon = OrderCannonMinionInfo,
  Super = OrderSuperMinionInfo
}
DefaultChaosMinionInfoTable = {
  Melee = ChaosMeleeMinionInfo,
  Caster = ChaosCasterMinionInfo,
  Cannon = ChaosCannonMinionInfo,
  Super = ChaosSuperMinionInfo
}
OrderBarrack0 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultOrderMinionInfoTable}
OrderBarrack1 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultOrderMinionInfoTable}
OrderBarrack2 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultOrderMinionInfoTable}
ChaosBarrack0 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultChaosMinionInfoTable}
ChaosBarrack1 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultChaosMinionInfoTable}
ChaosBarrack2 = {DefaultInfo = DefaultBarrackInfo, DefaultMinionInfoTable = DefaultChaosMinionInfoTable}
function AppendTable(A0_0, A1_1, A2_2, A3_3)
  local L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
  if A1_1 ~= nil then
    L4_4 = type
    L5_5 = A1_1
    L4_4 = L4_4(L5_5)
    if L4_4 == "table" then
      L4_4, L5_5 = nil, nil
      if A0_0 == nil then
        A0_0 = L6_6
      end
      for L9_9, L10_10 in L6_6(L7_7) do
        if A2_2 == true and type(L10_10) == "table" then
          A0_0[L9_9] = AppendTable(A0_0[L9_9], L10_10, A3_3, A3_3)
        else
          A0_0[L9_9] = L10_10
        end
      end
    end
  end
  return A0_0
end
function InitBarrackInfo(A0_11)
  local L1_12, L2_13, L3_14, L4_15, L5_16, L6_17, L7_18, L8_19, L9_20
  L1_12 = AppendTable
  L2_13 = A0_11
  L1_12 = L1_12(L2_13, L3_14, L4_15, L5_16)
  A0_11 = L1_12
  L1_12 = AppendTable
  L2_13 = A0_11.MinionInfoTable
  L1_12 = L1_12(L2_13, L3_14, L4_15, L5_16)
  A0_11.MinionInfoTable = L1_12
  L1_12 = A0_11.MinionInfoTable
  if L1_12 ~= nil then
    L1_12 = A0_11.MinionInfoTable
    L2_13 = nil
    for L7_18, L8_19 in L4_15(L5_16) do
      L9_20 = L1_12[L7_18]
      if L9_20.DefaultInfo ~= nil then
        AppendTable(L9_20, L9_20.DefaultInfo, true, true)
        L9_20.NumPerWave = L9_20.DefaultNumPerWave
        L9_20.GoldGivenBase = L9_20.GoldGiven
        L9_20.ExpGivenBase = L9_20.ExpGiven
      end
    end
  end
  L1_12 = A0_11.Overrides
  if L1_12 ~= nil then
    L1_12, L2_13 = nil, nil
    for L6_17, L7_18 in L3_14(L4_15) do
      L8_19 = type
      L9_20 = A0_11[L6_17]
      L8_19 = L8_19(L9_20)
      if L8_19 == "table" then
        L8_19 = type
        L9_20 = L7_18
        L8_19 = L8_19(L9_20)
        if L8_19 == "table" then
          L8_19 = AppendTable
          L9_20 = A0_11[L6_17]
          L8_19(L9_20, L7_18, true, true)
        end
      else
        L8_19 = type
        L9_20 = L7_18
        L8_19 = L8_19(L9_20)
        if L8_19 ~= "table" then
          A0_11[L6_17] = L7_18
        end
      end
    end
  end
  return A0_11
end
OrderBarracksBonuses = {
  InitBarrackInfo(OrderBarrack0),
  InitBarrackInfo(OrderBarrack1),
  InitBarrackInfo(OrderBarrack2)
}
ChaosBarracksBonuses = {
  InitBarrackInfo(ChaosBarrack0),
  InitBarrackInfo(ChaosBarrack1),
  InitBarrackInfo(ChaosBarrack2)
}
OrderBuildingStatus = {
  Turret4 = true,
  Turret3 = true,
  Turret2 = true,
  Turret1 = true,
  Barracks = true,
  HQ = true
}
ChaosBuildingStatus = {
  Turret4 = true,
  Turret3 = true,
  Turret2 = true,
  Turret1 = true,
  Barracks = true,
  HQ = true
}
TotalNumberOfMinions = 0
function PreloadBarrackCharacters(A0_21)
  local L1_22, L2_23
  for _FORV_6_, _FORV_7_ in pairs(A0_21.DefaultMinionInfoTable) do
    if _FORV_7_.PreloadedCharacter == nil then
      _FORV_7_.PreloadedCharacter = 1
      PreloadCharacter(_FORV_7_.MinionName)
    end
  end
end
function OnLevelInit()
  local L0_24, L1_25, L2_26, L3_27, L4_28, L5_29, L6_30, L7_31, L8_32, L9_33, L10_34, L11_35, L12_36, L13_37
  L3_27(L4_28)
  L3_27(L4_28)
  L3_27(L4_28)
  for L6_30, L7_31 in L3_27(L4_28) do
    L8_32 = PreloadBarrackCharacters
    L8_32(L9_33)
  end
  for L6_30, L7_31 in L3_27(L4_28) do
    L8_32 = PreloadBarrackCharacters
    L8_32(L9_33)
  end
  L3_27.WaveSpawnRate = 25000
  L3_27.SingleMinionSpawnDelay = 800
  if L3_27 == "FIRSTBLOOD" then
    L4_28.ExpGiven = 64
    L4_28.GoldGiven = 19.75
    L4_28.GoldUpgrade = 0.25
    L4_28.HPUpgrade = 10
    L4_28.DamageUpgrade = 0.5
    L4_28.ExpUpgrade = 2
    L4_28.ArmorUpgrade = 1
    L4_28.MagicResistanceUpgrade = 0.625
    L4_28.GoldMaximumBonus = 12
    L5_29.ExpGiven = 32
    L5_29.GoldGiven = 14.75
    L5_29.GoldUpgrade = 0.25
    L5_29.HPUpgrade = 7.5
    L5_29.DamageUpgrade = 1
    L5_29.ExpUpgrade = 1.2
    L5_29.ArmorUpgrade = 0.625
    L5_29.MagicResistanceUpgrade = 1
    L5_29.GoldMaximumBonus = 8
    L6_30 = {}
    L6_30.ExpGiven = 100
    L6_30.GoldGiven = 39.5
    L6_30.GoldUpgrade = 0.5
    L6_30.HPUpgrade = 10
    L6_30.DamageUpgrade = 1.5
    L6_30.ExpUpgrade = 3
    L6_30.ArmorUpgrade = 1.5
    L6_30.MagicResistanceUpgrade = 1.5
    L6_30.GoldMaximumBonus = 30
    L7_31 = {}
    L7_31.ExpGiven = 100
    L7_31.GoldGiven = 27
    L7_31.GoldUpgrade = 0
    L7_31.HPUpgrade = 100
    L7_31.DamageUpgrade = 5
    L7_31.ExpUpgrade = 0
    L7_31.ArmorUpgrade = 0
    L7_31.MagicResistanceUpgrade = 0
    L7_31.GoldMaximumBonus = 30
    L8_32 = {}
    L8_32.Melee = L4_28
    L8_32.Caster = L5_29
    L8_32.Cannon = L6_30
    L8_32.Super = L7_31
    for L12_36, L13_37 in L9_33(L10_34) do
      for _FORV_21_, _FORV_22_ in pairs(L13_37) do
        OrderBarracksBonuses[1].MinionInfoTable[L12_36][_FORV_21_] = _FORV_22_
        ChaosBarracksBonuses[1].MinionInfoTable[L12_36][_FORV_21_] = _FORV_22_
      end
    end
    INITIAL_TIME_TO_SPAWN = L9_33
    UPGRADE_MINION_TIMER = L9_33
  end
  if L3_27 == "TUTORIAL" then
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    INITIAL_TIME_TO_SPAWN = L4_28
    L4_28.NumOfMeleeMinionsPerWave = 0
    L4_28.NumOfCasterMinionsPerWave = 0
  else
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28(L5_29)
    if L3_27 == "FIRSTBLOOD" then
      L4_28(L5_29)
      L4_28(L5_29)
      L4_28(L5_29)
      L4_28(L5_29)
      L4_28(L5_29)
    end
    L4_28(L5_29)
    L4_28(L5_29)
    L4_28.NumOfMeleeMinionsPerWave = 3
    L4_28.NumOfCasterMinionsPerWave = 3
    L6_30 = L4_28
    L5_29(L6_30)
    L5_29()
  end
  L4_28(L5_29)
end
function OnLevelInitServer()
  if GetGameMode() == "TUTORIAL" then
    InitTimer("PlaceTutorialSpawnRunes", 1, false)
  else
    InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
    InitTimer("AllowDamageOnBuildings", 10, false)
  end
end
function OnPostLevelLoad()
  local L0_38, L1_39, L2_40, L3_41, L4_42, L5_43
  L0_38 = LoadLevelScriptIntoScript
  L0_38(L1_39)
  L0_38 = GetGameMode
  L0_38 = L0_38()
  if L0_38 == "TUTORIAL" then
    L1_39()
  else
    L1_39()
    for L4_42 = RIGHT_LANE, LEFT_LANE do
      L5_43 = GetDampener
      L5_43 = L5_43(TEAM_ORDER, L4_42)
      SetDampenerRespawnAnimationDuration(L5_43, ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION)
      L5_43 = GetDampener(TEAM_CHAOS, L4_42)
      SetDampenerRespawnAnimationDuration(L5_43, CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION)
      SetLaneExposed(TEAM_ORDER, L4_42, false)
      SetLaneExposed(TEAM_CHAOS, L4_42, false)
      SetLaneTowerCount(TEAM_ORDER, L4_42, 3)
      SetLaneTowerCount(TEAM_CHAOS, L4_42, 3)
    end
    L1_39(L2_40)
    L1_39(L2_40)
    L1_39(L2_40, L3_41)
    L1_39(L2_40, L3_41)
    L1_39(L2_40, L3_41)
  end
end
function OppositeTeam(A0_44)
  if A0_44 == TEAM_CHAOS then
    return TEAM_ORDER
  else
    return TEAM_CHAOS
  end
end
function AllowDamageOnBuildings()
  local L0_45, L1_46, L2_47, L3_48, L4_49, L5_50, L6_51
  L0_45 = CENTER_LANE
  for L4_49 = BACK_TOWER2, FRONT_TOWER do
    L5_50 = GetTurret
    L6_51 = TEAM_ORDER
    L5_50 = L5_50(L6_51, L0_45, L4_49)
    if L5_50 ~= nil then
      L6_51 = FRONT_TOWER
      if L4_49 == L6_51 then
        L6_51 = SetInvulnerable
        L6_51(L5_50, false)
        L6_51 = SetTargetable
        L6_51(L5_50, true)
      else
        L6_51 = SetInvulnerable
        L6_51(L5_50, true)
        L6_51 = SetNotTargetableToTeam
        L6_51(L5_50, true, TEAM_CHAOS)
      end
    else
    end
    L6_51 = GetTurret
    L6_51 = L6_51(TEAM_CHAOS, L0_45, L4_49)
    if L6_51 ~= nil then
      if L4_49 == FRONT_TOWER then
        SetInvulnerable(L6_51, false)
        SetTargetable(L6_51, true)
      else
        SetInvulnerable(L6_51, true)
        SetNotTargetableToTeam(L6_51, true, TEAM_ORDER)
      end
    else
    end
  end
end
function ResetToDefaultWaveCounts(A0_52)
  local L1_53, L2_54
  for _FORV_6_, _FORV_7_ in pairs(A0_52) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_55)
  local L1_56, L2_57
  for _FORV_6_, _FORV_7_ in pairs(A0_55) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_58, A1_59)
  local L2_60, L3_61, L4_62
  L2_60 = 0
  L3_61 = TEAM_ORDER
  if A1_59 == L3_61 then
    L3_61 = OrderBarracksBonuses
    L4_62 = A0_58 + 1
    L2_60 = L3_61[L4_62]
  else
    L3_61 = ChaosBarracksBonuses
    L4_62 = A0_58 + 1
    L2_60 = L3_61[L4_62]
  end
  L3_61 = {}
  L4_62 = SpawnTable
  L4_62 = L4_62.WaveSpawnRate
  L3_61.WaveSpawnRate = L4_62
  L4_62 = SpawnTable
  L4_62 = L4_62.SingleMinionSpawnDelay
  L3_61.SingleMinionSpawnDelay = L4_62
  L4_62 = L2_60.IsDestroyed
  L3_61.IsDestroyed = L4_62
  L4_62 = L2_60.MinionInfoTable
  L3_61.MinionInfoTable = L4_62
  ReturnTable = L3_61
  L3_61 = ReturnTable
  return L3_61
end
function GetMinionSpawnInfo(A0_63, A1_64, A2_65, A3_66, A4_67)
  local L5_68, L7_69, L8_70
  L5_68 = 0
  L7_69 = 0
  L8_70 = TEAM_ORDER
  if A3_66 == L8_70 then
    L8_70 = OrderBarracksBonuses
    L5_68 = L8_70[1]
    L7_69 = 1
  else
    L8_70 = ChaosBarracksBonuses
    L5_68 = L8_70[1]
    L7_69 = 0
  end
  L8_70 = L5_68.MinionInfoTable
  L8_70 = L8_70.Super
  ResetToDefaultWaveCounts(L5_68.MinionInfoTable)
  if (A1_64 + 1 + L7_69) % CANNON_MINION_SPAWN_FREQUENCY == 0 and A1_64 ~= 1 then
    L5_68.MinionInfoTable.Cannon.NumPerWave = L5_68.MinionInfoTable.Cannon.NumPerWave + 1
  end
  if A4_67 ~= LAST_WAVE then
    BARRACKSCOUNT = 6
    totalMinionsRemaining = MAX_MINIONS_EVER - GetTotalTeamMinionsSpawned()
    LAST_WAVE = A4_67
  end
  if L5_68.WillSpawnSuperMinion == 1 then
    L8_70.NumPerWave = 1
    L5_68.MinionInfoTable.Cannon.NumPerWave = 0
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_68.SpawnOrderMinionNames,
    IsDestroyed = L5_68.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_68.MinionInfoTable
  }
  return ReturnTable
end
function UpgradeMinionTimer()
  local L0_71, L1_72, L2_73, L3_74, L4_75, L5_76, L6_77, L7_78, L8_79, L9_80, L10_81, L11_82
  UpgradedMinionIterations = L1_72
  L1_72(L2_73, L3_74)
  for L4_75 = 1, 2 do
    if L4_75 == 1 then
      L0_71 = OrderBarracksBonuses
    else
      L0_71 = ChaosBarracksBonuses
    end
    for L8_79 = 1, 3 do
      L9_80, L10_81 = nil, nil
      L11_82 = L0_71[L8_79]
      L11_82 = L11_82.MinionInfoTable
      for _FORV_15_, _FORV_16_ in pairs(L11_82) do
        if UpgradedMinionIterations >= UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING then
        end
        _FORV_16_.HPBonus = _FORV_16_.HPBonus + (_FORV_16_.HPUpgrade + _FORV_16_.HPUpgradeLate)
        _FORV_16_.HPUpgrade = _FORV_16_.HPUpgrade + (_FORV_16_.HPUpgradeGrowth + _FORV_16_.HPUpgradeGrowthLate)
        _FORV_16_.DamageBonus = _FORV_16_.DamageBonus + _FORV_16_.DamageUpgrade
        _FORV_16_.GoldBonus = _FORV_16_.GoldBonus + _FORV_16_.GoldUpgrade
        if _FORV_16_.GoldBonus > _FORV_16_.GoldMaximumBonus then
          _FORV_16_.GoldBonus = _FORV_16_.GoldMaximumBonus
        end
        _FORV_16_.LocalGoldBonus = _FORV_16_.LocalGoldBonus + _FORV_16_.GoldShareUpgrade
        _FORV_16_.Armor = _FORV_16_.Armor
        _FORV_16_.MagicResistance = _FORV_16_.MagicResistance
        _FORV_16_.ExpBonus = _FORV_16_.ExpBonus + _FORV_16_.ExpUpgrade
        _FORV_16_.GoldGiven = _FORV_16_.GoldBonus + _FORV_16_.GoldGivenBase
        _FORV_16_.LocalGoldGiven = _FORV_16_.LocalGoldBonus + _FORV_16_.GoldShared
        _FORV_16_.ExpGiven = _FORV_16_.ExpBonus + _FORV_16_.ExpGivenBase
      end
    end
  end
end
function DeactivateCorrectStructure(A0_83, A1_84, A2_85)
  local L3_86, L4_87
  L4_87 = GetGameMode
  L4_87 = L4_87()
  if L4_87 ~= "TUTORIAL" then
    L4_87 = TEAM_ORDER
    if A0_83 == L4_87 then
      L3_86 = OrderBuildingStatus
    else
      L3_86 = ChaosBuildingStatus
    end
    L4_87 = FRONT_TOWER
    if A2_85 == L4_87 then
      L3_86.Turret4 = false
      L4_87 = GetTurret
      L4_87 = L4_87(A0_83, A1_84, MID_TOWER)
      SetInvulnerable(L4_87, false)
      SetTargetable(L4_87, true)
    else
      L4_87 = MID_TOWER
      if A2_85 == L4_87 then
        L3_86.Turret3 = false
        L4_87 = GetDampener
        L4_87 = L4_87(A0_83, A1_84)
        SetInvulnerable(L4_87, false)
        SetTargetable(L4_87, true)
      else
        L4_87 = BACK_TOWER
        if A2_85 ~= L4_87 then
          L4_87 = BACK_TOWER2
        elseif A2_85 == L4_87 then
          L4_87 = BACK_TOWER
          if A2_85 == L4_87 then
            L3_86.Turret2 = false
          else
            L3_86.Turret1 = false
          end
          L4_87 = L3_86.Turret1
          if L4_87 == false then
            L4_87 = L3_86.Turret2
            if L4_87 == false then
              L4_87 = GetHQ
              L4_87 = L4_87(A0_83)
              SetInvulnerable(L4_87, false)
              SetTargetable(L4_87, true)
            end
          end
        end
      end
    end
  end
end
function GetLuaBarracks(A0_88, A1_89)
  local L2_90, L3_91, L4_92
  L3_91 = TEAM_ORDER
  if A0_88 == L3_91 then
    L3_91 = OrderBarracksBonuses
    L4_92 = A1_89 + 1
    L2_90 = L3_91[L4_92]
  else
    L3_91 = ChaosBarracksBonuses
    L4_92 = A1_89 + 1
    L2_90 = L3_91[L4_92]
  end
  return L2_90
end
function GetDisableMinionSpawnTime(A0_93, A1_94)
  barrack = GetLuaBarracks(A1_94, A0_93)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_95, A1_96)
  cLangBarracks = GetBarracks(A1_96, A0_95)
  luaBarrack = GetLuaBarracks(A1_96, A0_95)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_95, A1_96))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_97, A1_98)
  local L2_99, L3_100, L4_101, L5_102, L6_103
  L2_99 = BonusesCounter
  L2_99 = L2_99 + 1
  BonusesCounter = L2_99
  L2_99 = 1
  L3_100 = nil
  L4_101 = TEAM_ORDER
  if A0_97 == L4_101 then
    L3_100 = OrderBarracksBonuses
  else
    L3_100 = ChaosBarracksBonuses
  end
  L4_101, L5_102 = nil, nil
  L6_103 = L3_100[L2_99]
  L6_103 = L6_103.MinionInfoTable
  for _FORV_10_, _FORV_11_ in pairs(L6_103) do
    _FORV_11_.HPBonus = _FORV_11_.HPBonus + _FORV_11_.HPInhibitor
    _FORV_11_.DamageBonus = _FORV_11_.DamageBonus + _FORV_11_.DamageInhibitor
    _FORV_11_.ExpGiven = _FORV_11_.ExpGiven - _FORV_11_.ExpInhibitor
    _FORV_11_.GoldGiven = _FORV_11_.GoldGiven - _FORV_11_.GoldInhibitor
  end
  L3_100[L2_99].WillSpawnSuperMinion = 1
end
function ApplyBarracksRespawnReductions(A0_104, A1_105)
  local L2_106, L3_107, L4_108, L5_109, L6_110, L7_111, L8_112, L9_113
  L2_106 = Log
  L3_107 = "Inhibitor respawn, barrack ID is: "
  L4_108 = A1_105
  L3_107 = L3_107 .. L4_108
  L2_106(L3_107)
  L2_106 = CENTER_LANE
  L3_107 = nil
  L4_108 = TEAM_ORDER
  if A0_104 == L4_108 then
    L3_107 = OrderBarracksBonuses
  else
    L3_107 = ChaosBarracksBonuses
  end
  L4_108, L5_109 = nil, nil
  L6_110 = L3_107[L2_106]
  L6_110 = L6_110.MinionInfoTable
  for _FORV_10_, _FORV_11_ in L7_111(L8_112) do
    _FORV_11_.HPBonus = _FORV_11_.HPBonus - _FORV_11_.HPInhibitor
    _FORV_11_.DamageBonus = _FORV_11_.DamageBonus - _FORV_11_.DamageInhibitor
    _FORV_11_.ExpGiven = _FORV_11_.ExpGiven + _FORV_11_.ExpInhibitor
    _FORV_11_.GoldGiven = _FORV_11_.GoldGiven + _FORV_11_.GoldInhibitor
  end
  L7_111.WillSpawnSuperMinion = 0
  if A0_104 == L7_111 then
    L8_112(L9_113, true)
    L8_112(L9_113, false)
    if L8_112 ~= Nil then
      SetInvulnerable(L8_112, true)
      SetNotTargetableToTeam(L8_112, true, A0_104)
    end
    if L9_113 ~= Nil then
      SetInvulnerable(L9_113, true)
      SetNotTargetableToTeam(L9_113, true, A0_104)
    end
  elseif A0_104 == L7_111 then
    L8_112(L9_113, true)
    L8_112(L9_113, false)
    if L8_112 ~= Nil then
      SetInvulnerable(L8_112, true)
      SetNotTargetableToTeam(L8_112, true, A0_104)
    end
    if L9_113 ~= Nil then
      SetInvulnerable(L9_113, true)
      SetNotTargetableToTeam(L9_113, true, A0_104)
    end
  end
end
function BarrackReactiveEvent(A0_114, A1_115)
  local L2_116
  L2_116 = OppositeTeam(A0_114)
  dampener = GetDampener(A0_114, A1_115)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_116, A1_115)
end
function HandleDestroyedObject(A0_117)
  local L1_118, L2_119, L3_120
  L1_118 = GetHQType
  L2_119 = A0_117
  L1_118 = L1_118(L2_119)
  HQType = L1_118
  L1_118 = HQType
  L2_119 = ORDER_HQ
  if L1_118 ~= L2_119 then
    L1_118 = HQType
    L2_119 = CHAOS_HQ
  elseif L1_118 == L2_119 then
    L1_118 = HQType
    L2_119 = CHAOS_HQ
    if L1_118 == L2_119 then
      L1_118 = EndOfGameCeremony
      L2_119 = TEAM_ORDER
      L3_120 = A0_117
      L1_118(L2_119, L3_120)
    else
      L1_118 = EndOfGameCeremony
      L2_119 = TEAM_CHAOS
      L3_120 = A0_117
      L1_118(L2_119, L3_120)
    end
    return
  end
  L1_118 = IsDampener
  L2_119 = A0_117
  L1_118 = L1_118(L2_119)
  if L1_118 then
    L1_118 = GetLinkedBarrack
    L2_119 = A0_117
    L1_118 = L1_118(L2_119)
    barrack = L1_118
    L1_118 = GetTeamID
    L2_119 = barrack
    L1_118 = L1_118(L2_119)
    barrackTeam = L1_118
    L1_118 = GetLane
    L2_119 = A0_117
    L1_118 = L1_118(L2_119)
    barrackLane = L1_118
    L1_118 = DisableBarracksSpawn
    L2_119 = barrackLane
    L3_120 = barrackTeam
    L1_118(L2_119, L3_120)
    L1_118 = SetDampenerState
    L2_119 = A0_117
    L3_120 = DampenerRegenerationState
    L1_118(L2_119, L3_120)
    L1_118 = SetInvulnerable
    L2_119 = A0_117
    L3_120 = true
    L1_118(L2_119, L3_120)
    L1_118 = SetTargetable
    L2_119 = A0_117
    L3_120 = false
    L1_118(L2_119, L3_120)
    L1_118 = GetGameMode
    L1_118 = L1_118()
    if L1_118 == "TUTORIAL" then
      L1_118 = GetHQ
      L2_119 = Team
      L1_118 = L1_118(L2_119)
      L2_119 = SetInvulnerable
      L3_120 = L1_118
      L2_119(L3_120, false)
      L2_119 = SetTargetable
      L3_120 = L1_118
      L2_119(L3_120, true)
    else
      L1_118 = GetTurret
      L2_119 = barrackTeam
      L3_120 = barrackLane
      L1_118 = L1_118(L2_119, L3_120, BACK_TOWER)
      L2_119 = GetTurret
      L3_120 = barrackTeam
      L2_119 = L2_119(L3_120, barrackLane, BACK_TOWER2)
      L3_120 = Nil
      if L1_118 ~= L3_120 then
        L3_120 = SetInvulnerable
        L3_120(L1_118, false)
        L3_120 = SetTargetable
        L3_120(L1_118, true)
      end
      L3_120 = Nil
      if L2_119 ~= L3_120 then
        L3_120 = SetInvulnerable
        L3_120(L2_119, false)
        L3_120 = SetTargetable
        L3_120(L2_119, true)
      end
      L3_120 = Nil
      if L1_118 == L3_120 then
        L3_120 = Nil
        if L2_119 == L3_120 then
          L3_120 = GetHQ
          L3_120 = L3_120(barrackTeam)
          SetInvulnerable(L3_120, false)
          SetTargetable(L3_120, true)
        end
      end
    end
    L1_118 = nil
    L2_119 = barrackTeam
    L3_120 = TEAM_CHAOS
    if L2_119 == L3_120 then
      L1_118 = TEAM_ORDER
    else
      L1_118 = TEAM_CHAOS
    end
    L2_119 = ApplyBarracksDestructionBonuses
    L3_120 = L1_118
    L2_119(L3_120, barrackLane)
  end
  L1_118 = IsTurretAI
  L2_119 = A0_117
  L1_118 = L1_118(L2_119)
  if L1_118 then
    L1_118 = GetTeamID
    L2_119 = A0_117
    L1_118 = L1_118(L2_119)
    L2_119 = GetObjectLaneId
    L3_120 = A0_117
    L2_119 = L2_119(L3_120)
    L3_120 = GetTurretPosition
    L3_120 = L3_120(A0_117)
    DeactivateCorrectStructure(L1_118, L2_119, L3_120)
    return
  end
  L1_118 = GetDampenerType
  L2_119 = A0_117
  L1_118 = L1_118(L2_119)
  if L1_118 > -1 then
    L2_119 = 0
    L3_120 = TEAM_ORDER
    if L1_118 % TEAM_CHAOS == CENTER_LANE then
      L2_119 = ChaosBarracksBonuses[L1_118 % TEAM_CHAOS + 1]
      ChaosBuildingStatus.Barracks = false
    else
      L3_120 = TEAM_CHAOS
      L2_119 = OrderBarracksBonuses[L1_118 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus.Barracks = false
    end
  else
    L2_119 = Log
    L3_120 = "Could not find Linking barracks!"
    L2_119(L3_120)
  end
  L2_119 = true
  return L2_119
end
TEAM_UNKNOWN = 0
EOG_PAN_TO_NEXUS_TIME = 3
EOG_NEXUS_EXPLOSION_TIME = EOG_PAN_TO_NEXUS_TIME + 0.5
EOG_SCOREBOARD_PHASE_DELAY_TIME = 1.2
EOG_NEXUS_REVIVE_TIME = 10
EOG_ALIVE_NEXUS_SKIN = 0
EOG_DESTROYED_NEXUS_SKIN = 1
EOG_MINION_FADE_AMOUNT = 0
EOG_MINION_FADE_TIME = 2
function EndOfGameCeremony(A0_121, A1_122)
  orderHQ = GetHQ(TEAM_ORDER)
  SetInvulnerable(orderHQ, true)
  SetTargetable(orderHQ, false)
  SetBuildingHealthRegenEnabled(orderHQ, false)
  chaosHQ = GetHQ(TEAM_CHAOS)
  SetInvulnerable(chaosHQ, true)
  SetTargetable(chaosHQ, false)
  SetBuildingHealthRegenEnabled(chaosHQ, false)
  winningTeam = A0_121
  if winningTeam == TEAM_ORDER then
    losingTeam = TEAM_CHAOS
    losingHQPosition = GetPosition(chaosHQ)
    winningHQPosition = GetPosition(orderHQ)
  else
    losingTeam = TEAM_ORDER
    losingHQPosition = GetPosition(orderHQ)
    winningHQPosition = GetPosition(chaosHQ)
  end
  SetInputLockForAllClients(INPUT_LOCK_CAMERA_LOCKING, true)
  SetInputLockForAllClients(INPUT_LOCK_CAMERA_MOVEMENT, true)
  SetInputLockForAllClients(INPUT_LOCK_ABILITIES, true)
  SetInputLockForAllClients(INPUT_LOCK_SUMMONER_SPELLS, true)
  SetInputLockForAllClients(INPUT_LOCK_MOVEMENT, true)
  SetInputLockForAllClients(INPUT_LOCK_SHOP, true)
  SetInputLockForAllClients(INPUT_LOCK_MINIMAP_MOVEMENT, true)
  DisableHUDForEndOfGame()
  SetBarracksSpawnEnabled(false)
  CloseShop()
  HaltAllAI()
  LuaForEachChampion(TEAM_UNKNOWN, "ChampionEoGCeremony")
  Log("Destroy Nexus Called")
  InitTimer("DestroyNexusPhase", EOG_NEXUS_EXPLOSION_TIME, false)
end
function ChampionEoGCeremony(A0_123)
  MoveCameraFromCurrentPositionToPoint(A0_123, losingHQPosition, EOG_PAN_TO_NEXUS_TIME, true)
  SetGreyscaleEnabledWhenDead(A0_123, false)
end
function DestroyNexusPhase()
  if GetEoGUseNexusDeathAnimation() == false then
    SetHQCurrentSkin(losingTeam, EOG_DESTROYED_NEXUS_SKIN)
  end
  FadeMinions(losingTeam, EOG_MINION_FADE_AMOUNT, EOG_MINION_FADE_TIME)
  InitTimer("StopRenderingMinionsPhase", EOG_MINION_FADE_TIME, false)
  InitTimer("ScoreboardPhase", EOG_SCOREBOARD_PHASE_DELAY_TIME, false)
  Log("Destroy Nexus Reached")
end
function StopRenderingMinionsPhase()
  SetMinionsNoRender(losingTeam, true)
end
function ScoreboardPhase()
  Log("Scoreboard reached.")
  SetInputLockForAllClients(INPUT_LOCK_CHAT, true)
  EndGame(winningTeam)
end
EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY = 20
EOG_EASTER_EGG_CAMERA_PATH_TIME = 154
EOG_EASTER_EGG_MUSIC_FADE_TIME = 4
function PostGameSetup(A0_124)
  local L1_125, L2_126, L3_127, L4_128, L5_129
  L1_125 = GetGameMode
  L1_125 = L1_125()
  if L1_125 ~= "ARAM" then
    return
  end
  L2_126 = Make3DPoint
  L3_127 = 2586
  L4_128 = 0
  L5_129 = 1986
  L2_126 = L2_126(L3_127, L4_128, L5_129)
  L3_127 = Make3DPoint
  L4_128 = 10702
  L5_129 = 0
  L3_127 = L3_127(L4_128, L5_129, 10193)
  L4_128 = {
    L5_129,
    Make3DPoint(2500, 0, 2000),
    Make3DPoint(2500, 0, 2000)
  }
  L5_129 = Make3DPoint
  L5_129 = L5_129(5700, 0, 6900)
  L5_129 = {
    Make3DPoint(5700, 0, 6900),
    Make3DPoint(10700, 0, 10700),
    Make3DPoint(10700, 0, 10700)
  }
  if A0_124 == TEAM_CHAOS then
    L2_126, L3_127 = L3_127, L2_126
  end
  POST_GAME_EVENTS = {
    [1] = {delay = EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY},
    [2] = {
      delay = EOG_EASTER_EGG_PAN_TO_NEXUS_DELAY + EOG_EASTER_EGG_MUSIC_FADE_TIME,
      soundCharacterName = "Lissandra",
      soundName = "freljordlore",
      cameraPath = L5_129,
      travelTime = EOG_EASTER_EGG_CAMERA_PATH_TIME
    }
  }
end
function PostGameUpdate(A0_130, A1_131, A2_132)
  local L3_133, L4_134, L5_135, L6_136
  if A1_131 ~= A2_132 then
    return
  end
  for L6_136, _FORV_7_ in L3_133(L4_134) do
    if A0_130 > _FORV_7_.delay then
      if _FORV_7_.cameraLocation then
        ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_7_.cameraLocation, _FORV_7_.travelTime)
      end
      if _FORV_7_.cameraPath then
        ClientSide_CameraMoveCameraFromCurrentPositionAlongSpline(_FORV_7_.cameraPath, _FORV_7_.travelTime)
      end
      if _FORV_7_.soundName then
        if _FORV_7_.soundCharacterName then
          ClientSide_PlayGenericVOSoundFile(_FORV_7_.soundCharacterName, _FORV_7_.soundName)
        else
          ClientSide_PlaySoundFile(_FORV_7_.soundName)
        end
      end
      table.remove(POST_GAME_EVENTS, L6_136)
      break
    end
  end
end
