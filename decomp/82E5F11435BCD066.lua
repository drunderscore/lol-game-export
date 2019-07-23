DoLuaShared("GlobalLevelScript")
EVENT_STAGE_WELCOME_TIME = 30
EVENT_STAGE_PREANNOUNCE_TIME = 35
EVENT_STAGE_MINIONS_SPAWNED_TIME = 65
EOG_SCOREBOARD_PHASE_DELAY_TIME = 1.2
MAX_MINIONS_EVER = 180
TEAM_UNKNOWN = 0
TEAM_ORDER = 100
TEAM_CHAOS = 200
TEAM_NEUTRAL = 300
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
INITIAL_TIME_TO_SPAWN = EVENT_STAGE_MINIONS_SPAWNED_TIME
CANNON_MINION_SPAWN_FREQUENCY = 3
CANNON_MINION_SPAWN_DECIDER = 0
INCREASE_CANNON_RATE_TIMER = 1200
INCREASE_CANNON_RATE_TIMER2 = 2100
MINION_HEALTH_DENIAL_PERCENT = 0
SMITE_CHARGE_START = INITIAL_TIME_TO_SPAWN + 25
UPGRADE_MINION_TIMER = 90
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = 6
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = 3
EXP_GIVEN_RADIUS = 1400
GOLD_GIVEN_RADIUS = 1250
DISABLE_MINION_SPAWN_BASE_TIME = 300
DISABLE_MINION_SPAWN_MAG_TIME = 0
CHAOS_INHIBITOR_RESPAWN_ANIMATION_DURATION = 11.67
ORDER_INHIBITOR_RESPAWN_ANIMATION_DURATION = 11
LAST_WAVE = -1
SPECIAL_MINION_MODE = "none"
HQTurretAttackable = false
UpgradedMinionIterations = 0
DoLuaLevel("BBLuaConversionLibrary")
DoLuaLevel("CampSpawnMarkers")
DoLuaLevel("Plants")
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
  DamageUpgrade = 0,
  DamageInhibitor = 0,
  ExpGiven = 64,
  ExpBonus = 0,
  ExpUpgrade = 0,
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
  GoldGiven = 16.875,
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
  MinionName = "SRU_OrderMinionMelee",
  DefaultInfo = MeleeDefaultMinionInfo
}
ChaosMeleeMinionInfo = {
  MinionName = "SRU_ChaosMinionMelee",
  DefaultInfo = MeleeDefaultMinionInfo
}
OrderCasterMinionInfo = {
  MinionName = "SRU_OrderMinionRanged",
  DefaultInfo = CasterDefaultMinionInfo
}
ChaosCasterMinionInfo = {
  MinionName = "SRU_ChaosMinionRanged",
  DefaultInfo = CasterDefaultMinionInfo
}
OrderCannonMinionInfo = {
  MinionName = "SRU_OrderMinionSiege",
  DefaultInfo = CannonDefaultMinionInfo
}
ChaosCannonMinionInfo = {
  MinionName = "SRU_ChaosMinionSiege",
  DefaultInfo = CannonDefaultMinionInfo
}
OrderSuperMinionInfo = {
  MinionName = "SRU_OrderMinionSuper",
  DefaultInfo = SuperDefaultMinionInfo
}
ChaosSuperMinionInfo = {
  MinionName = "SRU_ChaosMinionSuper",
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
  "SRU_Dragon",
  "SRU_Krug",
  "SRU_KrugMini",
  "SRU_Red",
  "SRU_RedMini",
  "SRU_Razorbeak",
  "SRU_RazorbeakMini",
  "SRU_Murkwolf",
  "SRU_MurkwolfMini",
  "SRU_Blue",
  "SRU_BlueMini",
  "SRU_Gromp",
  "SRU_Baron"
}
function CreateLaneBuildingTable()
  local L0_21, L1_22
  L0_21 = {}
  L0_21.Turret3 = true
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
totalNumberOfChaosBarracks = 3
totalNumberOfOrderBarracks = 3
function PreloadBarrackCharacters(A0_23)
  local L1_24, L2_25
  for _FORV_6_, _FORV_7_ in pairs(A0_23.DefaultMinionInfoTable) do
    if _FORV_7_.PreloadedCharacter == nil then
      _FORV_7_.PreloadedCharacter = 1
      PreloadCharacter(_FORV_7_.MinionName)
    end
  end
