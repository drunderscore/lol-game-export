DoLuaLevel("GlobalLevelScript")
MAX_MINIONS_EVER = 180
TEAM_ORDER = 100
TEAM_CHAOS = 200
ORDER_HQ = 1
CHAOS_HQ = 2
FRONT_TOWER = 3
MIDDLE_TOWER = 2
BACK_TOWER = 1
HQ_TOWER2 = 4
HQ_TOWER1 = 5
RIGHT_LANE = 0
CENTER_LANE = 1
LEFT_LANE = 2
INITIAL_TIME_TO_SPAWN = 45
CANNON_MINION_SPAWN_FREQUENCY = 3
INCREASE_CANNON_RATE_TIMER = 600
MINION_HEALTH_DENIAL_PERCENT = 0
SMITE_CHARGE_START = 60
UPGRADE_MINION_TIMER = 90
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = 6
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = 3
EXP_GIVEN_RADIUS = 1400
GOLD_GIVEN_RADIUS = 1250
DISABLE_MINION_SPAWN_BASE_TIME = 240
DISABLE_MINION_SPAWN_MAG_TIME = 0
LAST_WAVE = -1
SPECIAL_MINION_MODE = "none"
UpgradedMinionIterations = 0
HQTurretAttackable = false
SpawnTable = {
  WaveSpawnRate = 30000,
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
  MaxBonus = 745,
  HPUpgrade = 18,
  HPUpgradeGrowth = 0.3,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 2.25,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 0.5,
  DamageInhibitor = 0,
  ExpGiven = 64,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 22.8,
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
  MaxBonus = 135,
  HPUpgrade = 6,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 0.75,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 1.5,
  DamageInhibitor = 0,
  ExpGiven = 32,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 17.8,
  GoldBonus = 0,
  GoldUpgrade = 0.125,
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
  MaxBonus = 10000,
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
  MaxBonus = 10000,
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
NeutralMinionNames = {
  "TT_NWolf",
  "TT_NWolf2",
  "TT_NGolem",
  "TT_NGolem2",
  "TT_NWraith",
  "TT_NWraith2",
  "TT_Spiderboss"
}
function CreateLaneBuildingTable()
  local L0_21, L1_22
  L0_21 = {}
  L0_21.Turret3 = false
  L0_21.Turret2 = true
  L0_21.Turret1 = true
  L0_21.Barracks = true
  return L0_21
end
OrderBuildingStatus = {
  CreateLaneBuildingTable(),
  CreateLaneBuildingTable(),
  CreateLaneBuildingTable(),
  HQTower2 = true,
  HQTower1 = true,
  HQ = true
}
ChaosBuildingStatus = {
  CreateLaneBuildingTable(),
  CreateLaneBuildingTable(),
  CreateLaneBuildingTable(),
  HQTower2 = true,
  HQTower1 = true,
  HQ = true
}
TotalNumberOfMinions = 0
totalNumberOfChaosBarracks = 2
totalNumberOfOrderBarracks = 2
function PreloadBarrackCharacters(A0_23)
  local L1_24, L2_25
  for _FORV_6_, _FORV_7_ in pairs(A0_23.DefaultMinionInfoTable) do
    if _FORV_7_.PreloadedCharacter == nil then
      _FORV_7_.PreloadedCharacter = 1
      PreloadCharacter(_FORV_7_.MinionName)
    end
  end
end
function OnLevelInit()
  local L0_26, L1_27, L2_28, L3_29, L4_30, L5_31, L6_32
  for L5_31, L6_32 in L2_28(L3_29) do
    PreloadBarrackCharacters(L6_32)
  end
  for L5_31, L6_32 in L2_28(L3_29) do
    PreloadBarrackCharacters(L6_32)
  end
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28(L3_29)
  L2_28()
  L2_28(L3_29)
  L2_28.WaveSpawnRate = 30000
  L2_28.SingleMinionSpawnDelay = 800
  L2_28.ExpRadius = L3_29
  L2_28.GoldRadius = L3_29
end
function OnLevelInitServer()
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
  InitTimer("IncreaseCannonMinionSpawnRate", INCREASE_CANNON_RATE_TIMER, false)
  InitTimer("AllowDamageOnBuildings", 10, false)
end
function OnPostLevelLoad()
  LoadLevelScriptIntoScript("CreateLevelProps.lua")
  CreateLevelProps()
  SetWorldVar("SmiteChargeStart", SMITE_CHARGE_START)
  SetWorldVar("UpgradedMinionIterations", UpgradedMinionIterations)
  SetWorldVar("UpgradeMinionIterationsForLateScaling", UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING)
  SetWorldVar("TowerDamagePerUpgradeMinionIteration", TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION)
end
function OppositeTeam(A0_33)
  if A0_33 == TEAM_CHAOS then
    return TEAM_ORDER
  else
    return TEAM_CHAOS
  end
end
function UpgradeMinionTimer()
  local L0_34, L1_35, L2_36, L3_37, L4_38, L5_39, L6_40, L7_41, L8_42, L9_43, L10_44, L11_45
  UpgradedMinionIterations = L1_35
  L1_35(L2_36, L3_37)
  for L4_38 = 1, 2 do
    if L4_38 == 1 then
      L0_34 = OrderBarracksBonuses
    else
      L0_34 = ChaosBarracksBonuses
    end
    for L8_42 = 1, 3 do
      L9_43, L10_44 = nil, nil
      L11_45 = L0_34[L8_42]
      L11_45 = L11_45.MinionInfoTable
      for _FORV_15_, _FORV_16_ in pairs(L11_45) do
        if UpgradedMinionIterations >= UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING then
        end
        _FORV_16_.HPBonus = _FORV_16_.HPBonus + (_FORV_16_.HPUpgrade + _FORV_16_.HPUpgradeLate)
        _FORV_16_.HPUpgrade = _FORV_16_.HPUpgrade + (_FORV_16_.HPUpgradeGrowth + _FORV_16_.HPUpgradeGrowthLate)
        _FORV_16_.HPBonus = math.min(_FORV_16_.HPBonus, _FORV_16_.MaxBonus)
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
function AllowDamageOnBuildings()
  local L0_46, L1_47, L2_48, L3_49, L4_50, L5_51, L6_52, L7_53, L8_54, L9_55
  for L3_49 = RIGHT_LANE, LEFT_LANE do
    L4_50 = -1
    L5_51 = -1
    for L9_55 = FRONT_TOWER, BACK_TOWER, -1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_49, L9_55)
      if orderTurret ~= nil and L4_50 == -1 then
        L4_50 = L9_55
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_49, L9_55)
      if chaosTurret ~= nil and L5_51 == -1 then
        L5_51 = L9_55
      end
    end
    for L9_55 = BACK_TOWER, HQ_TOWER1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_49, L9_55)
      if orderTurret ~= nil then
        if L9_55 == L4_50 then
          SetInvulnerable(orderTurret, false)
          SetTargetable(orderTurret, true)
        else
          SetInvulnerable(orderTurret, true)
          SetNotTargetableToTeam(orderTurret, true, TEAM_CHAOS)
        end
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_49, L9_55)
      if chaosTurret ~= nil then
        if L9_55 == L5_51 then
          SetInvulnerable(chaosTurret, false)
          SetTargetable(chaosTurret, true)
        else
          SetInvulnerable(chaosTurret, true)
          SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
        end
      end
    end
  end
