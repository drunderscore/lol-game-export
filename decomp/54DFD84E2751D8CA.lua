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
UPGRADE_MINION_TIMER = 90
UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING = 6
TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION = 3
EXP_GIVEN_RADIUS = 1400
GOLD_GIVEN_RADIUS = 1250
DISABLE_MINION_SPAWN_BASE_TIME = 9999
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
  ExpGiven = 64,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 21,
  GoldBonus = 0,
  GoldUpgrade = 0,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 0,
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
  ExpGiven = 32,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 14,
  GoldBonus = 0,
  GoldUpgrade = 0,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 0,
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
  HPUpgrade = 50,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = TOWER_DAMAGE_PER_UPGRADE_MINION_ITERATION * 3.33333333,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageBonus = 0,
  DamageUpgrade = 1.5,
  DamageInhibitor = 0,
  ExpGiven = 100,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 57,
  GoldBonus = 0,
  GoldUpgrade = 3,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 33,
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
  ExpGiven = 100,
  ExpBonus = 0,
  ExpUpgrade = 0,
  ExpInhibitor = 0,
  GoldGiven = 57,
  GoldBonus = 0,
  GoldUpgrade = 3,
  GoldInhibitor = 0,
  GoldShared = 0,
  GoldShareUpgrade = 0,
  GoldMaximumBonus = 33,
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
end
function OnLevelInitServer()
  InitTimer("UpgradeMinionTimerInitial", INITIAL_TIME_TO_SPAWN, false)
  InitTimer("UpgradeMinionMovementSpeedTimer", MINION_MOVE_SPEED_INCREASE_TIME, false)
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
  InitTimer("IncreaseCannonMinionSpawnRate", INCREASE_CANNON_RATE_TIMER, false)
  InitTimer("IncreaseCannonMinionSpawnRateAgain", INCREASE_CANNON_RATE_TIMER2, false)
  InitTimer("AllowDamageOnBuildings", 0.1, false)
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
  ApplyPersistentBuff(A0_54, "TUTORIAL_MODULE_1_TUPlayerBuff", false, 1, 1)
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
        else
          SetInvulnerable(chaosTurret, true)
          SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
        end
      end
    end
  end
end
function ResetToDefaultWaveCounts(A0_84)
  local L1_85, L2_86
  for _FORV_6_, _FORV_7_ in pairs(A0_84) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_87)
  local L1_88, L2_89
  for _FORV_6_, _FORV_7_ in pairs(A0_87) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_90, A1_91)
  local L2_92, L3_93, L4_94
  L2_92 = 0
  L3_93 = TEAM_ORDER
  if A1_91 == L3_93 then
    L3_93 = OrderBarracksBonuses
    L4_94 = A0_90 + 1
    L2_92 = L3_93[L4_94]
  else
    L3_93 = ChaosBarracksBonuses
    L4_94 = A0_90 + 1
    L2_92 = L3_93[L4_94]
  end
  L3_93 = {}
  L4_94 = SpawnTable
  L4_94 = L4_94.WaveSpawnRate
  L3_93.WaveSpawnRate = L4_94
  L4_94 = SpawnTable
  L4_94 = L4_94.SingleMinionSpawnDelay
  L3_93.SingleMinionSpawnDelay = L4_94
  L4_94 = L2_92.IsDestroyed
  L3_93.IsDestroyed = L4_94
  L4_94 = L2_92.MinionInfoTable
  L3_93.MinionInfoTable = L4_94
  ReturnTable = L3_93
  L3_93 = ReturnTable
  return L3_93
end
function GetMinionSpawnInfo(A0_95, A1_96, A2_97, A3_98, A4_99)
  local L5_100, L6_101, L7_102
  L5_100 = 0
  L6_101 = TEAM_ORDER
  if A3_98 == L6_101 then
    L6_101 = OrderBarracksBonuses
    L7_102 = A0_95 + 1
    L5_100 = L6_101[L7_102]
  else
    L6_101 = ChaosBarracksBonuses
    L7_102 = A0_95 + 1
    L5_100 = L6_101[L7_102]
  end
  L6_101 = L5_100.MinionInfoTable
  L6_101 = L6_101.Super
  L7_102 = L5_100.MinionInfoTable
  L7_102 = L7_102.Cannon
  ResetToDefaultWaveCounts(L5_100.MinionInfoTable)
  if A1_96 % CANNON_MINION_SPAWN_FREQUENCY == CANNON_MINION_SPAWN_DECIDER then
    L7_102.NumPerWave = L7_102.NumPerWave + 1
  end
  if A4_99 ~= LAST_WAVE then
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
    LAST_WAVE = A4_99
  end
  if L5_100.WillSpawnSuperMinion == 1 then
    if A3_98 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_98 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_101.NumPerWave = 2
    else
      L6_101.NumPerWave = 1
    end
    L7_102.NumPerWave = 0
  end
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_100.MinionInfoTable)
    L6_101.NumPerWave = L5_100.MinionInfoTable.Super.NumPerWave
    L5_100.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_100.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_100.MinionInfoTable)
  end
  if GetMutatorParameterBool("SuppressMinionSpawn") then
    SuppressMinionSpawnForBarrack(L5_100)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_100.SpawnOrderMinionNames,
    IsDestroyed = L5_100.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_100.MinionInfoTable
  }
  return ReturnTable
