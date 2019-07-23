DoLuaShared("GlobalLevelScript")
EVENT_STAGE_WELCOME_TIME = 30
EVENT_STAGE_PREANNOUNCE_TIME = 45
EVENT_STAGE_MINIONS_SPAWNED_TIME = 75
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
INITIAL_TIME_TO_SPAWN = 75
MINION_HEALTH_DENIAL_PERCENT = 0
SMITE_CHARGE_START = 100
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
BASE_AMBIENT_GOLD = 10.2
dynamicAmbientGold = 4
DYNAMIC_AMBIENT_GOLD_INCREASE_PER_10 = 0.017
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
  L3_32(L4_33)
  L3_32()
end
function OnLevelInitServer()
  InitTimer("UpgradeMinionTimerInitial", INITIAL_TIME_TO_SPAWN, false)
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
  InitTimer("AllowTurretsTargetableToTeam", 10, false)
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
function ResetToDefaultWaveCounts(A0_73)
  local L1_74, L2_75
  for _FORV_6_, _FORV_7_ in pairs(A0_73) do
    _FORV_7_.NumPerWave = _FORV_7_.DefaultNumPerWave
  end
end
function ClearCurrentWaveCounts(A0_76)
  local L1_77, L2_78
  for _FORV_6_, _FORV_7_ in pairs(A0_76) do
    _FORV_7_.NumPerWave = 0
  end
end
function GetInitSpawnInfo(A0_79, A1_80)
  local L2_81, L3_82, L4_83
  L2_81 = 0
  L3_82 = TEAM_ORDER
  if A1_80 == L3_82 then
    L3_82 = OrderBarracksBonuses
    L4_83 = A0_79 + 1
    L2_81 = L3_82[L4_83]
  else
    L3_82 = ChaosBarracksBonuses
    L4_83 = A0_79 + 1
    L2_81 = L3_82[L4_83]
  end
  L3_82 = {}
  L4_83 = SpawnTable
  L4_83 = L4_83.WaveSpawnRate
  L3_82.WaveSpawnRate = L4_83
  L4_83 = SpawnTable
  L4_83 = L4_83.SingleMinionSpawnDelay
  L3_82.SingleMinionSpawnDelay = L4_83
  L4_83 = L2_81.IsDestroyed
  L3_82.IsDestroyed = L4_83
  L4_83 = L2_81.MinionInfoTable
  L3_82.MinionInfoTable = L4_83
  ReturnTable = L3_82
  L3_82 = ReturnTable
  return L3_82
end
function GetMinionSpawnInfo(A0_84, A1_85, A2_86, A3_87, A4_88)
  local L5_89, L6_90, L7_91
  L5_89 = 0
  L6_90 = TEAM_ORDER
  if A3_87 == L6_90 then
    L6_90 = OrderBarracksBonuses
    L7_91 = A0_84 + 1
    L5_89 = L6_90[L7_91]
  else
    L6_90 = ChaosBarracksBonuses
    L7_91 = A0_84 + 1
    L5_89 = L6_90[L7_91]
  end
  L6_90 = L5_89.MinionInfoTable
  L6_90 = L6_90.Super
  L7_91 = L5_89.MinionInfoTable
  L7_91 = L7_91.Cannon
  ResetToDefaultWaveCounts(L5_89.MinionInfoTable)
  if A1_85 % CANNON_MINION_SPAWN_FREQUENCY == 0 then
    L7_91.NumPerWave = L7_91.NumPerWave + 1
  end
  if A4_88 ~= LAST_WAVE then
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
    LAST_WAVE = A4_88
  end
  if L5_89.WillSpawnSuperMinion == 1 then
    if A3_87 == TEAM_ORDER and totalNumberOfChaosBarracks == 0 or A3_87 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
      L6_90.NumPerWave = 2
    else
      L6_90.NumPerWave = 1
    end
    L7_91.NumPerWave = 0
  end
  if SPECIAL_MINION_MODE == "2MeleeMinions" then
    ClearCurrentWaveCounts(L5_89.MinionInfoTable)
    L6_90.NumPerWave = L5_89.MinionInfoTable.Super.NumPerWave
    L5_89.MinionInfoTable.Melee.NumPerWave = math.max(2 - L5_89.MinionInfoTable.Super.NumPerWave, 0)
  elseif SPECIAL_MINION_MODE == "None" then
    ClearCurrentWaveCounts(L5_89.MinionInfoTable)
  end
  if GetMutatorParameterBool("SuppressMinionSpawn") then
    SuppressMinionSpawnForBarrack(L5_89)
  end
  ReturnTable = {
    NewFormat = true,
    SpawnOrderMinionNames = L5_89.SpawnOrderMinionNames,
    IsDestroyed = L5_89.IsDestroyed,
    ExperienceRadius = SpawnTable.ExpRadius,
    GoldRadius = SpawnTable.GoldRadius,
    MinionInfoTable = L5_89.MinionInfoTable
  }
  return ReturnTable