end
function ResetToDefaultWaveCounts(A0_56)
  local L1_57, L2_58
  for _FORV_6_, _FORV_7_ in pairs(A0_56) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_59)
  local L1_60, L2_61
  for _FORV_6_, _FORV_7_ in pairs(A0_59) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_62, A1_63)
  local L2_64, L3_65, L4_66
  L2_64 = 0
  L3_65 = TEAM_ORDER
  if A1_63 == L3_65 then
    L3_65 = OrderBarracksBonuses
    L4_66 = A0_62 + 1
    L2_64 = L3_65[L4_66]
  else
    L3_65 = ChaosBarracksBonuses
    L4_66 = A0_62 + 1
    L2_64 = L3_65[L4_66]
  end
  L3_65 = {}
  L4_66 = SpawnTable
  L4_66 = L4_66.WaveSpawnRate
  L3_65.WaveSpawnRate = L4_66
  L4_66 = SpawnTable
  L4_66 = L4_66.SingleMinionSpawnDelay
  L3_65.SingleMinionSpawnDelay = L4_66
  L4_66 = L2_64.IsDestroyed
  L3_65.IsDestroyed = L4_66
  L4_66 = L2_64.MinionInfoTable
  L3_65.MinionInfoTable = L4_66
  ReturnTable = L3_65
  L3_65 = ReturnTable
  return L3_65