end
function DeactivateCorrectStructure(A0_103, A1_104, A2_105)
  local L3_106, L4_107
  L4_107 = TEAM_ORDER
  if A0_103 == L4_107 then
    L3_106 = OrderBuildingStatus
  else
    L3_106 = ChaosBuildingStatus
  end
  L4_107 = FRONT_TOWER
  if A2_105 == L4_107 then
    L4_107 = A1_104 + 1
    L4_107 = L3_106[L4_107]
    L4_107.Turret3 = false
    L4_107 = GetTurret
    L4_107 = L4_107(A0_103, A1_104, MIDDLE_TOWER)
    SetInvulnerable(L4_107, false)
    SetTargetable(L4_107, true)
    SetLaneTowerCount(A0_103, A1_104, 2)
  else
    L4_107 = MIDDLE_TOWER
    if A2_105 == L4_107 then
      L4_107 = A1_104 + 1
      L4_107 = L3_106[L4_107]
      L4_107.Turret2 = false
      L4_107 = GetTurret
      L4_107 = L4_107(A0_103, A1_104, BACK_TOWER)
      SetInvulnerable(L4_107, false)
      SetTargetable(L4_107, true)
      SetLaneTowerCount(A0_103, A1_104, 1)
    else
      L4_107 = BACK_TOWER
      if A2_105 == L4_107 then
        L4_107 = A1_104 + 1
        L4_107 = L3_106[L4_107]
        L4_107.Turret1 = false
        L4_107 = GetDampener
        L4_107 = L4_107(A0_103, A1_104)
        SetInvulnerable(L4_107, false)
        SetTargetable(L4_107, true)
        SetLaneTowerCount(A0_103, A1_104, 0)
      else
        L4_107 = HQ_TOWER2
        if A2_105 == L4_107 then
          L3_106.HQTower2 = false
          L4_107 = L3_106.HQTower1
          if L4_107 == false then
            L4_107 = GetHQ
            L4_107 = L4_107(A0_103)
            SetInvulnerable(L4_107, false)
            SetTargetable(L4_107, true)
          end
        else
          L4_107 = HQ_TOWER1
          if A2_105 == L4_107 then
            L3_106.HQTower1 = false
            L4_107 = L3_106.HQTower2
            if L4_107 == false then
              L4_107 = GetHQ
              L4_107 = L4_107(A0_103)
              SetInvulnerable(L4_107, false)
              SetTargetable(L4_107, true)
            end
          end
        end
      end
    end
  end
end
function GetLuaBarracks(A0_108, A1_109)
  local L2_110, L3_111, L4_112
  L3_111 = TEAM_ORDER
  if A0_108 == L3_111 then
    L3_111 = OrderBarracksBonuses
    L4_112 = A1_109 + 1
    L2_110 = L3_111[L4_112]
  else
    L3_111 = ChaosBarracksBonuses
    L4_112 = A1_109 + 1
    L2_110 = L3_111[L4_112]
  end
  return L2_110