end
function GetLuaBarracks(A0_92, A1_93)
  local L2_94, L3_95, L4_96
  L3_95 = TEAM_ORDER
  if A0_92 == L3_95 then
    L3_95 = OrderBarracksBonuses
    L4_96 = A1_93 + 1
    L2_94 = L3_95[L4_96]
  else
    L3_95 = ChaosBarracksBonuses
    L4_96 = A1_93 + 1
    L2_94 = L3_95[L4_96]
  end
  return L2_94
end
function GetDisableMinionSpawnTime(A0_97, A1_98)
  barrack = GetLuaBarracks(A1_98, A0_97)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end
function DisableBarracksSpawn(A0_99, A1_100)
  cLangBarracks = GetBarracks(A1_100, A0_99)
  luaBarrack = GetLuaBarracks(A1_100, A0_99)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(A0_99, A1_100))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end
BonusesCounter = 0
function ApplyBarracksDestructionBonuses(A0_101, A1_102)
  local L2_103, L3_104, L4_105, L5_106, L6_107, L7_108, L8_109, L9_110, L10_111
  BonusesCounter = L2_103
  for L5_106 = 1, 3 do
    L6_107, L7_108 = nil, nil
    L8_109 = TEAM_ORDER
    if A0_101 == L8_109 then
      L7_108 = TEAM_CHAOS
      L6_107 = OrderBarracksBonuses
      L8_109 = ChaosBarracksBonuses
      EnemyBarracks = L8_109
    else
      L7_108 = TEAM_ORDER
      L6_107 = ChaosBarracksBonuses
      L8_109 = OrderBarracksBonuses
      EnemyBarracks = L8_109
    end
    L8_109, L9_110 = nil, nil
    L10_111 = L6_107[L5_106]
    L10_111 = L10_111.MinionInfoTable
    for _FORV_14_, _FORV_15_ in pairs(L10_111) do
      _FORV_15_.HPBonus = _FORV_15_.HPBonus + _FORV_15_.HPInhibitor
      _FORV_15_.DamageBonus = _FORV_15_.DamageBonus + _FORV_15_.DamageInhibitor
      _FORV_15_.ExpGiven = _FORV_15_.ExpGiven - _FORV_15_.ExpInhibitor
      _FORV_15_.GoldGiven = _FORV_15_.GoldGiven - _FORV_15_.GoldInhibitor
    end
    if L5_106 == A1_102 + 1 then
      L6_107[L5_106].WillSpawnSuperMinion = 1
      if A0_101 == TEAM_ORDER then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
      else
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      end
    end
  end
