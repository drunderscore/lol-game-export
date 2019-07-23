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
INCREASE_CANNON_RATE_TIMER = 850
INCREASE_CANNON_RATE_TIMER2 = 1500
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
MINION_MOVE_SPEED_INCREASE_TIME = 600
NEXT_MINION_MOVE_SPEED_INCREASE_TIME = 300
MINION_MOVE_SPEED_INCREASE_AMOUNT = 25
MINION_MOVE_SPEED_INCREMENT = 0
MAX_MINION_MOVE_SPEED_INCREMENT = 4
SpawnTable = {
  WaveSpawnRate = 30000,
  SingleMinionSpawnDelay = 800,
  ExpRadius = EXP_GIVEN_RADIUS,
  GoldRadius = GOLD_GIVEN_RADIUS
}
MeleeDefaultMinionInfo = {
  DefaultNumPerWave = 3,
  ArmorMax = 16,
  Armor = 0,
  ArmorUpgrade = 0,
  ArmorUpgradeGrowth = 0.085,
  MagicResistance = 0,
  MagicResistanceUpgrade = 0.625,
  HPBonus = 0,
  MaxBonus = 845,
  HPUpgrade = 22,
  HPUpgradeGrowth = 0.3,
  HPUpgradeLate = 10.25,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageMax = 68,
  DamageBonus = 0,
  DamageUpgrade = 0,
  DamageUpgradeLate = 3.41,
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
  ArmorMax = 0,
  Armor = 0,
  ArmorUpgrade = 0,
  ArmorUpgradeGrowth = 0,
  MagicResistance = 0,
  MagicResistanceUpgrade = 1,
  HPBonus = 0,
  MaxBonus = 195,
  HPUpgrade = 6,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = 2.25,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageMax = 97,
  DamageBonus = 0,
  DamageUpgrade = 1.5,
  DamageUpgradeLate = 3,
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
  ArmorMax = 0,
  Armor = 0,
  ArmorUpgrade = 0,
  ArmorUpgradeGrowth = 0,
  MagicResistance = 0,
  MagicResistanceUpgrade = 1.5,
  HPBonus = 0,
  MaxBonus = 10000,
  HPUpgrade = 62,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = 25,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageMax = 10000,
  DamageBonus = 0,
  DamageUpgrade = 1.5,
  DamageUpgradeLate = 0,
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
  ArmorMax = 0,
  Armor = 0,
  ArmorUpgrade = 0,
  ArmorUpgradeGrowth = 0,
  MagicResistance = 0,
  MagicResistanceUpgrade = 0,
  HPBonus = 0,
  MaxBonus = 10000,
  HPUpgrade = 100,
  HPUpgradeGrowth = 0,
  HPUpgradeLate = 0,
  HPUpgradeGrowthLate = 0,
  HPInhibitor = 0,
  DamageMax = 1000,
  DamageBonus = 0,
  DamageUpgrade = 5,
  DamageUpgradeLate = 0,
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
        if UpgradedMinionIterations >= UPGRADE_MINION_ITERATIONS_FOR_LATE_SCALING then
          _FORV_16_.DamageBonus = _FORV_16_.DamageBonus + _FORV_16_.DamageUpgradeLate
          _FORV_16_.DamageBonus = math.min(_FORV_16_.DamageBonus, _FORV_16_.DamageMax)
          _FORV_16_.Armor = _FORV_16_.Armor + _FORV_16_.ArmorUpgrade
          _FORV_16_.ArmorUpgrade = _FORV_16_.ArmorUpgrade + _FORV_16_.ArmorUpgradeGrowth
          _FORV_16_.Armor = math.min(_FORV_16_.Armor, _FORV_16_.ArmorMax)
        end
        _FORV_16_.MagicResistance = _FORV_16_.MagicResistance
        _FORV_16_.ExpBonus = _FORV_16_.ExpBonus + _FORV_16_.ExpUpgrade
        _FORV_16_.GoldGiven = _FORV_16_.GoldBonus + _FORV_16_.GoldGivenBase
        _FORV_16_.LocalGoldGiven = _FORV_16_.LocalGoldBonus + _FORV_16_.GoldShared
        _FORV_16_.ExpGiven = _FORV_16_.ExpBonus + _FORV_16_.ExpGivenBase
      end
    end
  end
end
function UpgradeMinionMovementSpeedTimer()
  MINION_MOVE_SPEED_INCREMENT = MINION_MOVE_SPEED_INCREMENT + 1
  InitTimer("UpgradeMinionMovementSpeedTimerRepeated", NEXT_MINION_MOVE_SPEED_INCREASE_TIME, false)
end
function UpgradeMinionMovementSpeedTimerRepeated()
  MINION_MOVE_SPEED_INCREMENT = MINION_MOVE_SPEED_INCREMENT + 1
  if MINION_MOVE_SPEED_INCREMENT < MAX_MINION_MOVE_SPEED_INCREMENT then
    InitTimer("UpgradeMinionMovementSpeedTimerRepeated", NEXT_MINION_MOVE_SPEED_INCREASE_TIME, false)
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
          SetExposedTower(TEAM_ORDER, orderTurret, L3_76)
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
          SetExposedTower(TEAM_CHAOS, chaosTurret, L3_76)
        else
          SetInvulnerable(chaosTurret, true)
          SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
        end
      end
    end
  end
end
function SetExposedTower(A0_83, A1_84, A2_85)
  local L3_86
  L3_86 = TEAM_ORDER
  if A0_83 == L3_86 then
    L3_86 = OrderOutermostTurrets
    L3_86[A2_85] = GetUnitRef(A1_84)
  end
  L3_86 = TEAM_CHAOS
  if A0_83 == L3_86 then
    L3_86 = ChaosOutermostTurrets
    L3_86[A2_85] = GetUnitRef(A1_84)
  end
end
function ResetToDefaultWaveCounts(A0_87)
  local L1_88, L2_89
  for _FORV_6_, _FORV_7_ in pairs(A0_87) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_90)
  local L1_91, L2_92
  for _FORV_6_, _FORV_7_ in pairs(A0_90) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_93, A1_94)
  local L2_95, L3_96, L4_97
  L2_95 = 0
  L3_96 = TEAM_ORDER
  if A1_94 == L3_96 then
    L3_96 = OrderBarracksBonuses
    L4_97 = A0_93 + 1
    L2_95 = L3_96[L4_97]
  else
    L3_96 = ChaosBarracksBonuses
    L4_97 = A0_93 + 1
    L2_95 = L3_96[L4_97]
  end
  L3_96 = {}
  L4_97 = SpawnTable
  L4_97 = L4_97.WaveSpawnRate
  L3_96.WaveSpawnRate = L4_97
  L4_97 = SpawnTable
  L4_97 = L4_97.SingleMinionSpawnDelay
  L3_96.SingleMinionSpawnDelay = L4_97
  L4_97 = L2_95.IsDestroyed
  L3_96.IsDestroyed = L4_97
  L4_97 = L2_95.MinionInfoTable
  L3_96.MinionInfoTable = L4_97
  ReturnTable = L3_96
  L3_96 = ReturnTable
  return L3_96