end
function SuppressMinionSpawnForBarrack(A0_26)
  for _FORV_4_, _FORV_5_ in pairs(DefaultBarrackInfo.SpawnOrderMinionNames) do
    A0_26.MinionInfoTable[_FORV_5_].NumPerWave = 0
  end
end
function SetMutatorGlobals()
  local L0_27, L1_28
end
function OnLevelInit()
  local L0_29, L1_30, L2_31, L3_32, L4_33, L5_34, L6_35
  for L5_34, L6_35 in L2_31(L3_32) do
    PreloadBarrackCharacters(L6_35)
  end
  for L5_34, L6_35 in L2_31(L3_32) do
    PreloadBarrackCharacters(L6_35)
  end
  L2_31()
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L2_31(L3_32)
  L3_32(L4_33)
  L3_32()
  L3_32(L4_33)
end
function OnLevelInitServer()
  InitTimer("UpgradeMinionTimerInitial", INITIAL_TIME_TO_SPAWN, false)
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
  InitTimer("IncreaseCannonMinionSpawnRate", INCREASE_CANNON_RATE_TIMER, false)
  InitTimer("IncreaseCannonMinionSpawnRateAgain", INCREASE_CANNON_RATE_TIMER2, false)
  InitTimer("AllowDamageOnBuildings", 10, false)
end
function OnPostLevelLoad()
  local L0_36, L1_37, L2_38, L3_39, L4_40, L5_41, L6_42, L7_43, L8_44, L9_45, L10_46, L11_47
  L0_36 = Log
  L0_36(L1_37)
  L0_36 = GetMutatorParameterString
  L0_36 = L0_36(L1_37)
  L1_37(L2_38)
  L1_37()
  for L4_40 = RIGHT_LANE, LEFT_LANE do
    L5_41 = GetDampener
    L6_42 = TEAM_ORDER
    L7_43 = L4_40
    L5_41 = L5_41(L6_42, L7_43)
    L6_42 = SetDampenerRespawnAnimationDuration
    L7_43 = L5_41
    L6_42(L7_43, L8_44)
    L6_42 = GetDampener
    L7_43 = TEAM_CHAOS
    L6_42 = L6_42(L7_43, L8_44)
    L5_41 = L6_42
    L6_42 = SetDampenerRespawnAnimationDuration
    L7_43 = L5_41
    L6_42(L7_43, L8_44)
    L6_42 = SetLaneExposed
    L7_43 = TEAM_ORDER
    L6_42(L7_43, L8_44, L9_45)
    L6_42 = SetLaneExposed
    L7_43 = TEAM_CHAOS
    L6_42(L7_43, L8_44, L9_45)
    L6_42 = 0
    L7_43 = 0
    for L11_47 = BACK_TOWER, FRONT_TOWER do
      orderTurret = GetTurret(TEAM_ORDER, L4_40, L11_47)
      if orderTurret ~= nil then
        L6_42 = L6_42 + 1
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L4_40, L11_47)
      if chaosTurret ~= nil then
        L7_43 = L7_43 + 1
      end
    end
    L11_47 = L6_42
    L8_44(L9_45, L10_46, L11_47)
    L11_47 = L7_43
    L8_44(L9_45, L10_46, L11_47)
  end
  L1_37(L2_38, L3_39)
  L1_37(L2_38, L3_39)
  L1_37(L2_38, L3_39)
  L1_37(L2_38, L3_39)
