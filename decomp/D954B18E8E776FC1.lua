DoLuaShared("GlobalLevelScript")
EVENT_STAGE_WELCOME_TIME = 25
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
UPGRADE_MINION_TIMER = 60
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
MINION_MOVE_SPEED_INCREASE_TIME = 1200
MINION_MOVE_SPEED_INCREASE_AMOUNT = 25
MINION_MOVE_SPEED_DO_UPDATE = false
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
  ExpGiven = 84,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 26.875,
  GoldBonus = 0,
  GoldUpgrade = 0.125,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 12,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0,
  MoveSpeedBaseIncrease = 0
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
  ExpGiven = 52,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 23.875,
  GoldBonus = 0,
  GoldUpgrade = 0.125,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 8,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0,
  MoveSpeedBaseIncrease = 0
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
  ExpGiven = 130,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 58.65,
  GoldBonus = 0,
  GoldUpgrade = 0.35,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 30,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0,
  MoveSpeedBaseIncrease = 0
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
  ExpGiven = 130,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 58.65,
  GoldBonus = 0,
  GoldUpgrade = 0.35,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 30,
  LocalGoldGiven = 0,
  LocalGoldBonus = 0,
  MoveSpeedBaseIncrease = 0
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
OrderOutermostTurrets = {}
ChaosOutermostTurrets = {}
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
  L2_31(L3_32, L4_33)
  L2_31(L3_32, L4_33)
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
  InitTimer("UpgradeMinionMovementSpeedTimer", MINION_MOVE_SPEED_INCREASE_TIME, false)
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
  L4_40 = "Idle.lua"
  L5_41 = Make3DPoint
  L6_42 = 0
  L7_43 = 0
  L5_41 = L5_41(L6_42, L7_43, L8_44)
  L6_42 = TEAM_NEUTRAL
  L7_43 = false
  L11_47 = true
  PromoController = L1_37
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
        if MINION_MOVE_SPEED_DO_UPDATE == true then
          _FORV_16_.MoveSpeedBaseIncrease = _FORV_16_.MoveSpeedBaseIncrease + MINION_MOVE_SPEED_INCREASE_AMOUNT
        end
      end
    end
  end
  if L1_62 == true then
    MINION_MOVE_SPEED_DO_UPDATE = L1_62
  end
end
function UpgradeMinionMovementSpeedTimer()
  local L1_73
  L1_73 = true
  MINION_MOVE_SPEED_DO_UPDATE = L1_73
end
function AllowDamageOnBuildings()
  local L0_74, L1_75, L2_76, L3_77, L4_78, L5_79, L6_80, L7_81, L8_82, L9_83
  for L3_77 = RIGHT_LANE, LEFT_LANE do
    L4_78 = -1
    L5_79 = -1
    for L9_83 = FRONT_TOWER, BACK_TOWER, -1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_77, L9_83)
      if orderTurret ~= nil and L4_78 == -1 then
        L4_78 = L9_83
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_77, L9_83)
      if chaosTurret ~= nil and L5_79 == -1 then
        L5_79 = L9_83
      end
    end
    for L9_83 = BACK_TOWER, HQ_TOWER1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_77, L9_83)
      if orderTurret ~= nil then
        if L9_83 == L4_78 then
          SetInvulnerable(orderTurret, false)
          SetTargetable(orderTurret, true)
          SetExposedTower(TEAM_ORDER, orderTurret, L3_77)
        else
          SetInvulnerable(orderTurret, true)
          SetNotTargetableToTeam(orderTurret, true, TEAM_CHAOS)
        end
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_77, L9_83)
      if chaosTurret ~= nil then
        if L9_83 == L5_79 then
          SetInvulnerable(chaosTurret, false)
          SetTargetable(chaosTurret, true)
          SetExposedTower(TEAM_CHAOS, chaosTurret, L3_77)
        else
          SetInvulnerable(chaosTurret, true)
          SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
        end
      end
    end
  end