end
function GetMinionSpawnInfo(A0_98, A1_99, A2_100, A3_101, A4_102)
  local L5_103, L6_104, L7_105, L8_106, L9_107
  L5_103 = 0
  L6_104 = TEAM_ORDER
  if A3_101 == L6_104 then
    L6_104 = OrderBarracksBonuses
    L7_105 = A0_98 + 1
    L5_103 = L6_104[L7_105]
  else
    L6_104 = ChaosBarracksBonuses
    L7_105 = A0_98 + 1
    L5_103 = L6_104[L7_105]
  end
  L6_104 = L5_103.MinionInfoTable
  L6_104 = L6_104.Super
  L7_105 = L5_103.MinionInfoTable
  L7_105 = L7_105.Cannon
  L8_106 = L5_103.MinionInfoTable
  L8_106 = L8_106.Melee
  L9_107 = L5_103.MinionInfoTable
  L9_107 = L9_107.Caster
  ResetToDefaultWaveCounts(L5_103.MinionInfoTable)
  if A1_99 % CANNON_MINION_SPAWN_FREQUENCY == CANNON_MINION_SPAWN_DECIDER then
    L7_105.NumPerWave = L7_105.NumPerWave + 1
  end
  if A4_102 ~= LAST_WAVE then
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
    LAST_WAVE = A4_102
  end
  if L5_103.WillSpawnSuperMinion == 1 then
    if A3_101 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_101 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_104.NumPerWave = 2
    else
      L6_104.NumPerWave = 1
    end
    L7_105.NumPerWave = 0
  end
  L9_107.MoveSpeedBaseIncrease, L8_106.MoveSpeedBaseIncrease, L7_105.MoveSpeedBaseIncrease, L6_104.MoveSpeedBaseIncrease = MINION_MOVE_SPEED_INCREASE_AMOUNT * MINION_MOVE_SPEED_INCREMENT, MINION_MOVE_SPEED_INCREASE_AMOUNT * MINION_MOVE_SPEED_INCREMENT, MINION_MOVE_SPEED_INCREASE_AMOUNT * MINION_MOVE_SPEED_INCREMENT, MINION_MOVE_SPEED_INCREASE_AMOUNT * MINION_MOVE_SPEED_INCREMENT
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_103.MinionInfoTable)
    L6_104.NumPerWave = L5_103.MinionInfoTable.Super.NumPerWave
    L5_103.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_103.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_103.MinionInfoTable)
  end
  if GetMutatorParameterBool("SuppressMinionSpawn") then
    SuppressMinionSpawnForBarrack(L5_103)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_103.SpawnOrderMinionNames,
    IsDestroyed = L5_103.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_103.MinionInfoTable
  }
  return ReturnTable