end
function OnLevelReset()
  local L0_48, L1_49, L2_50, L3_51, L4_52
  L0_48(L1_49)
  L0_48()
  L0_48()
  L0_48()
  L3_51 = false
  L0_48(L1_49, L2_50, L3_51)
  L0_48.HQTower1 = true
  L0_48.HQTower2 = true
  for L3_51 = RIGHT_LANE, LEFT_LANE do
    L4_52 = GetDampener
    L4_52 = L4_52(TEAM_ORDER, L3_51)
    SetInvulnerable(L4_52, true)
    SetTargetable(L4_52, false)
    L4_52 = GetDampener(TEAM_CHAOS, L3_51)
    SetInvulnerable(L4_52, true)
    SetTargetable(L4_52, false)
  end
  L3_51 = true
  L1_49(L2_50, L3_51)
  L3_51 = false
  L1_49(L2_50, L3_51)
  L3_51 = true
  L1_49(L2_50, L3_51)
  L3_51 = false
  L1_49(L2_50, L3_51)
  L3_51 = false
  L1_49(L2_50, L3_51)
end
function OnGameStartup()
  local L0_53
  L0_53 = SpawnCampSpawnMarkers
  L0_53(CampsWithInitialMinimapUI)
  L0_53 = GetMutatorParameterBool
  L0_53 = L0_53("EnableSRPlants2017Preseason")
  if L0_53 then
    L0_53 = PlantsGlobalInit
    L0_53()
  end
  L0_53 = LuaForEachChampion
  L0_53(TEAM_UNKNOWN, "ApplySRBuffs")
  L0_53 = 0
  OrderHQPos = GetKeyLocation(L0_53, TEAM_ORDER)
  ChaosHQPos = GetKeyLocation(L0_53, TEAM_CHAOS)
end
function OnGameSwapChampion(A0_54)
  ApplySRBuffs(A0_54)
end
function ApplySRBuffs(A0_55)
  ApplyPersistentBuff(A0_55, "S6Test_RegionRules", false, 1, 1)
  ApplyPersistentBuff(A0_55, "SRChampionBuff", false, 1, 1)
end
function ApplyBaseBuffToAllChampions()
  LuaForEachChampion(TEAM_CHAOS, "ApplyBaseBuffChaos")
  LuaForEachChampion(TEAM_ORDER, "ApplyBaseBuffOrder")
end
function ApplyBaseBuffChaos(A0_56)
  ApplyBaseBuff(A0_56, ChaosHQPos)
end
function ApplyBaseBuffOrder(A0_57)
  ApplyBaseBuff(A0_57, OrderHQPos)
end
baseBuffRadiusSquared = 12250000
BUFF_Aura = 1
function ApplyBaseBuff(A0_58, A1_59)
  if (GetPosition(A0_58) - A1_59):lengthSq() < baseBuffRadiusSquared then
    SpellBuffAdd(A0_58, A0_58, "S5Test_BaseBuff", BUFF_Aura, 1, 0.5, nil)
  end
end
function OppositeTeam(A0_60)
  if A0_60 == TEAM_CHAOS then
    return TEAM_ORDER
  else
    return TEAM_CHAOS
  end