end
function GetDisableMinionSpawnTime(A0_113, A1_114)
  barrack = GetLuaBarracks(A1_114, A0_113)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_115, A1_116)
  cLangBarracks = GetBarracks(A1_116, A0_115)
  luaBarrack = GetLuaBarracks(A1_116, A0_115)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_115, A1_116))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_117, A1_118)
  local L2_119, L3_120, L4_121, L5_122, L6_123, L7_124, L8_125, L9_126, L10_127
  BonusesCounter = L2_119
  for L5_122 = 1, 3 do
    L6_123, L7_124 = nil, nil
    L8_125 = TEAM_ORDER
    if A0_117 == L8_125 then
      L7_124 = TEAM_CHAOS
      L6_123 = OrderBarracksBonuses
      L8_125 = ChaosBarracksBonuses
      EnemyBarracks = L8_125
    else
      L7_124 = TEAM_ORDER
      L6_123 = ChaosBarracksBonuses
      L8_125 = OrderBarracksBonuses
      EnemyBarracks = L8_125
    end
    L8_125, L9_126 = nil, nil
    L10_127 = L6_123[L5_122]
    L10_127 = L10_127.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_127) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_122 == A1_118 + 1 then
      L6_123[L5_122].WillSpawnSuperMinion = 1
      if A0_117 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_128, A1_129)
  local L2_130, L3_131, L4_132, L5_133, L6_134, L7_135, L8_136, L9_137, L10_138, L11_139, L12_140, L13_141, L14_142, L15_143, L16_144, L17_145, L18_146
  ReductionCounter = L2_130
  for L5_133 = 1, 3 do
    L6_134, L7_135, L8_136 = nil, nil, nil
    L9_137 = TEAM_ORDER
    if A0_128 == L9_137 then
      L8_136 = TEAM_CHAOS
      L6_134 = OrderBarracksBonuses
      L7_135 = ChaosBarracksBonuses
    else
      L8_136 = TEAM_ORDER
      L6_134 = ChaosBarracksBonuses
      L7_135 = OrderBarracksBonuses
    end
    L9_137, L10_138 = nil, nil
    L11_139 = L6_134[L5_133]
    L11_139 = L11_139.MinionInfoTable
    for L15_143, L16_144 in L12_140(L13_141) do
      L17_145 = L16_144.HPBonus
      L18_146 = L16_144.HPInhibitor
      L17_145 = L17_145 - L18_146
      L16_144.HPBonus = L17_145
      L17_145 = L16_144.DamageBonus
      L18_146 = L16_144.DamageInhibitor
      L17_145 = L17_145 - L18_146
      L16_144.DamageBonus = L17_145
      L17_145 = L16_144.ExpGiven
      L18_146 = L16_144.ExpInhibitor
      L17_145 = L17_145 + L18_146
      L16_144.ExpGiven = L17_145
      L17_145 = L16_144.GoldGiven
      L18_146 = L16_144.GoldInhibitor
      L17_145 = L17_145 + L18_146
      L16_144.GoldGiven = L17_145
    end
    if L5_133 == L13_141 then
      if A0_128 == L13_141 then
        totalNumberOfChaosBarracks = L13_141
      else
        totalNumberOfOrderBarracks = L13_141
      end
      L13_141.WillSpawnSuperMinion = 0
      L16_144 = false
      L13_141(L14_142, L15_143, L16_144)
    end
    if L12_140 == 3 then
      HQ = L13_141
      L13_141(L14_142, L15_143)
      L13_141(L14_142, L15_143)
      for L16_144 = RIGHT_LANE, LEFT_LANE do
        L17_145 = GetTurret
        L18_146 = L8_136
        L17_145 = L17_145(L18_146, L16_144, HQ_TOWER1)
        L18_146 = GetTurret
        L18_146 = L18_146(L8_136, L16_144, HQ_TOWER2)
        if L17_145 ~= Nil then
          SetInvulnerable(L17_145, true)
          SetNotTargetableToTeam(L17_145, true, A0_128)
        end
        if L18_146 ~= Nil then
          SetInvulnerable(L18_146, true)
          SetNotTargetableToTeam(L18_146, true, A0_128)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_147, A1_148)
  local L2_149
  ReactiveCounter = ReactiveCounter + 1
  L2_149 = OppositeTeam(A0_147)
  dampener = GetDampener(A0_147, A1_148)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_149, A1_148)
end
function DisableSuperMinions(A0_150, A1_151)
  local L2_152, L3_153
  if A0_150 == TEAM_ORDER then
    L2_152 = OrderBarracksBonuses[A1_151 + 1]
    L3_153 = ChaosBarracksBonuses[A1_151 + 1]
  elseif A0_150 == TEAM_CHAOS then
    L2_152 = ChaosBarracksBonuses[A1_151 + 1]
    L3_153 = OrderBarracksBonuses[A1_151 + 1]
  end
  if L3_153 then
    L3_153.WillSpawnSuperMinion = 0
  end