end
function GetMinionSpawnInfo(A0_67, A1_68, A2_69, A3_70, A4_71)
  local L5_72, L6_73, L7_74
  L5_72 = 0
  L6_73 = TEAM_ORDER
  if A3_70 == L6_73 then
    L6_73 = OrderBarracksBonuses
    L7_74 = A0_67 + 1
    L5_72 = L6_73[L7_74]
  else
    L6_73 = ChaosBarracksBonuses
    L7_74 = A0_67 + 1
    L5_72 = L6_73[L7_74]
  end
  L6_73 = L5_72.MinionInfoTable
  L6_73 = L6_73.Super
  L7_74 = L5_72.MinionInfoTable
  L7_74 = L7_74.Cannon
  ResetToDefaultWaveCounts(L5_72.MinionInfoTable)
  if A1_68 % CANNON_MINION_SPAWN_FREQUENCY == 0 then
    L7_74.NumPerWave = L7_74.NumPerWave + 1
  end
  if A4_71 ~= LAST_WAVE then
    BARRACKSCOUNT = 6
    totalMinionsRemaining = MAX_MINIONS_EVER - GetTotalTeamMinionsSpawned()
    if totalMinionsRemaining <= BARRACKSCOUNT * 7 then
      if 0 >= totalMinionsRemaining then
        SPECIAL_MINION_MODE = "None"
      elseif totalMinionsRemaining >= BARRACKSCOUNT then
        SPECIAL_MINION_MODE = "2MeleeMinions"
      else
        SPECIAL_MINION_MODE = "None"
      end
    else
      SPECIAL_MINION_MODE = ""
    end
    LAST_WAVE = A4_71
  end
  if L5_72.WillSpawnSuperMinion == 1 then
    if A3_70 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_70 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_73.NumPerWave = 2
    else
      L6_73.NumPerWave = 1
    end
    L7_74.NumPerWave = 0
  end
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_72.MinionInfoTable)
    L6_73.NumPerWave = L5_72.MinionInfoTable.Super.NumPerWave
    L5_72.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_72.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_72.MinionInfoTable)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_72.SpawnOrderMinionNames,
    IsDestroyed = L5_72.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_72.MinionInfoTable
  }
  return ReturnTable
end
function DeactivateCorrectStructure(A0_75, A1_76, A2_77)
  local L3_78, L4_79
  L4_79 = TEAM_ORDER
  if A0_75 == L4_79 then
    L3_78 = OrderBuildingStatus
  else
    L3_78 = ChaosBuildingStatus
  end
  L4_79 = FRONT_TOWER
  if A2_77 == L4_79 then
    L4_79 = A1_76 + 1
    L4_79 = L3_78[L4_79]
    L4_79.Turret3 = false
    L4_79 = GetTurret
    L4_79 = L4_79(A0_75, A1_76, MIDDLE_TOWER)
    SetInvulnerable(L4_79, false)
    SetTargetable(L4_79, true)
  else
    L4_79 = MIDDLE_TOWER
    if A2_77 == L4_79 then
      L4_79 = A1_76 + 1
      L4_79 = L3_78[L4_79]
      L4_79.Turret2 = false
      L4_79 = GetTurret
      L4_79 = L4_79(A0_75, A1_76, BACK_TOWER)
      SetInvulnerable(L4_79, false)
      SetTargetable(L4_79, true)
    else
      L4_79 = BACK_TOWER
      if A2_77 == L4_79 then
        L4_79 = A1_76 + 1
        L4_79 = L3_78[L4_79]
        L4_79.Turret1 = false
        L4_79 = GetDampener
        L4_79 = L4_79(A0_75, A1_76)
        SetInvulnerable(L4_79, false)
        SetTargetable(L4_79, true)
      else
        L4_79 = HQ_TOWER2
        if A2_77 == L4_79 then
          L3_78.HQTower2 = false
          L4_79 = GetHQ
          L4_79 = L4_79(A0_75)
          SetInvulnerable(L4_79, false)
          SetTargetable(L4_79, true)
        end
      end
    end
  end
end
function GetLuaBarracks(A0_80, A1_81)
  local L2_82, L3_83, L4_84
  L3_83 = TEAM_ORDER
  if A0_80 == L3_83 then
    L3_83 = OrderBarracksBonuses
    L4_84 = A1_81 + 1
    L2_82 = L3_83[L4_84]
  else
    L3_83 = ChaosBarracksBonuses
    L4_84 = A1_81 + 1
    L2_82 = L3_83[L4_84]
  end
  return L2_82