end
function UpgradeMinionTimerInitial()
  UpgradeMinionTimer()
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
end
function UpgradeMinionTimer()
  local L0_61, L1_62, L2_63, L3_64, L4_65, L5_66, L6_67, L7_68, L8_69, L9_70, L10_71, L11_72
  UpgradedMinionIterations = L1_62
  L1_62(L2_63, L3_64)
  for L4_65 = 1, 2 do
    if L4_65 == 1 then
      L0_61 = OrderBarracksBonuses
    else
      L0_61 = ChaosBarracksBonuses
    end
    for L8_69 = 1, 3 do
      L9_70, L10_71 = nil, nil
      L11_72 = L0_61[L8_69]
      L11_72 = L11_72.MinionInfoTable
      for _FORV_15_, _FORV_16_ in pairs(L11_72) do
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
  local L0_73, L1_74, L2_75, L3_76, L4_77, L5_78, L6_79, L7_80, L8_81, L9_82
  for L3_76 = RIGHT_LANE, LEFT_LANE do
    L4_77 = -1
    L5_78 = -1
    for L9_82 = FRONT_TOWER, BACK_TOWER, -1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_76, L9_82)
      if orderTurret ~= nil and L4_77 == -1 then
        L4_77 = L9_82
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_76, L9_82)
      if chaosTurret ~= nil and L5_78 == -1 then
        L5_78 = L9_82
      end
    end
    for L9_82 = BACK_TOWER, HQ_TOWER1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_76, L9_82)
      if orderTurret ~= nil then
        if L9_82 == L4_77 then
          SetInvulnerable(orderTurret, false)
          SetTargetable(orderTurret, true)
        else
          SetInvulnerable(orderTurret, true)
          SetNotTargetableToTeam(orderTurret, true, TEAM_CHAOS)
        end
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_76, L9_82)
      if chaosTurret ~= nil then
        if L9_82 == L5_78 then
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
function ResetToDefaultWaveCounts(A0_83)
  local L1_84, L2_85
  for _FORV_6_, _FORV_7_ in pairs(A0_83) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_86)
  local L1_87, L2_88
  for _FORV_6_, _FORV_7_ in pairs(A0_86) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_89, A1_90)
  local L2_91, L3_92, L4_93
  L2_91 = 0
  L3_92 = TEAM_ORDER
  if A1_90 == L3_92 then
    L3_92 = OrderBarracksBonuses
    L4_93 = A0_89 + 1
    L2_91 = L3_92[L4_93]
  else
    L3_92 = ChaosBarracksBonuses
    L4_93 = A0_89 + 1
    L2_91 = L3_92[L4_93]
  end
  L3_92 = {}
  L4_93 = SpawnTable
  L4_93 = L4_93.WaveSpawnRate
  L3_92.WaveSpawnRate = L4_93
  L4_93 = SpawnTable
  L4_93 = L4_93.SingleMinionSpawnDelay
  L3_92.SingleMinionSpawnDelay = L4_93
  L4_93 = L2_91.IsDestroyed
  L3_92.IsDestroyed = L4_93
  L4_93 = L2_91.MinionInfoTable
  L3_92.MinionInfoTable = L4_93
  ReturnTable = L3_92
  L3_92 = ReturnTable
  return L3_92
end
function GetMinionSpawnInfo(A0_94, A1_95, A2_96, A3_97, A4_98)
  local L5_99, L6_100, L7_101
  L5_99 = 0
  L6_100 = TEAM_ORDER
  if A3_97 == L6_100 then
    L6_100 = OrderBarracksBonuses
    L7_101 = A0_94 + 1
    L5_99 = L6_100[L7_101]
  else
    L6_100 = ChaosBarracksBonuses
    L7_101 = A0_94 + 1
    L5_99 = L6_100[L7_101]
  end
  L6_100 = L5_99.MinionInfoTable
  L6_100 = L6_100.Super
  L7_101 = L5_99.MinionInfoTable
  L7_101 = L7_101.Cannon
  ResetToDefaultWaveCounts(L5_99.MinionInfoTable)
  if A1_95 % CANNON_MINION_SPAWN_FREQUENCY == CANNON_MINION_SPAWN_DECIDER then
    L7_101.NumPerWave = L7_101.NumPerWave + 1
  end
  if A4_98 ~= LAST_WAVE then
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
    LAST_WAVE = A4_98
  end
  if L5_99.WillSpawnSuperMinion == 1 then
    if A3_97 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_97 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_100.NumPerWave = 2
    else
      L6_100.NumPerWave = 1
    end
    L7_101.NumPerWave = 0
  end
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_99.MinionInfoTable)
    L6_100.NumPerWave = L5_99.MinionInfoTable.Super.NumPerWave
    L5_99.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_99.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_99.MinionInfoTable)
  end
  if GetMutatorParameterBool("SuppressMinionSpawn") then
    SuppressMinionSpawnForBarrack(L5_99)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_99.SpawnOrderMinionNames,
    IsDestroyed = L5_99.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_99.MinionInfoTable
  }
  return ReturnTable