end
ReductionCounter = 0
function ApplyBarracksRespawnReductions(A0_112, A1_113)
  local L2_114, L3_115, L4_116, L5_117, L6_118, L7_119, L8_120, L9_121, L10_122, L11_123, L12_124, L13_125, L14_126, L15_127, L16_128, L17_129, L18_130
  ReductionCounter = L2_114
  for L5_117 = 1, 3 do
    L6_118, L7_119, L8_120 = nil, nil, nil
    L9_121 = TEAM_ORDER
    if A0_112 == L9_121 then
      L8_120 = TEAM_CHAOS
      L6_118 = OrderBarracksBonuses
      L7_119 = ChaosBarracksBonuses
    else
      L8_120 = TEAM_ORDER
      L6_118 = ChaosBarracksBonuses
      L7_119 = OrderBarracksBonuses
    end
    L9_121, L10_122 = nil, nil
    L11_123 = L6_118[L5_117]
    L11_123 = L11_123.MinionInfoTable
    for L15_127, L16_128 in L12_124(L13_125) do
      L17_129 = L16_128.HPBonus
      L18_130 = L16_128.HPInhibitor
      L17_129 = L17_129 - L18_130
      L16_128.HPBonus = L17_129
      L17_129 = L16_128.DamageBonus
      L18_130 = L16_128.DamageInhibitor
      L17_129 = L17_129 - L18_130
      L16_128.DamageBonus = L17_129
      L17_129 = L16_128.ExpGiven
      L18_130 = L16_128.ExpInhibitor
      L17_129 = L17_129 + L18_130
      L16_128.ExpGiven = L17_129
      L17_129 = L16_128.GoldGiven
      L18_130 = L16_128.GoldInhibitor
      L17_129 = L17_129 + L18_130
      L16_128.GoldGiven = L17_129
    end
    if L5_117 == L13_125 then
      if A0_112 == L13_125 then
        totalNumberOfChaosBarracks = L13_125
      else
        totalNumberOfOrderBarracks = L13_125
      end
      L13_125.WillSpawnSuperMinion = 0
      L16_128 = false
      L13_125(L14_126, L15_127, L16_128)
    end
    if L12_124 == 3 then
      HQ = L13_125
      L13_125(L14_126, L15_127)
      L13_125(L14_126, L15_127)
      for L16_128 = RIGHT_LANE, LEFT_LANE do
        L17_129 = GetTurret
        L18_130 = L8_120
        L17_129 = L17_129(L18_130, L16_128, HQ_TOWER1)
        L18_130 = GetTurret
        L18_130 = L18_130(L8_120, L16_128, HQ_TOWER2)
        if L17_129 ~= Nil then
          SetInvulnerable(L17_129, true)
          SetNotTargetableToTeam(L17_129, true, A0_112)
        end
        if L18_130 ~= Nil then
          SetInvulnerable(L18_130, true)
          SetNotTargetableToTeam(L18_130, true, A0_112)
        end
      end
    end
  end
end
ReactiveCounter = 0
function BarrackReactiveEvent(A0_131, A1_132)
  local L2_133
  ReactiveCounter = ReactiveCounter + 1
  L2_133 = OppositeTeam(A0_131)
  dampener = GetDampener(A0_131, A1_132)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(L2_133, A1_132)
end
function DisableSuperMinions(A0_134, A1_135)
  local L2_136, L3_137
  if A0_134 == TEAM_ORDER then
    L2_136 = OrderBarracksBonuses[A1_135 + 1]
    L3_137 = ChaosBarracksBonuses[A1_135 + 1]
  elseif A0_134 == TEAM_CHAOS then
    L2_136 = ChaosBarracksBonuses[A1_135 + 1]
    L3_137 = OrderBarracksBonuses[A1_135 + 1]
  end
  if L3_137 then
    L3_137.WillSpawnSuperMinion = 0
  end
end
function OnJumpToMidGameCheat(A0_138)
  local L1_139
  L1_139 = GetTurret
  L1_139 = L1_139(TEAM_ORDER, 1, HQ_TOWER1)
  if A0_138 == 0 then
    ApplyPersistentBuff(L1_139, "DebugMidGameBuff", false, 1, 1)
  else
    ApplyPersistentBuff(L1_139, "DebugLateGameBuff", false, 1, 1)
  end