end
function SetExposedTower(A0_84, A1_85, A2_86)
  local L3_87
  L3_87 = TEAM_ORDER
  if A0_84 == L3_87 then
    L3_87 = OrderOutermostTurrets
    L3_87[A2_86] = GetUnitRef(A1_85)
  end
  L3_87 = TEAM_CHAOS
  if A0_84 == L3_87 then
    L3_87 = ChaosOutermostTurrets
    L3_87[A2_86] = GetUnitRef(A1_85)
  end
end
function ResetToDefaultWaveCounts(A0_88)
  local L1_89, L2_90
  for _FORV_6_, _FORV_7_ in pairs(A0_88) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_91)
  local L1_92, L2_93
  for _FORV_6_, _FORV_7_ in pairs(A0_91) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_94, A1_95)
  local L2_96, L3_97, L4_98
  L2_96 = 0
  L3_97 = TEAM_ORDER
  if A1_95 == L3_97 then
    L3_97 = OrderBarracksBonuses
    L4_98 = A0_94 + 1
    L2_96 = L3_97[L4_98]
  else
    L3_97 = ChaosBarracksBonuses
    L4_98 = A0_94 + 1
    L2_96 = L3_97[L4_98]
  end
  L3_97 = {}
  L4_98 = SpawnTable
  L4_98 = L4_98.WaveSpawnRate
  L3_97.WaveSpawnRate = L4_98
  L4_98 = SpawnTable
  L4_98 = L4_98.SingleMinionSpawnDelay
  L3_97.SingleMinionSpawnDelay = L4_98
  L4_98 = L2_96.IsDestroyed
  L3_97.IsDestroyed = L4_98
  L4_98 = L2_96.MinionInfoTable
  L3_97.MinionInfoTable = L4_98
  ReturnTable = L3_97
  L3_97 = ReturnTable
  return L3_97
end
function GetMinionSpawnInfo(A0_99, A1_100, A2_101, A3_102, A4_103)
  local L5_104, L6_105, L7_106
  L5_104 = 0
  L6_105 = TEAM_ORDER
  if A3_102 == L6_105 then
    L6_105 = OrderBarracksBonuses
    L7_106 = A0_99 + 1
    L5_104 = L6_105[L7_106]
  else
    L6_105 = ChaosBarracksBonuses
    L7_106 = A0_99 + 1
    L5_104 = L6_105[L7_106]
  end
  L6_105 = L5_104.MinionInfoTable
  L6_105 = L6_105.Super
  L7_106 = L5_104.MinionInfoTable
  L7_106 = L7_106.Cannon
  ResetToDefaultWaveCounts(L5_104.MinionInfoTable)
  if A1_100 % CANNON_MINION_SPAWN_FREQUENCY == CANNON_MINION_SPAWN_DECIDER then
    L7_106.NumPerWave = L7_106.NumPerWave + 1
  end
  if A4_103 ~= LAST_WAVE then
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
    LAST_WAVE = A4_103
  end
  if L5_104.WillSpawnSuperMinion == 1 then
    if A3_102 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_102 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_105.NumPerWave = 2
    else
      L6_105.NumPerWave = 1
    end
    L7_106.NumPerWave = 0
  end
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_104.MinionInfoTable)
    L6_105.NumPerWave = L5_104.MinionInfoTable.Super.NumPerWave
    L5_104.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_104.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_104.MinionInfoTable)
  end
  if GetMutatorParameterBool("SuppressMinionSpawn") then
    SuppressMinionSpawnForBarrack(L5_104)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_104.SpawnOrderMinionNames,
    IsDestroyed = L5_104.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_104.MinionInfoTable
  }
  return ReturnTable