end
function DeactivateCorrectStructure(A0_102, A1_103, A2_104)
  local L3_105, L4_106
  L4_106 = TEAM_ORDER
  if A0_102 == L4_106 then
    L3_105 = OrderBuildingStatus
  else
    L3_105 = ChaosBuildingStatus
  end
  L4_106 = FRONT_TOWER
  if A2_104 == L4_106 then
    L4_106 = A1_103 + 1
    L4_106 = L3_105[L4_106]
    L4_106.Turret3 = false
    L4_106 = GetTurret
    L4_106 = L4_106(A0_102, A1_103, MIDDLE_TOWER)
    SetInvulnerable(L4_106, false)
    SetTargetable(L4_106, true)
    SetLaneTowerCount(A0_102, A1_103, 2)
  else
    L4_106 = MIDDLE_TOWER
    if A2_104 == L4_106 then
      L4_106 = A1_103 + 1
      L4_106 = L3_105[L4_106]
      L4_106.Turret2 = false
      L4_106 = GetTurret
      L4_106 = L4_106(A0_102, A1_103, BACK_TOWER)
      SetInvulnerable(L4_106, false)
      SetTargetable(L4_106, true)
      SetLaneTowerCount(A0_102, A1_103, 1)
    else
      L4_106 = BACK_TOWER
      if A2_104 == L4_106 then
        L4_106 = A1_103 + 1
        L4_106 = L3_105[L4_106]
        L4_106.Turret1 = false
        L4_106 = GetDampener
        L4_106 = L4_106(A0_102, A1_103)
        SetInvulnerable(L4_106, false)
        SetTargetable(L4_106, true)
        SetLaneTowerCount(A0_102, A1_103, 0)
      else
        L4_106 = HQ_TOWER2
        if A2_104 == L4_106 then
          L3_105.HQTower2 = false
          L4_106 = L3_105.HQTower1
          if L4_106 == false then
            L4_106 = GetHQ
            L4_106 = L4_106(A0_102)
            SetInvulnerable(L4_106, false)
            SetTargetable(L4_106, true)
          end
        else
          L4_106 = HQ_TOWER1
          if A2_104 == L4_106 then
            L3_105.HQTower1 = false
            L4_106 = L3_105.HQTower2
            if L4_106 == false then
              L4_106 = GetHQ
              L4_106 = L4_106(A0_102)
              SetInvulnerable(L4_106, false)
              SetTargetable(L4_106, true)
            end
          end
        end
      end
    end
  end
end
function GetLuaBarracks(A0_107, A1_108)
  local L2_109, L3_110, L4_111
  L3_110 = TEAM_ORDER
  if A0_107 == L3_110 then
    L3_110 = OrderBarracksBonuses
    L4_111 = A1_108 + 1
    L2_109 = L3_110[L4_111]
  else
    L3_110 = ChaosBarracksBonuses
    L4_111 = A1_108 + 1
    L2_109 = L3_110[L4_111]
  end
  return L2_109