end
function DeactivateCorrectStructure(A0_108, A1_109, A2_110)
  local L3_111, L4_112
  L4_112 = TEAM_ORDER
  if A0_108 == L4_112 then
    L3_111 = OrderBuildingStatus
  else
    L3_111 = ChaosBuildingStatus
  end
  L4_112 = FRONT_TOWER
  if A2_110 == L4_112 then
    L4_112 = A1_109 + 1
    L4_112 = L3_111[L4_112]
    L4_112.Turret3 = false
    L4_112 = GetTurret
    L4_112 = L4_112(A0_108, A1_109, MIDDLE_TOWER)
    SetInvulnerable(L4_112, false)
    SetTargetable(L4_112, true)
    SetExposedTower(A0_108, L4_112, A1_109)
    SetLaneTowerCount(A0_108, A1_109, 2)
  else
    L4_112 = MIDDLE_TOWER
    if A2_110 == L4_112 then
      L4_112 = A1_109 + 1
      L4_112 = L3_111[L4_112]
      L4_112.Turret2 = false
      L4_112 = GetTurret
      L4_112 = L4_112(A0_108, A1_109, BACK_TOWER)
      SetInvulnerable(L4_112, false)
      SetTargetable(L4_112, true)
      SetExposedTower(A0_108, L4_112, A1_109)
      SetLaneTowerCount(A0_108, A1_109, 1)
    else
      L4_112 = BACK_TOWER
      if A2_110 == L4_112 then
        L4_112 = A1_109 + 1
        L4_112 = L3_111[L4_112]
        L4_112.Turret1 = false
        L4_112 = GetDampener
        L4_112 = L4_112(A0_108, A1_109)
        SetInvulnerable(L4_112, false)
        SetTargetable(L4_112, true)
        SetExposedTower(A0_108, nil, A1_109)
        SetLaneTowerCount(A0_108, A1_109, 0)
      else
        L4_112 = HQ_TOWER2
        if A2_110 == L4_112 then
          L3_111.HQTower2 = false
          L4_112 = L3_111.HQTower1
          if L4_112 == false then
            L4_112 = GetHQ
            L4_112 = L4_112(A0_108)
            SetInvulnerable(L4_112, false)
            SetTargetable(L4_112, true)
          end
        else
          L4_112 = HQ_TOWER1
          if A2_110 == L4_112 then
            L3_111.HQTower1 = false
            L4_112 = L3_111.HQTower2
            if L4_112 == false then
              L4_112 = GetHQ
              L4_112 = L4_112(A0_108)
              SetInvulnerable(L4_112, false)
              SetTargetable(L4_112, true)
            end
          end
        end
      end
    end
  end