end
function DeactivateCorrectStructure(A0_107, A1_108, A2_109)
  local L3_110, L4_111
  L4_111 = TEAM_ORDER
  if A0_107 == L4_111 then
    L3_110 = OrderBuildingStatus
  else
    L3_110 = ChaosBuildingStatus
  end
  L4_111 = FRONT_TOWER
  if A2_109 == L4_111 then
    L4_111 = A1_108 + 1
    L4_111 = L3_110[L4_111]
    L4_111.Turret3 = false
    L4_111 = GetTurret
    L4_111 = L4_111(A0_107, A1_108, MIDDLE_TOWER)
    SetInvulnerable(L4_111, false)
    SetTargetable(L4_111, true)
    SetExposedTower(A0_107, L4_111, A1_108)
    SetLaneTowerCount(A0_107, A1_108, 2)
  else
    L4_111 = MIDDLE_TOWER
    if A2_109 == L4_111 then
      L4_111 = A1_108 + 1
      L4_111 = L3_110[L4_111]
      L4_111.Turret2 = false
      L4_111 = GetTurret
      L4_111 = L4_111(A0_107, A1_108, BACK_TOWER)
      SetInvulnerable(L4_111, false)
      SetTargetable(L4_111, true)
      SetExposedTower(A0_107, L4_111, A1_108)
      SetLaneTowerCount(A0_107, A1_108, 1)
    else
      L4_111 = BACK_TOWER
      if A2_109 == L4_111 then
        L4_111 = A1_108 + 1
        L4_111 = L3_110[L4_111]
        L4_111.Turret1 = false
        L4_111 = GetDampener
        L4_111 = L4_111(A0_107, A1_108)
        SetInvulnerable(L4_111, false)
        SetTargetable(L4_111, true)
        SetExposedTower(A0_107, nil, A1_108)
        SetLaneTowerCount(A0_107, A1_108, 0)
      else
        L4_111 = HQ_TOWER2
        if A2_109 == L4_111 then
          L3_110.HQTower2 = false
          L4_111 = L3_110.HQTower1
          if L4_111 == false then
            L4_111 = GetHQ
            L4_111 = L4_111(A0_107)
            SetInvulnerable(L4_111, false)
            SetTargetable(L4_111, true)
          end
        else
          L4_111 = HQ_TOWER1
          if A2_109 == L4_111 then
            L3_110.HQTower1 = false
            L4_111 = L3_110.HQTower2
            if L4_111 == false then
              L4_111 = GetHQ
              L4_111 = L4_111(A0_107)
              SetInvulnerable(L4_111, false)
              SetTargetable(L4_111, true)
            end
          end
        end
      end
    end
  end
end
function GetLuaBarracks(A0_112, A1_113)
  local L2_114, L3_115, L4_116
  L3_115 = TEAM_ORDER
  if A0_112 == L3_115 then
    L3_115 = OrderBarracksBonuses
    L4_116 = A1_113 + 1
    L2_114 = L3_115[L4_116]
  else
    L3_115 = ChaosBarracksBonuses
    L4_116 = A1_113 + 1
    L2_114 = L3_115[L4_116]
  end
  return L2_114