end
function EqualizeDragonsCheat()
  local L0_140
  L0_140 = GetTurret
  L0_140 = L0_140(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_140, "DebugEqualizeDragons", false, 1, 1)
end
function EqualizeResetPlay()
  local L0_141
  L0_141 = GetTurret
  L0_141 = L0_141(TEAM_ORDER, 1, 0)
  ApplyPersistentBuff(L0_141, "DebugResetPlay", false, 1, 1)
end
function OnBarracksToggled(A0_142)
  local L1_143
  if A0_142 == 0 then
  end
end
DisactivatedCounter = 0
function HandleDestroyedObject(A0_144)
  HQType = GetHQType(A0_144)
  if HQType == ORDER_HQ or HQType == CHAOS_HQ then
    if HQType == CHAOS_HQ then
      EndOfGameCeremony(TEAM_ORDER, A0_144)
    else
      EndOfGameCeremony(TEAM_CHAOS, A0_144)
    end
    return
  end
  return true
end
function SetLaneExposed(A0_145, A1_146, A2_147)
  if A0_145 == TEAM_ORDER then
    if A1_146 == LEFT_LANE then
      SetWorldVar("OrderTopLaneExposed", A2_147)
    elseif A1_146 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneExposed", A2_147)
    else
      SetWorldVar("OrderMidLaneExposed", A2_147)
    end
  elseif A1_146 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneExposed", A2_147)
  elseif A1_146 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneExposed", A2_147)
  else
    SetWorldVar("ChaosMidLaneExposed", A2_147)
  end
end
function SetLaneTowerCount(A0_148, A1_149, A2_150)
  if A0_148 == TEAM_ORDER then
    if A1_149 == LEFT_LANE then
      SetWorldVar("OrderTopLaneTowerCount", A2_150)
    elseif A1_149 == RIGHT_LANE then
      SetWorldVar("OrderBotLaneTowerCount", A2_150)
    else
      SetWorldVar("OrderMidLaneTowerCount", A2_150)
    end
  elseif A1_149 == LEFT_LANE then
    SetWorldVar("ChaosTopLaneTowerCount", A2_150)
  elseif A1_149 == RIGHT_LANE then
    SetWorldVar("ChaosBotLaneTowerCount", A2_150)
  else
    SetWorldVar("ChaosMidLaneTowerCount", A2_150)
  end
end
function PostGameSetup(A0_151)
  POST_GAME_EVENTS = {}
end
function PostGameUpdate(A0_152, A1_153)
  local L2_154, L3_155, L4_156, L5_157, L6_158, L7_159
  for L7_159, _FORV_8_ in L4_156(L5_157) do
    if A0_152 > _FORV_8_.delay then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(_FORV_8_.cameraLocation, _FORV_8_.travelTime)
      if _FORV_8_.soundFile then
        ClientSide_PlaySoundFile(_FORV_8_.soundFile)
      end
      table.remove(POST_GAME_EVENTS, L7_159)
      break
    end
  end
end
function AllowTurretsTargetableToTeam()
  local L0_160, L1_161, L2_162, L3_163, L4_164, L5_165, L6_166, L7_167
  for L3_163 = RIGHT_LANE, LEFT_LANE do
    for L7_167 = BACK_TOWER, HQ_TOWER1 do
      orderTurret = GetTurret(TEAM_ORDER, L3_163, L7_167)
      if orderTurret ~= nil then
        SetInvulnerable(orderTurret, true)
        SetNotTargetableToTeam(orderTurret, true, TEAM_CHAOS)
      end
      chaosTurret = GetTurret(TEAM_CHAOS, L3_163, L7_167)
      if chaosTurret ~= nil then
        SetInvulnerable(chaosTurret, true)
        SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
      end
    end
  end
end