end
function GetLuaBarracks(A0_113, A1_114)
  local L2_115, L3_116, L4_117
  L3_116 = TEAM_ORDER
  if A0_113 == L3_116 then
    L3_116 = OrderBarracksBonuses
    L4_117 = A1_114 + 1
    L2_115 = L3_116[L4_117]
  else
    L3_116 = ChaosBarracksBonuses
    L4_117 = A1_114 + 1
    L2_115 = L3_116[L4_117]
  end
  return L2_115
end
function GetDisableMinionSpawnTime(A0_118, A1_119)
  barrack = GetLuaBarracks(A1_119, A0_118)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_120, A1_121)
  cLangBarracks = GetBarracks(A1_121, A0_120)
  luaBarrack = GetLuaBarracks(A1_121, A0_120)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_120, A1_121))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_122, A1_123)
  local L2_124, L3_125, L4_126, L5_127, L6_128, L7_129, L8_130, L9_131, L10_132
  BonusesCounter = L2_124
  for L5_127 = 1, 3 do
    L6_128, L7_129 = nil, nil
    L8_130 = TEAM_ORDER
    if A0_122 == L8_130 then
      L7_129 = TEAM_CHAOS
      L6_128 = OrderBarracksBonuses
      L8_130 = ChaosBarracksBonuses
      EnemyBarracks = L8_130
    else
      L7_129 = TEAM_ORDER
      L6_128 = ChaosBarracksBonuses
      L8_130 = OrderBarracksBonuses
      EnemyBarracks = L8_130
    end
    L8_130, L9_131 = nil, nil
    L10_132 = L6_128[L5_127]
    L10_132 = L10_132.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_132) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_127 == A1_123 + 1 then
      L6_128[L5_127].WillSpawnSuperMinion = 1
      if A0_122 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_133, A1_134)
  local L2_135, L3_136, L4_137, L5_138, L6_139, L7_140, L8_141, L9_142, L10_143, L11_144, L12_145, L13_146, L14_147, L15_148, L16_149, L17_150, L18_151
  ReductionCounter = L2_135
  for L5_138 = 1, 3 do
    L6_139, L7_140, L8_141 = nil, nil, nil
    L9_142 = TEAM_ORDER
    if A0_133 == L9_142 then
      L8_141 = TEAM_CHAOS
      L6_139 = OrderBarracksBonuses
      L7_140 = ChaosBarracksBonuses
    else
      L8_141 = TEAM_ORDER
      L6_139 = ChaosBarracksBonuses
      L7_140 = OrderBarracksBonuses
    end
    L9_142, L10_143 = nil, nil
    L11_144 = L6_139[L5_138]
    L11_144 = L11_144.MinionInfoTable
    for L15_148, L16_149 in L12_145(L13_146) do
      L17_150 = L16_149.HPBonus
      L18_151 = L16_149.HPInhibitor
      L17_150 = L17_150 - L18_151
      L16_149.HPBonus = L17_150
      L17_150 = L16_149.DamageBonus
      L18_151 = L16_149.DamageInhibitor
      L17_150 = L17_150 - L18_151
      L16_149.DamageBonus = L17_150
      L17_150 = L16_149.ExpGiven
      L18_151 = L16_149.ExpInhibitor
      L17_150 = L17_150 + L18_151
      L16_149.ExpGiven = L17_150
      L17_150 = L16_149.GoldGiven
      L18_151 = L16_149.GoldInhibitor
      L17_150 = L17_150 + L18_151
      L16_149.GoldGiven = L17_150
    end
    if L5_138 == L13_146 then
      if A0_133 == L13_146 then
        totalNumberOfChaosBarracks = L13_146
      else
        totalNumberOfOrderBarracks = L13_146
      end
      L13_146.WillSpawnSuperMinion = 0
      L16_149 = false
      L13_146(L14_147, L15_148, L16_149)
    end
    if L12_145 == 3 then
      HQ = L13_146
      L13_146(L14_147, L15_148)
      L13_146(L14_147, L15_148)
      for L16_149 = RIGHT_LANE, LEFT_LANE do
        L17_150 = GetTurret
        L18_151 = L8_141
        L17_150 = L17_150(L18_151, L16_149, HQ_TOWER1)
        L18_151 = GetTurret
        L18_151 = L18_151(L8_141, L16_149, HQ_TOWER2)
        if L17_150 ~= Nil then
          SetInvulnerable(L17_150, true)
          SetNotTargetableToTeam(L17_150, true, A0_133)
        end
        if L18_151 ~= Nil then
          SetInvulnerable(L18_151, true)
          SetNotTargetableToTeam(L18_151, true, A0_133)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_152, A1_153)
  local L2_154
  ReactiveCounter = ReactiveCounter + 1
  L2_154 = OppositeTeam(A0_152)
  dampener = GetDampener(A0_152, A1_153)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_154, A1_153)