end
function GetDisableMinionSpawnTime(A0_117, A1_118)
  barrack = GetLuaBarracks(A1_118, A0_117)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_119, A1_120)
  cLangBarracks = GetBarracks(A1_120, A0_119)
  luaBarrack = GetLuaBarracks(A1_120, A0_119)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_119, A1_120))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_121, A1_122)
  local L2_123, L3_124, L4_125, L5_126, L6_127, L7_128, L8_129, L9_130, L10_131
  BonusesCounter = L2_123
  for L5_126 = 1, 3 do
    L6_127, L7_128 = nil, nil
    L8_129 = TEAM_ORDER
    if A0_121 == L8_129 then
      L7_128 = TEAM_CHAOS
      L6_127 = OrderBarracksBonuses
      L8_129 = ChaosBarracksBonuses
      EnemyBarracks = L8_129
    else
      L7_128 = TEAM_ORDER
      L6_127 = ChaosBarracksBonuses
      L8_129 = OrderBarracksBonuses
      EnemyBarracks = L8_129
    end
    L8_129, L9_130 = nil, nil
    L10_131 = L6_127[L5_126]
    L10_131 = L10_131.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_131) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_126 == A1_122 + 1 then
      L6_127[L5_126].WillSpawnSuperMinion = 1
      if A0_121 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_132, A1_133)
  local L2_134, L3_135, L4_136, L5_137, L6_138, L7_139, L8_140, L9_141, L10_142, L11_143, L12_144, L13_145, L14_146, L15_147, L16_148, L17_149, L18_150
  ReductionCounter = L2_134
  for L5_137 = 1, 3 do
    L6_138, L7_139, L8_140 = nil, nil, nil
    L9_141 = TEAM_ORDER
    if A0_132 == L9_141 then
      L8_140 = TEAM_CHAOS
      L6_138 = OrderBarracksBonuses
      L7_139 = ChaosBarracksBonuses
    else
      L8_140 = TEAM_ORDER
      L6_138 = ChaosBarracksBonuses
      L7_139 = OrderBarracksBonuses
    end
    L9_141, L10_142 = nil, nil
    L11_143 = L6_138[L5_137]
    L11_143 = L11_143.MinionInfoTable
    for L15_147, L16_148 in L12_144(L13_145) do
      L17_149 = L16_148.HPBonus
      L18_150 = L16_148.HPInhibitor
      L17_149 = L17_149 - L18_150
      L16_148.HPBonus = L17_149
      L17_149 = L16_148.DamageBonus
      L18_150 = L16_148.DamageInhibitor
      L17_149 = L17_149 - L18_150
      L16_148.DamageBonus = L17_149
      L17_149 = L16_148.ExpGiven
      L18_150 = L16_148.ExpInhibitor
      L17_149 = L17_149 + L18_150
      L16_148.ExpGiven = L17_149
      L17_149 = L16_148.GoldGiven
      L18_150 = L16_148.GoldInhibitor
      L17_149 = L17_149 + L18_150
      L16_148.GoldGiven = L17_149
    end
    if L5_137 == L13_145 then
      if A0_132 == L13_145 then
        totalNumberOfChaosBarracks = L13_145
      else
        totalNumberOfOrderBarracks = L13_145
      end
      L13_145.WillSpawnSuperMinion = 0
      L16_148 = false
      L13_145(L14_146, L15_147, L16_148)
    end
    if L12_144 == 3 then
      HQ = L13_145
      L13_145(L14_146, L15_147)
      L13_145(L14_146, L15_147)
      for L16_148 = RIGHT_LANE, LEFT_LANE do
        L17_149 = GetTurret
        L18_150 = L8_140
        L17_149 = L17_149(L18_150, L16_148, HQ_TOWER1)
        L18_150 = GetTurret
        L18_150 = L18_150(L8_140, L16_148, HQ_TOWER2)
        if L17_149 ~= Nil then
          SetInvulnerable(L17_149, true)
          SetNotTargetableToTeam(L17_149, true, A0_132)
        end
        if L18_150 ~= Nil then
          SetInvulnerable(L18_150, true)
          SetNotTargetableToTeam(L18_150, true, A0_132)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_151, A1_152)
  local L2_153
  ReactiveCounter = ReactiveCounter + 1
  L2_153 = OppositeTeam(A0_151)
  dampener = GetDampener(A0_151, A1_152)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_153, A1_152)
end
function DisableSuperMinions(A0_154, A1_155)
  local L2_156, L3_157
  if A0_154 == TEAM_ORDER then
    L2_156 = OrderBarracksBonuses[A1_155 + 1]
    L3_157 = ChaosBarracksBonuses[A1_155 + 1]
  elseif A0_154 == TEAM_CHAOS then
    L2_156 = ChaosBarracksBonuses[A1_155 + 1]
    L3_157 = OrderBarracksBonuses[A1_155 + 1]
  end
  if L3_157 then
    L3_157.WillSpawnSuperMinion = 0
  end
end
function OnJumpToMidGameCheat(A0_158)
  local L1_159
  L1_159 = GetTurret
  L1_159 = L1_159(TEAM_ORDER, 1, HQ_TOWER1)
  if A0_158 == 0 then
    ApplyPersistentBuff(L1_159, "DebugMidGameBuff", false, 1, 1)
  else
    ApplyPersistentBuff(L1_159, "DebugLateGameBuff", false, 1, 1)
  end
end
function EqualizeDragonsCheat()
  local L0_160
  L0_160 = GetTurret
  L0_160 = L0_160(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_160, "DebugEqualizeDragons", false, 1, 1)
end
function EqualizeResetPlay()
  local L0_161
  L0_161 = GetTurret
  L0_161 = L0_161(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_161, "DebugResetPlay", false, 1, 1)