end
function GetDisableMinionSpawnTime(A0_85, A1_86)
  barrack = GetLuaBarracks(A1_86, A0_85)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_87, A1_88)
  cLangBarracks = GetBarracks(A1_88, A0_87)
  luaBarrack = GetLuaBarracks(A1_88, A0_87)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_87, A1_88))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_89, A1_90)
  local L2_91, L3_92, L4_93, L5_94, L6_95, L7_96, L8_97, L9_98, L10_99
  BonusesCounter = L2_91
  for L5_94 = 1, 3 do
    L6_95, L7_96 = nil, nil
    L8_97 = TEAM_ORDER
    if A0_89 == L8_97 then
      L7_96 = TEAM_CHAOS
      L6_95 = OrderBarracksBonuses
      L8_97 = ChaosBarracksBonuses
      EnemyBarracks = L8_97
    else
      L7_96 = TEAM_ORDER
      L6_95 = ChaosBarracksBonuses
      L8_97 = OrderBarracksBonuses
      EnemyBarracks = L8_97
    end
    L8_97, L9_98 = nil, nil
    L10_99 = L6_95[L5_94]
    L10_99 = L10_99.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_99) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_94 == A1_90 + 1 then
      L6_95[L5_94].WillSpawnSuperMinion = 1
      if A0_89 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_100, A1_101)
  local L2_102, L3_103, L4_104, L5_105, L6_106, L7_107, L8_108, L9_109, L10_110, L11_111, L12_112, L13_113, L14_114, L15_115, L16_116, L17_117, L18_118
  ReductionCounter = L2_102
  for L5_105 = 1, 3 do
    L6_106, L7_107, L8_108 = nil, nil, nil
    L9_109 = TEAM_ORDER
    if A0_100 == L9_109 then
      L8_108 = TEAM_CHAOS
      L6_106 = OrderBarracksBonuses
      L7_107 = ChaosBarracksBonuses
    else
      L8_108 = TEAM_ORDER
      L6_106 = ChaosBarracksBonuses
      L7_107 = OrderBarracksBonuses
    end
    L9_109, L10_110 = nil, nil
    L11_111 = L6_106[L5_105]
    L11_111 = L11_111.MinionInfoTable
    for L15_115, L16_116 in L12_112(L13_113) do
      L17_117 = L16_116.HPBonus
      L18_118 = L16_116.HPInhibitor
      L17_117 = L17_117 - L18_118
      L16_116.HPBonus = L17_117
      L17_117 = L16_116.DamageBonus
      L18_118 = L16_116.DamageInhibitor
      L17_117 = L17_117 - L18_118
      L16_116.DamageBonus = L17_117
      L17_117 = L16_116.ExpGiven
      L18_118 = L16_116.ExpInhibitor
      L17_117 = L17_117 + L18_118
      L16_116.ExpGiven = L17_117
      L17_117 = L16_116.GoldGiven
      L18_118 = L16_116.GoldInhibitor
      L17_117 = L17_117 + L18_118
      L16_116.GoldGiven = L17_117
    end
    if L5_105 == L13_113 then
      if A0_100 == L13_113 then
        totalNumberOfChaosBarracks = L13_113
      else
        totalNumberOfOrderBarracks = L13_113
      end
      L13_113.WillSpawnSuperMinion = 0
    end
    if L12_112 == 2 then
      HQ = L13_113
      L13_113(L14_114, L15_115)
      L13_113(L14_114, L15_115)
      for L16_116 = RIGHT_LANE, LEFT_LANE do
        L17_117 = GetTurret
        L18_118 = L8_108
        L17_117 = L17_117(L18_118, L16_116, HQ_TOWER1)
        L18_118 = GetTurret
        L18_118 = L18_118(L8_108, L16_116, HQ_TOWER2)
        if L17_117 ~= Nil then
          SetInvulnerable(L17_117, true)
          SetNotTargetableToTeam(L17_117, true, A0_100)
        end
        if L18_118 ~= Nil then
          SetInvulnerable(L18_118, true)
          SetNotTargetableToTeam(L18_118, true, A0_100)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_119, A1_120)
  local L2_121
  ReactiveCounter = ReactiveCounter + 1
  L2_121 = OppositeTeam(A0_119)
  dampener = GetDampener(A0_119, A1_120)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_121, A1_120)