end
function DisableSuperMinions(A0_155, A1_156)
  local L2_157, L3_158
  if A0_155 == TEAM_ORDER then
    L2_157 = OrderBarracksBonuses[A1_156 + 1]
    L3_158 = ChaosBarracksBonuses[A1_156 + 1]
  elseif A0_155 == TEAM_CHAOS then
    L2_157 = ChaosBarracksBonuses[A1_156 + 1]
    L3_158 = OrderBarracksBonuses[A1_156 + 1]
  end
  if L3_158 then
    L3_158.WillSpawnSuperMinion = 0
  end
end
function OnJumpToMidGameCheat(A0_159)
  local L1_160
  L1_160 = GetTurret
  L1_160 = L1_160(TEAM_ORDER, 1, HQ_TOWER1)
  if A0_159 == 0 then
    ApplyPersistentBuff(L1_160, "DebugMidGameBuff", false, 1, 1)
  else
    ApplyPersistentBuff(L1_160, "DebugLateGameBuff", false, 1, 1)
  end
end
function EqualizeDragonsCheat()
  local L0_161
  L0_161 = GetTurret
  L0_161 = L0_161(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_161, "DebugEqualizeDragons", false, 1, 1)
end
function EqualizeResetPlay()
  local L0_162
  L0_162 = GetTurret
  L0_162 = L0_162(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_162, "DebugResetPlay", false, 1, 1)