end
function GetDisableMinionSpawnTime(A0_112, A1_113)
  barrack = GetLuaBarracks(A1_113, A0_112)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_114, A1_115)
  cLangBarracks = GetBarracks(A1_115, A0_114)
  luaBarrack = GetLuaBarracks(A1_115, A0_114)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_114, A1_115))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_116, A1_117)
  local L2_118, L3_119, L4_120, L5_121, L6_122, L7_123, L8_124, L9_125, L10_126
  BonusesCounter = L2_118
  for L5_121 = 1, 3 do
    L6_122, L7_123 = nil, nil
    L8_124 = TEAM_ORDER
    if A0_116 == L8_124 then
      L7_123 = TEAM_CHAOS
      L6_122 = OrderBarracksBonuses
      L8_124 = ChaosBarracksBonuses
      EnemyBarracks = L8_124
    else
      L7_123 = TEAM_ORDER
      L6_122 = ChaosBarracksBonuses
      L8_124 = OrderBarracksBonuses
      EnemyBarracks = L8_124
    end
    L8_124, L9_125 = nil, nil
    L10_126 = L6_122[L5_121]
    L10_126 = L10_126.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_126) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_121 == A1_117 + 1 then
      L6_122[L5_121].WillSpawnSuperMinion = 1
      if A0_116 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_127, A1_128)
  local L2_129, L3_130, L4_131, L5_132, L6_133, L7_134, L8_135, L9_136, L10_137, L11_138, L12_139, L13_140, L14_141, L15_142, L16_143, L17_144, L18_145
  ReductionCounter = L2_129
  for L5_132 = 1, 3 do
    L6_133, L7_134, L8_135 = nil, nil, nil
    L9_136 = TEAM_ORDER
    if A0_127 == L9_136 then
      L8_135 = TEAM_CHAOS
      L6_133 = OrderBarracksBonuses
      L7_134 = ChaosBarracksBonuses
    else
      L8_135 = TEAM_ORDER
      L6_133 = ChaosBarracksBonuses
      L7_134 = OrderBarracksBonuses
    end
    L9_136, L10_137 = nil, nil
    L11_138 = L6_133[L5_132]
    L11_138 = L11_138.MinionInfoTable
    for L15_142, L16_143 in L12_139(L13_140) do
      L17_144 = L16_143.HPBonus
      L18_145 = L16_143.HPInhibitor
      L17_144 = L17_144 - L18_145
      L16_143.HPBonus = L17_144
      L17_144 = L16_143.DamageBonus
      L18_145 = L16_143.DamageInhibitor
      L17_144 = L17_144 - L18_145
      L16_143.DamageBonus = L17_144
      L17_144 = L16_143.ExpGiven
      L18_145 = L16_143.ExpInhibitor
      L17_144 = L17_144 + L18_145
      L16_143.ExpGiven = L17_144
      L17_144 = L16_143.GoldGiven
      L18_145 = L16_143.GoldInhibitor
      L17_144 = L17_144 + L18_145
      L16_143.GoldGiven = L17_144
    end
    if L5_132 == L13_140 then
      if A0_127 == L13_140 then
        totalNumberOfChaosBarracks = L13_140
      else
        totalNumberOfOrderBarracks = L13_140
      end
      L13_140.WillSpawnSuperMinion = 0
      L16_143 = false
      L13_140(L14_141, L15_142, L16_143)
    end
    if L12_139 == 3 then
      HQ = L13_140
      L13_140(L14_141, L15_142)
      L13_140(L14_141, L15_142)
      for L16_143 = RIGHT_LANE, LEFT_LANE do
        L17_144 = GetTurret
        L18_145 = L8_135
        L17_144 = L17_144(L18_145, L16_143, HQ_TOWER1)
        L18_145 = GetTurret
        L18_145 = L18_145(L8_135, L16_143, HQ_TOWER2)
        if L17_144 ~= Nil then
          SetInvulnerable(L17_144, true)
          SetNotTargetableToTeam(L17_144, true, A0_127)
        end
        if L18_145 ~= Nil then
          SetInvulnerable(L18_145, true)
          SetNotTargetableToTeam(L18_145, true, A0_127)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_146, A1_147)
  local L2_148
  ReactiveCounter = ReactiveCounter + 1
  L2_148 = OppositeTeam(A0_146)
  dampener = GetDampener(A0_146, A1_147)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_148, A1_147)
end
function DisableSuperMinions(A0_149, A1_150)
  local L2_151, L3_152
  if A0_149 == TEAM_ORDER then
    L2_151 = OrderBarracksBonuses[A1_150 + 1]
    L3_152 = ChaosBarracksBonuses[A1_150 + 1]
  elseif A0_149 == TEAM_CHAOS then
    L2_151 = ChaosBarracksBonuses[A1_150 + 1]
    L3_152 = OrderBarracksBonuses[A1_150 + 1]
  end
  if L3_152 then
    L3_152.WillSpawnSuperMinion = 0
  end
end
function OnJumpToMidGameCheat(A0_153)
  local L1_154
  L1_154 = GetTurret
  L1_154 = L1_154(TEAM_ORDER, 1, HQ_TOWER1)
  if A0_153 == 0 then
    ApplyPersistentBuff(L1_154, "DebugMidGameBuff", false, 1, 1)
  else
    ApplyPersistentBuff(L1_154, "DebugLateGameBuff", false, 1, 1)
  end
end
function EqualizeDragonsCheat()
  local L0_155
  L0_155 = GetTurret
  L0_155 = L0_155(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_155, "DebugEqualizeDragons", false, 1, 1)
end
function EqualizeResetPlay()
  local L0_156
  L0_156 = GetTurret
  L0_156 = L0_156(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_156, "DebugResetPlay", false, 1, 1)