end
function DisableSuperMinions(A0_122, A1_123)
  local L2_124, L3_125
  if A0_122 == TEAM_ORDER then
    L2_124 = OrderBarracksBonuses[A1_123 + 1]
    L3_125 = ChaosBarracksBonuses[A1_123 + 1]
  elseif A0_122 == TEAM_CHAOS then
    L2_124 = ChaosBarracksBonuses[A1_123 + 1]
    L3_125 = OrderBarracksBonuses[A1_123 + 1]
  end
  if L3_125 then
    L3_125.WillSpawnSuperMinion = 0
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_126)
  local L1_127, L2_128, L3_129
  L1_127 = GetHQType
  L2_128 = A0_126
  L1_127 = L1_127(L2_128)
  HQType = L1_127
  L1_127 = HQType
  L2_128 = ORDER_HQ
  if L1_127 ~= L2_128 then
    L1_127 = HQType
    L2_128 = CHAOS_HQ
  elseif L1_127 == L2_128 then
    L1_127 = HQType
    L2_128 = CHAOS_HQ
    if L1_127 == L2_128 then
      L1_127 = EndOfGameCeremony
      L2_128 = TEAM_ORDER
      L3_129 = A0_126
      L1_127(L2_128, L3_129)
    else
      L1_127 = EndOfGameCeremony
      L2_128 = TEAM_CHAOS
      L3_129 = A0_126
      L1_127(L2_128, L3_129)
    end
    return
  end
  L1_127 = IsDampener
  L2_128 = A0_126
  L1_127 = L1_127(L2_128)
  if L1_127 then
    L1_127 = GetLinkedBarrack
    L2_128 = A0_126
    L1_127 = L1_127(L2_128)
    barrack = L1_127
    L1_127 = GetTeamID
    L2_128 = barrack
    L1_127 = L1_127(L2_128)
    barrackTeam = L1_127
    L1_127 = GetLane
    L2_128 = A0_126
    L1_127 = L1_127(L2_128)
    barrackLane = L1_127
    L1_127 = DisableBarracksSpawn
    L2_128 = barrackLane
    L3_129 = barrackTeam
    L1_127(L2_128, L3_129)
    L1_127 = SetDampenerState
    L2_128 = A0_126
    L3_129 = DampenerRegenerationState
    L1_127(L2_128, L3_129)
    L1_127 = SetInvulnerable
    L2_128 = A0_126
    L3_129 = true
    L1_127(L2_128, L3_129)
    L1_127 = SetTargetable
    L2_128 = A0_126
    L3_129 = false
    L1_127(L2_128, L3_129)
    L1_127 = DisactivatedCounter
    L1_127 = L1_127 + 1
    DisactivatedCounter = L1_127
    L1_127 = GetTurret
    L2_128 = barrackTeam
    L3_129 = 0
    L1_127 = L1_127(L2_128, L3_129, 4)
    L2_128 = Nil
    if L1_127 ~= L2_128 then
      L2_128 = SetInvulnerable
      L3_129 = L1_127
      L2_128(L3_129, false)
      L2_128 = SetTargetable
      L3_129 = L1_127
      L2_128(L3_129, true)
    else
      L2_128 = GetHQ
      L3_129 = barrackTeam
      L2_128 = L2_128(L3_129)
      L3_129 = SetInvulnerable
      L3_129(L2_128, false)
      L3_129 = SetTargetable
      L3_129(L2_128, true)
    end
    L2_128 = nil
    L3_129 = barrackTeam
    if L3_129 == TEAM_CHAOS then
      L2_128 = TEAM_ORDER
    else
      L2_128 = TEAM_CHAOS
    end
    L3_129 = ApplyBarracksDestructionBonuses
    L3_129(L2_128, barrackLane)
  end
  L1_127 = IsTurretAI
  L2_128 = A0_126
  L1_127 = L1_127(L2_128)
  if L1_127 then
    L1_127 = GetTeamID
    L2_128 = A0_126
    L1_127 = L1_127(L2_128)
    L2_128 = GetObjectLaneId
    L3_129 = A0_126
    L2_128 = L2_128(L3_129)
    L3_129 = GetTurretPosition
    L3_129 = L3_129(A0_126)
    DeactivateCorrectStructure(L1_127, L2_128, L3_129)
    return
  end
  L1_127 = GetDampenerType
  L2_128 = A0_126
  L1_127 = L1_127(L2_128)
  if L1_127 > -1 then
    L2_128 = 0
    L3_129 = TEAM_ORDER
    if L1_127 % TEAM_CHAOS >= RIGHT_LANE and L1_127 % TEAM_CHAOS <= LEFT_LANE then
      L2_128 = ChaosBarracksBonuses[L1_127 % TEAM_CHAOS + 1]
      ChaosBuildingStatus[L1_127 % TEAM_CHAOS + 1].Barracks = false
    else
      L3_129 = TEAM_CHAOS
      L2_128 = OrderBarracksBonuses[L1_127 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus[L1_127 % TEAM_CHAOS - TEAM_ORDER + 1].Barracks = false
    end
  else
    L2_128 = Log
    L3_129 = "Could not find Linking barracks!"
    L2_128(L3_129)
  end
  L2_128 = true
  return L2_128
end
function IncreaseCannonMinionSpawnRate()
  local L1_130
  L1_130 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L1_130
end