end
function OnBarracksToggled(A0_163)
  local L1_164
  if A0_163 == 0 then
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_165)
  local L1_166, L2_167, L3_168
  L1_166 = GetHQType
  L2_167 = A0_165
  L1_166 = L1_166(L2_167)
  HQType = L1_166
  L1_166 = HQType
  L2_167 = ORDER_HQ
  if L1_166 ~= L2_167 then
    L1_166 = HQType
    L2_167 = CHAOS_HQ
  elseif L1_166 == L2_167 then
    L1_166 = SetWorldVar
    L2_167 = "EndOfGame_GameHasEnded"
    L3_168 = true
    L1_166(L2_167, L3_168)
    L1_166 = HQType
    L2_167 = CHAOS_HQ
    if L1_166 == L2_167 then
      L1_166 = SetWorldVar
      L2_167 = "EndOfGame_LosingTeam"
      L3_168 = TEAM_CHAOS
      L1_166(L2_167, L3_168)
      L1_166 = EndOfGameCeremony
      L2_167 = TEAM_ORDER
      L3_168 = A0_165
      L1_166(L2_167, L3_168)
    else
      L1_166 = SetWorldVar
      L2_167 = "EndOfGame_LosingTeam"
      L3_168 = TEAM_ORDER
      L1_166(L2_167, L3_168)
      L1_166 = EndOfGameCeremony
      L2_167 = TEAM_CHAOS
      L3_168 = A0_165
      L1_166(L2_167, L3_168)
    end
    L1_166 = GetTurret
    L2_167 = TEAM_ORDER
    L3_168 = 1
    L1_166 = L1_166(L2_167, L3_168, 0)
    L2_167 = ApplyPersistentBuff
    L3_168 = L1_166
    L2_167(L3_168, "EndOfGameTriggers", false, 1, 1)
    return
  end
  L1_166 = IsDampener
  L2_167 = A0_165
  L1_166 = L1_166(L2_167)
  if L1_166 then
    L1_166 = GetLinkedBarrack
    L2_167 = A0_165
    L1_166 = L1_166(L2_167)
    barrack = L1_166
    L1_166 = GetTeamID
    L2_167 = barrack
    L1_166 = L1_166(L2_167)
    barrackTeam = L1_166
    L1_166 = GetLane
    L2_167 = A0_165
    L1_166 = L1_166(L2_167)
    barrackLane = L1_166
    L1_166 = SetLaneExposed
    L2_167 = barrackTeam
    L3_168 = barrackLane
    L1_166(L2_167, L3_168, true)
    L1_166 = DisableBarracksSpawn
    L2_167 = barrackLane
    L3_168 = barrackTeam
    L1_166(L2_167, L3_168)
    L1_166 = SetDampenerState
    L2_167 = A0_165
    L3_168 = DampenerRegenerationState
    L1_166(L2_167, L3_168)
    L1_166 = SetInvulnerable
    L2_167 = A0_165
    L3_168 = true
    L1_166(L2_167, L3_168)
    L1_166 = SetTargetable
    L2_167 = A0_165
    L3_168 = false
    L1_166(L2_167, L3_168)
    L1_166 = DisactivatedCounter
    L1_166 = L1_166 + 1
    DisactivatedCounter = L1_166
    L1_166 = GetTurret
    L2_167 = barrackTeam
    L3_168 = 1
    L1_166 = L1_166(L2_167, L3_168, HQ_TOWER1)
    L2_167 = GetTurret
    L3_168 = barrackTeam
    L2_167 = L2_167(L3_168, 1, HQ_TOWER2)
    L3_168 = Nil
    if L1_166 ~= L3_168 then
      L3_168 = SetInvulnerable
      L3_168(L1_166, false)
      L3_168 = SetTargetable
      L3_168(L1_166, true)
    end
    L3_168 = Nil
    if L2_167 ~= L3_168 then
      L3_168 = SetInvulnerable
      L3_168(L2_167, false)
      L3_168 = SetTargetable
      L3_168(L2_167, true)
    end
    L3_168 = Nil
    if L1_166 == L3_168 then
      L3_168 = Nil
      if L2_167 == L3_168 then
        L3_168 = GetHQ
        L3_168 = L3_168(barrackTeam)
        SetInvulnerable(L3_168, false)
        SetTargetable(L3_168, true)
      end
    end
    L3_168 = nil
    if barrackTeam == TEAM_CHAOS then
      L3_168 = TEAM_ORDER
    else
      L3_168 = TEAM_CHAOS
    end
    ApplyBarracksDestructionBonuses(L3_168, barrackLane)
  end
  L1_166 = IsTurretAI
  L2_167 = A0_165
  L1_166 = L1_166(L2_167)
  if L1_166 then
    L1_166 = GetTeamID
    L2_167 = A0_165
    L1_166 = L1_166(L2_167)
    L2_167 = GetObjectLaneId
    L3_168 = A0_165
    L2_167 = L2_167(L3_168)
    L3_168 = GetTurretPosition
    L3_168 = L3_168(A0_165)
    DeactivateCorrectStructure(L1_166, L2_167, L3_168)
    return
  end
  L1_166 = GetDampenerType
  L2_167 = A0_165
  L1_166 = L1_166(L2_167)
  if L1_166 > -1 then
    L2_167 = 0
    L3_168 = TEAM_ORDER
    if L1_166 % TEAM_CHAOS >= RIGHT_LANE and L1_166 % TEAM_CHAOS <= LEFT_LANE then
      L2_167 = ChaosBarracksBonuses[L1_166 % TEAM_CHAOS + 1]
      ChaosBuildingStatus[L1_166 % TEAM_CHAOS + 1].Barracks = false
    else
      L3_168 = TEAM_CHAOS
      L2_167 = OrderBarracksBonuses[L1_166 % TEAM_CHAOS - TEAM_ORDER + 1]
      OrderBuildingStatus[L1_166 % TEAM_CHAOS - TEAM_ORDER + 1].Barracks = false
    end
  else
    L2_167 = Log
    L3_168 = "Could not find Linking barracks!"
    L2_167(L3_168)
  end
  L2_167 = true
  return L2_167