end
function OnJumpToMidGameCheat(A0_154)
  local L1_155
  L1_155 = GetTurret
  L1_155 = L1_155(TEAM_ORDER, 1, HQ_TOWER1)
  if A0_154 == 0 then
    ApplyPersistentBuff(L1_155, "DebugMidGameBuff", false, 1, 1)
  else
    ApplyPersistentBuff(L1_155, "DebugLateGameBuff", false, 1, 1)
  end
end
function EqualizeDragonsCheat()
  local L0_156
  L0_156 = GetTurret
  L0_156 = L0_156(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_156, "DebugEqualizeDragons", false, 1, 1)
end
function EqualizeResetPlay()
  local L0_157
  L0_157 = GetTurret
  L0_157 = L0_157(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_157, "DebugResetPlay", false, 1, 1)
end
function OnBarracksToggled(A0_158)
  local L1_159
  if A0_158 == 0 then
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_160)
  local L1_161, L2_162, L3_163
  L1_161 = GetHQType
  L2_162 = A0_160
  L1_161 = L1_161(L2_162)
  HQType = L1_161
  L1_161 = HQType
  L2_162 = ORDER_HQ
  if L1_161 ~= L2_162 then
    L1_161 = HQType
    L2_162 = CHAOS_HQ
  elseif L1_161 == L2_162 then
    L1_161 = SetWorldVar
    L2_162 = "EndOfGame_GameHasEnded"
    L3_163 = true
    L1_161(L2_162, L3_163)
    L1_161 = HQType
    L2_162 = CHAOS_HQ
    if L1_161 == L2_162 then
      L1_161 = SetWorldVar
      L2_162 = "EndOfGame_LosingTeam"
      L3_163 = TEAM_CHAOS
      L1_161(L2_162, L3_163)
      L1_161 = EndOfGameCeremony
      L2_162 = TEAM_ORDER
      L3_163 = A0_160
      L1_161(L2_162, L3_163)
    else
      L1_161 = SetWorldVar
      L2_162 = "EndOfGame_LosingTeam"
      L3_163 = TEAM_ORDER
      L1_161(L2_162, L3_163)
      L1_161 = EndOfGameCeremony
      L2_162 = TEAM_CHAOS
      L3_163 = A0_160
      L1_161(L2_162, L3_163)
    end
    L1_161 = GetTurret
    L2_162 = TEAM_ORDER
    L3_163 = 1
    L1_161 = L1_161(L2_162, L3_163, 0)
    L2_162 = ApplyPersistentBuff
    L3_163 = L1_161
    L2_162(L3_163, "EndOfGameTriggers", false, 1, 1)
    return
  end
  L1_161 = IsDampener
  L2_162 = A0_160
  L1_161 = L1_161(L2_162)
  if L1_161 then
    L1_161 = GetLinkedBarrack
    L2_162 = A0_160
    L1_161 = L1_161(L2_162)
    barrack = L1_161
    L1_161 = GetTeamID
    L2_162 = barrack
    L1_161 = L1_161(L2_162)
    barrackTeam = L1_161
    L1_161 = GetLane
    L2_162 = A0_160
    L1_161 = L1_161(L2_162)
    barrackLane = L1_161
    L1_161 = SetLaneExposed
    L2_162 = barrackTeam
    L3_163 = barrackLane
    L1_161(L2_162, L3_163, true)
    L1_161 = DisableBarracksSpawn
    L2_162 = barrackLane
    L3_163 = barrackTeam
    L1_161(L2_162, L3_163)
    L1_161 = SetDampenerState
    L2_162 = A0_160
    L3_163 = DampenerRegenerationState
    L1_161(L2_162, L3_163)
    L1_161 = SetInvulnerable
    L2_162 = A0_160
    L3_163 = true
    L1_161(L2_162, L3_163)
    L1_161 = SetTargetable
    L2_162 = A0_160
    L3_163 = false
    L1_161(L2_162, L3_163)
    L1_161 = DisactivatedCounter
    L1_161 = L1_161 + 1
    DisactivatedCounter = L1_161
    L1_161 = barrackLane
    L2_162 = CENTER_LANE
    if L1_161 == L2_162 then
      L1_161 = GetTurret
      L2_162 = barrackTeam
      L3_163 = 1
      L1_161 = L1_161(L2_162, L3_163, HQ_TOWER1)
      L2_162 = GetTurret
      L3_163 = barrackTeam
      L2_162 = L2_162(L3_163, 1, HQ_TOWER2)
      L3_163 = Nil
      if L1_161 ~= L3_163 then
        L3_163 = SetInvulnerable
        L3_163(L1_161, false)
        L3_163 = SetTargetable
        L3_163(L1_161, true)
      end
      L3_163 = Nil
      if L2_162 ~= L3_163 then
        L3_163 = SetInvulnerable
        L3_163(L2_162, false)
        L3_163 = SetTargetable
        L3_163(L2_162, true)
      end
      L3_163 = Nil
      if L1_161 == L3_163 then
        L3_163 = Nil
        if L2_162 == L3_163 then
          L3_163 = GetHQ
          L3_163 = L3_163(barrackTeam)
          SetInvulnerable(L3_163, false)
          SetTargetable(L3_163, true)
        end
      end
      L3_163 = nil
      if barrackTeam == TEAM_CHAOS then
        L3_163 = TEAM_ORDER
      else
        L3_163 = TEAM_CHAOS
      end
      ApplyBarracksDestructionBonuses(L3_163, barrackLane)
    end
  end
  L1_161 = IsTurretAI
  L2_162 = A0_160
  L1_161 = L1_161(L2_162)
  if L1_161 then
    L1_161 = GetTeamID
    L2_162 = A0_160
    L1_161 = L1_161(L2_162)
    L2_162 = GetObjectLaneId
    L3_163 = A0_160
    L2_162 = L2_162(L3_163)
    L3_163 = GetTurretPosition
    L3_163 = L3_163(A0_160)
    DeactivateCorrectStructure(L1_161, L2_162, L3_163)
    return
  end
  L1_161 = GetDampenerType
  L2_162 = A0_160
  L1_161 = L1_161(L2_162)
  if L1_161 > -1 then
    L2_162 = 0
    L3_163 = TEAM_ORDER
    if L1_161 % TEAM_CHAOS >= RIGHT_LANE and L1_161 % TEAM_CHAOS <= LEFT_LANE then
      L2_162 = ChaosBarracksBonuses[L1_161 % TEAM_CHAOS + 1]
      ChaosBuildingStatus[L1_161 % TEAM_CHAOS + 1].Barracks = false
    else
      L3_163 = TEAM_CHAOS
      L2_162 = OrderBarracksBonuses[L1_161 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus[L1_161 % TEAM_CHAOS - TEAM_ORDER + 1].Barracks = false
    end
  else
    L2_162 = Log
    L3_163 = "Could not find Linking barracks!"
    L2_162(L3_163)
  end
  L2_162 = true
  return L2_162
end
function SetLaneExposed(A0_164, A1_165, A2_166)
  if A0_164 == TEAM_ORDER then
    if A1_165 == LEFT_LANE then
      SetWorldVar("OrderTopLaneExposed", A2_166)
    elseif A1_165 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneExposed", A2_166)
    else
      SetWorldVar("OrderMidLaneExposed", A2_166)
    end
  elseif A1_165 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneExposed", A2_166)
  elseif A1_165 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneExposed", A2_166)
  else
    SetWorldVar("ChaosMidLaneExposed", A2_166)
  end
end
function SetLaneTowerCount(A0_167, A1_168, A2_169)
  if A0_167 == TEAM_ORDER then
    if A1_168 == LEFT_LANE then
      SetWorldVar("OrderTopLaneTowerCount", A2_169)
    elseif A1_168 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneTowerCount", A2_169)
    else
      SetWorldVar("OrderMidLaneTowerCount", A2_169)
    end
  elseif A1_168 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneTowerCount", A2_169)
  elseif A1_168 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneTowerCount", A2_169)
  else
    SetWorldVar("ChaosMidLaneTowerCount", A2_169)
  end
end
function IncreaseCannonMinionSpawnRate()
  local L0_170, L1_171
  L0_170 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_170
  L0_170 = 1
  CANNON_MINION_SPAWN_DECIDER = L0_170
end
function IncreaseCannonMinionSpawnRateAgain()
  local L0_172, L1_173
  L0_172 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_172
  L0_172 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_172
end
function PostGameSetup(A0_174)
  POST_GAME_EVENTS = {}
end
function PostGameUpdate(A0_175, A1_176)
  local L2_177, L3_178, L4_179, L5_180, L6_181, L7_182
  for L7_182, _FORV_8_ in L4_179(L5_180) do
    if A0_175 > _FORV_8_.delay then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_8_.cameraLocation, _FORV_8_.travelTime)
      if _FORV_8_.soundFile then
        ClientSide_PlaySoundFile(_FORV_8_.soundFile)
      end
      table.remove(POST_GAME_EVENTS, L7_182)
      break
    end
  end
end