end
function OnBarracksToggled(A0_157)
  local L1_158
  if A0_157 == 0 then
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_159)
  local L1_160, L2_161, L3_162
  L1_160 = GetHQType
  L2_161 = A0_159
  L1_160 = L1_160(L2_161)
  HQType = L1_160
  L1_160 = HQType
  L2_161 = ORDER_HQ
  if L1_160 ~= L2_161 then
    L1_160 = HQType
    L2_161 = CHAOS_HQ
  elseif L1_160 == L2_161 then
    L1_160 = SetWorldVar
    L2_161 = "EndOfGame_GameHasEnded"
    L3_162 = true
    L1_160(L2_161, L3_162)
    L1_160 = HQType
    L2_161 = CHAOS_HQ
    if L1_160 == L2_161 then
      L1_160 = SetWorldVar
      L2_161 = "EndOfGame_LosingTeam"
      L3_162 = TEAM_CHAOS
      L1_160(L2_161, L3_162)
      L1_160 = EndOfGameCeremony
      L2_161 = TEAM_ORDER
      L3_162 = A0_159
      L1_160(L2_161, L3_162)
    else
      L1_160 = SetWorldVar
      L2_161 = "EndOfGame_LosingTeam"
      L3_162 = TEAM_ORDER
      L1_160(L2_161, L3_162)
      L1_160 = EndOfGameCeremony
      L2_161 = TEAM_CHAOS
      L3_162 = A0_159
      L1_160(L2_161, L3_162)
    end
    L1_160 = GetTurret
    L2_161 = TEAM_ORDER
    L3_162 = 1
    L1_160 = L1_160(L2_161, L3_162, 0)
    L2_161 = ApplyPersistentBuff
    L3_162 = L1_160
    L2_161(L3_162, "EndOfGameTriggers", false, 1, 1)
    return
  end
  L1_160 = IsDampener
  L2_161 = A0_159
  L1_160 = L1_160(L2_161)
  if L1_160 then
    L1_160 = GetLinkedBarrack
    L2_161 = A0_159
    L1_160 = L1_160(L2_161)
    barrack = L1_160
    L1_160 = GetTeamID
    L2_161 = barrack
    L1_160 = L1_160(L2_161)
    barrackTeam = L1_160
    L1_160 = GetLane
    L2_161 = A0_159
    L1_160 = L1_160(L2_161)
    barrackLane = L1_160
    L1_160 = SetLaneExposed
    L2_161 = barrackTeam
    L3_162 = barrackLane
    L1_160(L2_161, L3_162, true)
    L1_160 = DisableBarracksSpawn
    L2_161 = barrackLane
    L3_162 = barrackTeam
    L1_160(L2_161, L3_162)
    L1_160 = SetDampenerState
    L2_161 = A0_159
    L3_162 = DampenerRegenerationState
    L1_160(L2_161, L3_162)
    L1_160 = SetInvulnerable
    L2_161 = A0_159
    L3_162 = true
    L1_160(L2_161, L3_162)
    L1_160 = SetTargetable
    L2_161 = A0_159
    L3_162 = false
    L1_160(L2_161, L3_162)
    L1_160 = DisactivatedCounter
    L1_160 = L1_160 + 1
    DisactivatedCounter = L1_160
    L1_160 = GetTurret
    L2_161 = barrackTeam
    L3_162 = 1
    L1_160 = L1_160(L2_161, L3_162, HQ_TOWER1)
    L2_161 = GetTurret
    L3_162 = barrackTeam
    L2_161 = L2_161(L3_162, 1, HQ_TOWER2)
    L3_162 = Nil
    if L1_160 ~= L3_162 then
      L3_162 = SetInvulnerable
      L3_162(L1_160, false)
      L3_162 = SetTargetable
      L3_162(L1_160, true)
    end
    L3_162 = Nil
    if L2_161 ~= L3_162 then
      L3_162 = SetInvulnerable
      L3_162(L2_161, false)
      L3_162 = SetTargetable
      L3_162(L2_161, true)
    end
    L3_162 = Nil
    if L1_160 == L3_162 then
      L3_162 = Nil
      if L2_161 == L3_162 then
        L3_162 = GetHQ
        L3_162 = L3_162(barrackTeam)
        SetInvulnerable(L3_162, false)
        SetTargetable(L3_162, true)
      end
    end
    L3_162 = nil
    if barrackTeam == TEAM_CHAOS then
      L3_162 = TEAM_ORDER
    else
      L3_162 = TEAM_CHAOS
    end
    ApplyBarracksDestructionBonuses(L3_162, barrackLane)
  end
  L1_160 = IsTurretAI
  L2_161 = A0_159
  L1_160 = L1_160(L2_161)
  if L1_160 then
    L1_160 = GetTeamID
    L2_161 = A0_159
    L1_160 = L1_160(L2_161)
    L2_161 = GetObjectLaneId
    L3_162 = A0_159
    L2_161 = L2_161(L3_162)
    L3_162 = GetTurretPosition
    L3_162 = L3_162(A0_159)
    DeactivateCorrectStructure(L1_160, L2_161, L3_162)
    return
  end
  L1_160 = GetDampenerType
  L2_161 = A0_159
  L1_160 = L1_160(L2_161)
  if L1_160 > -1 then
    L2_161 = 0
    L3_162 = TEAM_ORDER
    if L1_160 % TEAM_CHAOS >= RIGHT_LANE and L1_160 % TEAM_CHAOS <= LEFT_LANE then
      L2_161 = ChaosBarracksBonuses[L1_160 % TEAM_CHAOS + 1]
      ChaosBuildingStatus[L1_160 % TEAM_CHAOS + 1].Barracks = false
    else
      L3_162 = TEAM_CHAOS
      L2_161 = OrderBarracksBonuses[L1_160 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus[L1_160 % TEAM_CHAOS - TEAM_ORDER + 1].Barracks = false
    end
  else
    L2_161 = Log
    L3_162 = "Could not find Linking barracks!"
    L2_161(L3_162)
  end
  L2_161 = true
  return L2_161
end
function SetLaneExposed(A0_163, A1_164, A2_165)
  if A0_163 == TEAM_ORDER then
    if A1_164 == LEFT_LANE then
      SetWorldVar("OrderTopLaneExposed", A2_165)
    elseif A1_164 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneExposed", A2_165)
    else
      SetWorldVar("OrderMidLaneExposed", A2_165)
    end
  elseif A1_164 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneExposed", A2_165)
  elseif A1_164 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneExposed", A2_165)
  else
    SetWorldVar("ChaosMidLaneExposed", A2_165)
  end
end
function SetLaneTowerCount(A0_166, A1_167, A2_168)
  if A0_166 == TEAM_ORDER then
    if A1_167 == LEFT_LANE then
      SetWorldVar("OrderTopLaneTowerCount", A2_168)
    elseif A1_167 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneTowerCount", A2_168)
    else
      SetWorldVar("OrderMidLaneTowerCount", A2_168)
    end
  elseif A1_167 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneTowerCount", A2_168)
  elseif A1_167 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneTowerCount", A2_168)
  else
    SetWorldVar("ChaosMidLaneTowerCount", A2_168)
  end
end
function IncreaseCannonMinionSpawnRate()
  local L0_169, L1_170
  L0_169 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_169
  L0_169 = 1
  CANNON_MINION_SPAWN_DECIDER = L0_169
end
function IncreaseCannonMinionSpawnRateAgain()
  local L0_171, L1_172
  L0_171 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_171
  L0_171 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_171
end
function PostGameSetup(A0_173)
  POST_GAME_EVENTS = {}
end
function PostGameUpdate(A0_174, A1_175)
  local L2_176, L3_177, L4_178, L5_179, L6_180, L7_181
  for L7_181, _FORV_8_ in L4_178(L5_179) do
    if A0_174 > _FORV_8_.delay then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_8_.cameraLocation, _FORV_8_.travelTime)
      if _FORV_8_.soundFile then
        ClientSide_PlaySoundFile(_FORV_8_.soundFile)
      end
      table.remove(POST_GAME_EVENTS, L7_181)
      break
    end
  end
end