end
function SetLaneExposed(A0_169, A1_170, A2_171)
  if A0_169 == TEAM_ORDER then
    if A1_170 == LEFT_LANE then
      SetWorldVar("OrderTopLaneExposed", A2_171)
    elseif A1_170 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneExposed", A2_171)
    else
      SetWorldVar("OrderMidLaneExposed", A2_171)
    end
  elseif A1_170 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneExposed", A2_171)
  elseif A1_170 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneExposed", A2_171)
  else
    SetWorldVar("ChaosMidLaneExposed", A2_171)
  end
end
function SetLaneTowerCount(A0_172, A1_173, A2_174)
  if A0_172 == TEAM_ORDER then
    if A1_173 == LEFT_LANE then
      SetWorldVar("OrderTopLaneTowerCount", A2_174)
    elseif A1_173 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneTowerCount", A2_174)
    else
      SetWorldVar("OrderMidLaneTowerCount", A2_174)
    end
  elseif A1_173 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneTowerCount", A2_174)
  elseif A1_173 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneTowerCount", A2_174)
  else
    SetWorldVar("ChaosMidLaneTowerCount", A2_174)
  end
end
function IncreaseCannonMinionSpawnRate()
  local L0_175, L1_176
  L0_175 = 2
  CANNON_MINION_SPAWN_FREQUENCY = L0_175
  L0_175 = 1
  CANNON_MINION_SPAWN_DECIDER = L0_175
end
function IncreaseCannonMinionSpawnRateAgain()
  local L0_177, L1_178
  L0_177 = 1
  CANNON_MINION_SPAWN_FREQUENCY = L0_177
  L0_177 = 0
  CANNON_MINION_SPAWN_DECIDER = L0_177
end
function PostGameSetup(A0_179)
  POST_GAME_EVENTS = {}
end
function PostGameUpdate(A0_180, A1_181)
  local L2_182, L3_183, L4_184, L5_185, L6_186, L7_187
  for L7_187, _FORV_8_ in L4_184(L5_185) do
    if A0_180 > _FORV_8_.delay then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_8_.cameraLocation, _FORV_8_.travelTime)
      if _FORV_8_.soundFile then
        ClientSide_PlaySoundFile(_FORV_8_.soundFile)
      end
      table.remove(POST_GAME_EVENTS, L7_187)
      break
    end
  end
end