end
function OnBarracksToggled(A0_162)
  local L1_163
  if A0_162 == 0 then
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_164)
  local L1_165, L2_166, L3_167
  L1_165 = GetHQType
  L2_166 = A0_164
  L1_165 = L1_165(L2_166)
  HQType = L1_165
  L1_165 = HQType
  L2_166 = ORDER_HQ
  if L1_165 ~= L2_166 then
    L1_165 = HQType
    L2_166 = CHAOS_HQ
  elseif L1_165 == L2_166 then
    L1_165 = SetWorldVar
    L2_166 = "EndOfGame_GameHasEnded"
    L3_167 = true
    L1_165(L2_166, L3_167)
    L1_165 = HQType
    L2_166 = CHAOS_HQ
    if L1_165 == L2_166 then
      L1_165 = SetWorldVar
      L2_166 = "EndOfGame_LosingTeam"
      L3_167 = TEAM_CHAOS
      L1_165(L2_166, L3_167)
      L1_165 = EndOfGameCeremony
      L2_166 = TEAM_ORDER
      L3_167 = A0_164
      L1_165(L2_166, L3_167)
    else
      L1_165 = SetWorldVar
      L2_166 = "EndOfGame_LosingTeam"
      L3_167 = TEAM_ORDER
      L1_165(L2_166, L3_167)
      L1_165 = EndOfGameCeremony
      L2_166 = TEAM_CHAOS
      L3_167 = A0_164
      L1_165(L2_166, L3_167)
    end
    L1_165 = GetTurret
    L2_166 = TEAM_ORDER
    L3_167 = 1
    L1_165 = L1_165(L2_166, L3_167, 0)
    L2_166 = ApplyPersistentBuff
    L3_167 = L1_165
    L2_166(L3_167, "EndOfGameTriggers", false, 1, 1)
    return
  end
  L1_165 = IsDampener
  L2_166 = A0_164
  L1_165 = L1_165(L2_166)
  if L1_165 then
    L1_165 = GetLinkedBarrack
    L2_166 = A0_164
    L1_165 = L1_165(L2_166)
    barrack = L1_165
    L1_165 = GetTeamID
    L2_166 = barrack
    L1_165 = L1_165(L2_166)
    barrackTeam = L1_165
    L1_165 = GetLane
    L2_166 = A0_164
    L1_165 = L1_165(L2_166)
    barrackLane = L1_165
    L1_165 = SetLaneExposed
    L2_166 = barrackTeam
    L3_167 = barrackLane
    L1_165(L2_166, L3_167, true)
    L1_165 = DisableBarracksSpawn
    L2_166 = barrackLane
    L3_167 = barrackTeam
    L1_165(L2_166, L3_167)
    L1_165 = SetDampenerState
    L2_166 = A0_164
    L3_167 = DampenerRegenerationState
    L1_165(L2_166, L3_167)
    L1_165 = SetInvulnerable
    L2_166 = A0_164
    L3_167 = true
    L1_165(L2_166, L3_167)
    L1_165 = SetTargetable
    L2_166 = A0_164
    L3_167 = false
    L1_165(L2_166, L3_167)
    L1_165 = DisactivatedCounter
    L1_165 = L1_165 + 1
    DisactivatedCounter = L1_165
    L1_165 = GetTurret
    L2_166 = barrackTeam
    L3_167 = 1
    L1_165 = L1_165(L2_166, L3_167, HQ_TOWER1)
    L2_166 = GetTurret
    L3_167 = barrackTeam
    L2_166 = L2_166(L3_167, 1, HQ_TOWER2)
    L3_167 = Nil
    if L1_165 ~= L3_167 then
      L3_167 = SetInvulnerable
      L3_167(L1_165, false)
      L3_167 = SetTargetable
      L3_167(L1_165, true)
    end
    L3_167 = Nil
    if L2_166 ~= L3_167 then
      L3_167 = SetInvulnerable
      L3_167(L2_166, false)
      L3_167 = SetTargetable
      L3_167(L2_166, true)
    end
    L3_167 = Nil
    if L1_165 == L3_167 then
      L3_167 = Nil
      if L2_166 == L3_167 then
        L3_167 = GetHQ
        L3_167 = L3_167(barrackTeam)
        SetInvulnerable(L3_167, false)
        SetTargetable(L3_167, true)
      end
    end
    L3_167 = nil
    if barrackTeam == TEAM_CHAOS then
      L3_167 = TEAM_ORDER
    else
      L3_167 = TEAM_CHAOS
    end
    ApplyBarracksDestructionBonuses(L3_167, barrackLane)
  end
  L1_165 = IsTurretAI
  L2_166 = A0_164
  L1_165 = L1_165(L2_166)
  if L1_165 then
    L1_165 = GetTeamID
    L2_166 = A0_164
    L1_165 = L1_165(L2_166)
    L2_166 = GetObjectLaneId
    L3_167 = A0_164
    L2_166 = L2_166(L3_167)
    L3_167 = GetTurretPosition
    L3_167 = L3_167(A0_164)
    DeactivateCorrectStructure(L1_165, L2_166, L3_167)
    return
  end
  L1_165 = GetDampenerType
  L2_166 = A0_164
  L1_165 = L1_165(L2_166)
  if L1_165 > -1 then
    L2_166 = 0
    L3_167 = TEAM_ORDER
    if L1_165 % TEAM_CHAOS >= RIGHT_LANE and L1_165 % TEAM_CHAOS <= LEFT_LANE then
      L2_166 = ChaosBarracksBonuses[L1_165 % TEAM_CHAOS + 1]
      ChaosBuildingStatus[L1_165 % TEAM_CHAOS + 1].Barracks = false
    else
      L3_167 = TEAM_CHAOS
      L2_166 = OrderBarracksBonuses[L1_165 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus[L1_165 % TEAM_CHAOS - TEAM_ORDER + 1].Barracks = false
    end
  else
    L2_166 = Log
    L3_167 = "Could not find Linking barracks!"
    L2_166(L3_167)
  end
  L2_166 = true
  return L2_166
end
function SetLaneExposed(A0_168, A1_169, A2_170)
  if A0_168 == TEAM_ORDER then
    if A1_169 == LEFT_LANE then
      SetWorldVar("OrderTopLaneExposed", A2_170)
    elseif A1_169 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneExposed", A2_170)
    else
      SetWorldVar("OrderMidLaneExposed", A2_170)
    end
  elseif A1_169 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneExposed", A2_170)
  elseif A1_169 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneExposed", A2_170)
  else
    SetWorldVar("ChaosMidLaneExposed", A2_170)
  end
end
function SetLaneTowerCount(A0_171, A1_172, A2_173)
  if A0_171 == TEAM_ORDER then
    if A1_172 == LEFT_LANE then
      SetWorldVar("OrderTopLaneTowerCount", A2_173)
    elseif A1_172 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneTowerCount", A2_173)
    else
      SetWorldVar("OrderMidLaneTowerCount", A2_173)
    end
  elseif A1_172 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneTowerCount", A2_173)
  elseif A1_172 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneTowerCount", A2_173)
  else
    SetWorldVar("ChaosMidLaneTowerCount", A2_173)
  end
end
function IncreaseCannonMinionSpawnRate()
  local L0_174, L1_175
  L0_174 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_174
  L0_174 = 1
  CANNON_MINION_SPAWN_DECIDER = L0_174
end
function IncreaseCannonMinionSpawnRateAgain()
  local L0_176, L1_177
  L0_176 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_176
  L0_176 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_176
end
function PostGameSetup(A0_178)
  POST_GAME_EVENTS = {}
end
function PostGameUpdate(A0_179, A1_180)
  local L2_181, L3_182, L4_183, L5_184, L6_185, L7_186
  for L7_186, _FORV_8_ in L4_183(L5_184) do
    if A0_179 > _FORV_8_.delay then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_8_.cameraLocation, _FORV_8_.travelTime)
      if _FORV_8_.soundFile then
        ClientSide_PlaySoundFile(_FORV_8_.soundFile)
      end
      table.remove(POST_GAME_EVENTS, L7_186)
      break
    end
  end
end
