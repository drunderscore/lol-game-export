DoLuaShared("ObjectTags")
TEAM_UNKNOWN = 0
TEAM_ORDER = 100
TEAM_CHAOS = 200
TEAM_NEUTRAL = 300
TEAM_MAX = 400
START_OF_GAME_MONSTER_SPAWN_DELAY = 22
RED_BLUE_OFFSET = 2
CAMP_TIME_OFFSET = 1
START_OF_GAME_ADDITIONAL_DELAY_CRAB = 48
START_OF_GAME_ADDITIONAL_DELAY_DRAGON = 53
START_OF_GAME_ADDITIONAL_DELAY_HERALD = 503
START_OF_GAME_ADDITIONAL_DELAY_BARON = 1103
ELEMENTAL_DRAGON_SPAWN_RATE = 360
ELDER_DRAGON_SPAWN_TIME = 2100
ELDER_DRAGON_SPAWN_RATE = 600
HOSTILE = 1
INACTIVE = 0
NeutralMinionNamesForDX5 = {
  "SRU_Red",
  "SRU_Blue",
  "SRU_MurkwolfMini",
  "SRU_Murkwolf",
  "SRU_RazorbeakMini",
  "SRU_Krug",
  "SRU_KrugMini",
  "SRU_Razorbeak",
  "SRU_Baron",
  "SRU_BaronSpawn",
  "SRU_RedMini",
  "SRU_Gromp",
  "SRU_BlueMini",
  "Sru_Crab",
  "SRU_RiftHerald",
  "SRU_Dragon_Air",
  "SRU_Dragon_Fire",
  "SRU_Dragon_Water",
  "SRU_Dragon_Earth",
  "SRU_Dragon_Elder"
}
HERO_EXP_RADIUS = 800
DragonFlavorIndex = 1
DragonFlavorTable = {}
DefaultNeutralMinionValues = {
  SmallGolem = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  Dragon = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_Krug = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_Blue = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_BlueMini = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_RazorbeakMini = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_Red = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  GiantWolf = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_RedMini = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_Baron = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  wolf = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  Wraith = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  Urf = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  },
  SRU_RiftHerald = {
    GoldGiven = 0,
    ExpGiven = 0,
    SoulGiven = 0
  }
}
NeutralTimers = {}
CampSpawnPoints = {
  {
    Get3DPointPosition("OrderBlueBuff1"),
    Get3DPointPosition("OrderBlueBuff2"),
    Get3DPointPosition("OrderBlueBuff2")
  },
  {
    Get3DPointPosition("OrderWolves1"),
    Get3DPointPosition("OrderWolves2"),
    Get3DPointPosition("OrderWolves3")
  },
  {
    Get3DPointPosition("OrderVultures1"),
    Get3DPointPosition("OrderVultures2"),
    Get3DPointPosition("OrderVultures3"),
    Get3DPointPosition("OrderVultures4"),
    Get3DPointPosition("OrderVultures5"),
    Get3DPointPosition("OrderVultures6")
  },
  {
    Get3DPointPosition("OrderRedBuff1"),
    Get3DPointPosition("OrderRedBuff2"),
    Get3DPointPosition("OrderRedBuff3")
  },
  {
    Get3DPointPosition("OrderGolems1"),
    Get3DPointPosition("OrderGolems2")
  },
  {
    Get3DPointPosition("Dragon")
  },
  {
    Get3DPointPosition("ChaosBlueBuff1"),
    Get3DPointPosition("ChaosBlueBuff2"),
    Get3DPointPosition("ChaosBlueBuff2")
  },
  {
    Get3DPointPosition("ChaosWolves1"),
    Get3DPointPosition("ChaosWolves2"),
    Get3DPointPosition("ChaosWolves3")
  },
  {
    Get3DPointPosition("ChaosVultures1"),
    Get3DPointPosition("ChaosVultures2"),
    Get3DPointPosition("ChaosVultures3"),
    Get3DPointPosition("ChaosVultures4"),
    Get3DPointPosition("ChaosVultures5"),
    Get3DPointPosition("ChaosVultures6")
  },
  {
    Get3DPointPosition("ChaosRedBuff1"),
    Get3DPointPosition("ChaosRedBuff2"),
    Get3DPointPosition("ChaosRedBuff3")
  },
  {
    Get3DPointPosition("ChaosGolems1"),
    Get3DPointPosition("ChaosGolems2")
  },
  {
    Get3DPointPosition("Baron1"),
    Get3DPointPosition("Baron2")
  },
  {
    Get3DPointPosition("OrderOwlbear")
  },
  {
    Get3DPointPosition("ChaosOwlbear")
  },
  {
    Get3DPointPosition("DragonEelCamp")
  },
  {
    Get3DPointPosition("BaronEelCamp")
  },
  {
    Get3DPointPosition("RiftHerald")
  }
}
CampFacePoints = {
  {
    Get3DPointFacingPosition("OrderBlueBuff1"),
    Get3DPointFacingPosition("OrderBlueBuff2"),
    Get3DPointFacingPosition("OrderBlueBuff2")
  },
  {
    Get3DPointFacingPosition("OrderWolves1"),
    Get3DPointFacingPosition("OrderWolves2"),
    Get3DPointFacingPosition("OrderWolves3")
  },
  {
    Get3DPointFacingPosition("OrderVultures1"),
    Get3DPointFacingPosition("OrderVultures2"),
    Get3DPointFacingPosition("OrderVultures3"),
    Get3DPointFacingPosition("OrderVultures4"),
    Get3DPointFacingPosition("OrderVultures5"),
    Get3DPointFacingPosition("OrderVultures6")
  },
  {
    Get3DPointFacingPosition("OrderRedBuff1"),
    Get3DPointFacingPosition("OrderRedBuff2"),
    Get3DPointFacingPosition("OrderRedBuff3")
  },
  {
    Get3DPointFacingPosition("OrderGolems1"),
    Get3DPointFacingPosition("OrderGolems2")
  },
  {
    Get3DPointFacingPosition("Dragon")
  },
  {
    Get3DPointFacingPosition("ChaosBlueBuff1"),
    Get3DPointFacingPosition("ChaosBlueBuff2"),
    Get3DPointFacingPosition("ChaosBlueBuff2")
  },
  {
    Get3DPointFacingPosition("ChaosWolves1"),
    Get3DPointFacingPosition("ChaosWolves2"),
    Get3DPointFacingPosition("ChaosWolves3")
  },
  {
    Get3DPointFacingPosition("ChaosVultures1"),
    Get3DPointFacingPosition("ChaosVultures2"),
    Get3DPointFacingPosition("ChaosVultures3"),
    Get3DPointFacingPosition("ChaosVultures4"),
    Get3DPointFacingPosition("ChaosVultures5"),
    Get3DPointFacingPosition("ChaosVultures6")
  },
  {
    Get3DPointFacingPosition("ChaosRedBuff1"),
    Get3DPointFacingPosition("ChaosRedBuff2"),
    Get3DPointFacingPosition("ChaosRedBuff3")
  },
  {
    Get3DPointFacingPosition("ChaosGolems1"),
    Get3DPointFacingPosition("ChaosGolems2")
  },
  {
    Get3DPointFacingPosition("Baron1"),
    Get3DPointFacingPosition("Baron2")
  },
  {
    Get3DPointFacingPosition("OrderOwlbear")
  },
  {
    Get3DPointFacingPosition("ChaosOwlbear")
  },
  {
    Get3DPointFacingPosition("DragonEelCamp")
  },
  {
    Get3DPointFacingPosition("BaronEelCamp")
  },
  {
    Get3DPointFacingPosition("RiftHerald")
  }
}
CampCenterPoints = {
  {
    Make3DPoint(3821.48846, 51.8755, 8101.05403)
  },
  {
    Make3DPoint(3783.38, 52.46, 6495.56)
  },
  {
    Make3DPoint(7061.5, 52.03, 5325.51)
  },
  {
    Make3DPoint(7762.243694, 50.383179, 4011.186667)
  },
  {
    Make3DPoint(8394.77, 50.84, 2641.59)
  },
  {
    Make3DPoint(9866.14846, -69.7511, 4414.01403)
  },
  {
    Make3DPoint(11131.72846, 51.7229, 6990.84403)
  },
  {
    Make3DPoint(11059.77, 61.04, 8419.83)
  },
  {
    Make3DPoint(7820.22, 52.16, 9644.45)
  },
  {
    Make3DPoint(7066.869183, 51.270142, 10975.54653)
  },
  {
    Make3DPoint(6499.49, 56.48, 12287.38)
  },
  {
    Make3DPoint(5007.123577, 24.390137, 10471.445944)
  },
  {
    Make3DPoint(2288.01846, 51.7773, 8448.13403)
  },
  {
    Make3DPoint(12703.62846, 54, 6443.98403)
  },
  {
    Make3DPoint(10500, -62, 5170)
  },
  {
    Make3DPoint(4400, -62, 9600)
  },
  {
    Make3DPoint(4930.123577, 24.390137, 10471.445944)
  }
}
CampCenterOffset = {
  {
    Make3DPoint(-50, 0, 100)
  },
  {
    Make3DPoint(0, 0, 100)
  },
  {
    Make3DPoint(400, 0, -200)
  },
  {
    Make3DPoint(-50, 0, 100)
  },
  {
    Make3DPoint(-80, 0, -100)
  },
  {
    Make3DPoint(100, 0, 50)
  },
  {
    Make3DPoint(100, 0, -30)
  },
  {
    Make3DPoint(100, 0, 0)
  },
  {
    Make3DPoint(-200, 0, 150)
  },
  {
    Make3DPoint(-50, 0, 100)
  },
  {
    Make3DPoint(170, 0, 170)
  },
  {
    Make3DPoint(0, 0, 100)
  },
  {
    Make3DPoint(100, 0, 0)
  },
  {
    Make3DPoint(-50, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 50)
  }
}
CampVisualOffset = {
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  },
  {
    Make3DPoint(0, 0, 0)
  }
}
CAMPTYPE_DRAGON = 1
CAMPTYPE_SMALLGOLEMS = 2
CAMPTYPE_SMALLGOLEMS2 = 3
CAMPTYPE_WRAITHS = 4
CAMPTYPE_WRAITHS2 = 5
CAMPTYPE_REDBUFF = 6
CAMPTYPE_WOLVES = 7
CAMPTYPE_WOLVES2 = 8
CAMPTYPE_BLUEBUFF = 9
CAMPTYPE_OWLBEAR = 10
CAMPTYPE_NASHOR = 11
CAMPTYPE_CRAB = 12
CAMPTYPE_SRU_RIFTHERALD = 13
CAMPTYPE_SRU_DRAGON_AIR = 14
CAMPTYPE_SRU_DRAGON_FIRE = 15
CAMPTYPE_SRU_DRAGON_WATER = 16
CAMPTYPE_SRU_DRAGON_EARTH = 17
CAMPTYPE_SRU_DRAGON_ELDER = 18
PredefinedCamps = {
  [CAMPTYPE_DRAGON] = {
    {"SRU_Dragon", "spawn"}
  },
  [CAMPTYPE_SMALLGOLEMS] = {
    {"SRU_Krug", "spawn"},
    {
      "SRU_KrugMini",
      "spawn"
    }
  },
  [CAMPTYPE_SMALLGOLEMS2] = {
    {"SRU_Krug", "spawn_NJ"},
    {
      "SRU_KrugMini",
      "Spawn_North_jung"
    }
  },
  [CAMPTYPE_WRAITHS] = {
    {
      "SRU_Razorbeak",
      "Spawn"
    },
    {
      "SRU_RazorbeakMini",
      "Spawn4"
    },
    {
      "SRU_RazorbeakMini",
      "Spawn2"
    },
    {
      "SRU_RazorbeakMini",
      "Spawn3"
    },
    {
      "SRU_RazorbeakMini",
      "Spawn2"
    },
    {
      "SRU_RazorbeakMini",
      "Spawn4"
    }
  },
  [CAMPTYPE_WRAITHS2] = {
    {
      "SRU_Razorbeak",
      "North_Spawn"
    },
    {
      "SRU_RazorbeakMini",
      "North_Spawn4"
    },
    {
      "SRU_RazorbeakMini",
      "North_Spawn2"
    },
    {
      "SRU_RazorbeakMini",
      "North_Spawn3"
    },
    {
      "SRU_RazorbeakMini",
      "North_Spawn2"
    },
    {
      "SRU_RazorbeakMini",
      "North_Spawn4"
    }
  },
  [CAMPTYPE_REDBUFF] = {
    {"SRU_Red", "spawn"}
  },
  [CAMPTYPE_WOLVES] = {
    {
      "SRU_Murkwolf",
      "Spawn"
    },
    {
      "SRU_MurkwolfMini",
      "spawn_mini1"
    },
    {
      "SRU_MurkwolfMini",
      "spawn_mini2"
    }
  },
  [CAMPTYPE_WOLVES2] = {
    {
      "SRU_Murkwolf",
      "Spawn"
    },
    {
      "SRU_MurkwolfMini",
      "spawn_mini2"
    },
    {
      "SRU_MurkwolfMini",
      "spawn_mini1"
    }
  },
  [CAMPTYPE_BLUEBUFF] = {
    {"SRU_Blue", "spawn"}
  },
  [CAMPTYPE_OWLBEAR] = {
    {"SRU_Gromp", "spawn"}
  },
  [CAMPTYPE_NASHOR] = {
    {"SRU_Baron", "spawn"},
    {
      "SRU_BaronSpawn",
      "spawn"
    }
  },
  [CAMPTYPE_CRAB] = {
    {"Sru_Crab", "crab_hide"}
  },
  [CAMPTYPE_SRU_RIFTHERALD] = {
    {
      "SRU_RiftHerald",
      "spawn"
    }
  },
  [CAMPTYPE_SRU_DRAGON_AIR] = {
    {
      "SRU_Dragon_Air",
      "spawn"
    }
  },
  [CAMPTYPE_SRU_DRAGON_FIRE] = {
    {
      "SRU_Dragon_Fire",
      "spawn"
    }
  },
  [CAMPTYPE_SRU_DRAGON_WATER] = {
    {
      "SRU_Dragon_Water",
      "spawn"
    }
  },
  [CAMPTYPE_SRU_DRAGON_EARTH] = {
    {
      "SRU_Dragon_Earth",
      "spawn"
    }
  },
  [CAMPTYPE_SRU_DRAGON_ELDER] = {
    {
      "SRU_Dragon_Elder",
      "spawn"
    }
  }
}
NeutralMinionCamps = {
  [1] = {},
  [2] = {},
  [3] = {},
  [4] = {},
  [5] = {},
  [6] = {},
  [7] = {},
  [8] = {},
  [9] = {},
  [10] = {},
  [11] = {},
  [12] = {},
  [13] = {},
  [14] = {},
  [15] = {},
  [16] = {},
  [17] = {}
}
NUMBER_OF_CAMPS = #NeutralMinionCamps
CampMarkersToSpawnDict = {}
function NeutralMinionInitCampMarkersDict()
  for _FORV_3_, _FORV_4_ in pairs(CampMarkersToSpawnDict) do
    CampMarkersToSpawnDict[_FORV_3_] = nil
  end
  CampsWithInitialMinimapUI = {
    1,
    4,
    6,
    17
  }
  for _FORV_3_, _FORV_4_ in ipairs(CampsWithInitialMinimapUI) do
    CampMarkersToSpawnDict[NeutralMinionCamps[_FORV_4_].Name] = true
  end
  SetWorldVar("CampMarkersToSpawnDict", CampMarkersToSpawnDict)
end
function NeutralMinionInit()
  local L0_0, L1_1, L2_2, L3_3, L4_4
  for L3_3, L4_4 in L0_0(L1_1) do
    PreloadCharacter(L4_4)
  end
  for L3_3 = 1, NUMBER_OF_CAMPS do
    L4_4.Positions = CampSpawnPoints[L3_3]
    L4_4.UniqueNames = {}
    L4_4.AliveTracker = {}
    L4_4.Team = TEAM_NEUTRAL
    L4_4.DamageBonus = 0
    L4_4.HealthBonus = 0
    L4_4.AIState = INACTIVE
    L4_4.GroupsRespawnTime = 75
    L4_4.CampLevel = 1
    L4_4.TimerType = ""
    L4_4.MaxRespawn = -1
    L4_4.SpawnCount = 0
    L4_4.UseSummonerScript = false
    L4_4.SpawnDuration = 0
    L4_4.MinimapIcon = "LesserCamp"
    L4_4.LeashRadius = 800
    L4_4.StopSpawnTime = 25000
    L4_4.FacePositions = {}
    for _FORV_7_ = 1, table.getn(CampSpawnPoints[L3_3]) do
      NeutralMinionCamps[L3_3].FacePositions[_FORV_7_] = Make3DPoint(0, 0, 0)
      NeutralMinionCamps[L3_3].FacePositions[_FORV_7_].x = CampFacePoints[L3_3][_FORV_7_].x
      NeutralMinionCamps[L3_3].FacePositions[_FORV_7_].y = CampFacePoints[L3_3][_FORV_7_].y
      NeutralMinionCamps[L3_3].FacePositions[_FORV_7_].z = CampFacePoints[L3_3][_FORV_7_].z
    end
    L4_4.LeashCenter = CampSpawnPoints[L3_3][1]
    L4_4.MinimapPosition = Make3DPoint(0, 0, 0)
    L4_4.x = CampSpawnPoints[L3_3][1].x + CampCenterOffset[L3_3][1].x
    L4_4.y = CampSpawnPoints[L3_3][1].y + CampCenterOffset[L3_3][1].y
    L4_4.z = CampSpawnPoints[L3_3][1].z + CampCenterOffset[L3_3][1].z
    L4_4.VisualCenter = NeutralMinionCamps[L3_3].MinimapPosition
    L4_4.VisualFacing = Make3DPoint(0, 0, 0)
    L4_4.x = CampSpawnPoints[L3_3][1].x + CampVisualOffset[L3_3][1].x
    L4_4.y = CampSpawnPoints[L3_3][1].y + CampVisualOffset[L3_3][1].y
    L4_4.z = CampSpawnPoints[L3_3][1].z + CampVisualOffset[L3_3][1].z
    L4_4.UpdateCampIconOnSpawn = false
    L4_4.SkinID = 0
  end
  SRUBaronSkinID = L0_0
  if L0_0 == true then
    SRUBaronSkinID = L0_0
  end
  SRUBlueSkinID = L0_0
  if L0_0 == true then
    SRUBlueSkinID = L0_0
  end
  SRUCrabSkinID = L0_0
  if L0_0 == true then
    SRUCrabSkinID = L0_0
  end
  SRUKrugSkinID = L0_0
  if L0_0 == true then
    SRUKrugSkinID = L0_0
  end
  SRURedSkinID = L0_0
  if L0_0 == true then
    SRURedSkinID = L0_0
  end
  L0_0.Name = "Order Blue"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_BLUEBUFF
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 150
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 1.1
  L0_0.MinimapIcon = "Camp"
  L0_0.LeashRadius = 1000
  L3_3 = 51.26
  L0_0.VisualFacing = L1_1
  L3_3 = 51.97
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Order Wolves"
  L3_3 = CAMPTYPE_WOLVES
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 0.66
  L3_3 = 52.48
  L0_0.VisualFacing = L1_1
  L3_3 = 52.46
  L0_0.VisualCenter = L1_1
  L0_0.Name = "Order Wraiths"
  L3_3 = CAMPTYPE_WRAITHS
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 1
  L3_3 = 48.53
  L0_0.VisualFacing = L1_1
  L3_3 = 52
  L0_0.VisualCenter = L1_1
  L0_0.Name = "Order Red"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_REDBUFF
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 150
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 1.66
  L0_0.MinimapIcon = "Camp"
  L0_0.LeashRadius = 1000
  L3_3 = 52.43
  L0_0.VisualFacing = L1_1
  L3_3 = 53.94
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Order Small Golems"
  L3_3 = CAMPTYPE_SMALLGOLEMS
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 0.86
  L0_0.LeashRadius = 900
  L3_3 = 51.13
  L0_0.VisualFacing = L1_1
  L3_3 = 51
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  DRAGON_CAMP_INDEX = L0_0
  L0_0.Name = "Dragon"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_SRU_DRAGON_AIR
  L3_3 = PredefinedCamps
  L3_3 = L3_3[L4_4]
  L0_0.Groups = L1_1
  L3_3 = 25
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 180
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.RevealEvent = "VO_INTERACTIVE_REVEAL_ENEMY_DRAGON_KILL"
  L0_0.SpawnDuration = 6.5
  L0_0.UseSummonerScript = true
  L0_0.MinimapIcon = "Dragon"
  L0_0.EmptyVisibilityToAll = true
  L0_0.UpdateCampIconOnSpawn = true
  L0_0.Name = "Chaos Blue"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_BLUEBUFF
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 300
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 1.1
  L0_0.MinimapIcon = "Camp"
  L0_0.LeashRadius = 1000
  L3_3 = 51.71
  L0_0.VisualFacing = L1_1
  L3_3 = 51.72
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Chaos Wolves"
  L3_3 = CAMPTYPE_WOLVES2
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 0.66
  L3_3 = 62.15
  L0_0.VisualFacing = L1_1
  L3_3 = 62.39
  L0_0.VisualCenter = L1_1
  L0_0.Name = "Chaos Wraiths"
  L3_3 = CAMPTYPE_WRAITHS2
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 0.67
  L3_3 = 51.28
  L0_0.VisualFacing = L1_1
  L3_3 = 52
  L0_0.VisualCenter = L1_1
  L0_0.Name = "Chaos Red"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_REDBUFF
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 300
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 1.66
  L0_0.MinimapIcon = "Camp"
  L0_0.LeashRadius = 1000
  L3_3 = 54.44
  L0_0.VisualFacing = L1_1
  L3_3 = 56.21
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Chaos Small Golems"
  L3_3 = CAMPTYPE_SMALLGOLEMS2
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 0.86
  L0_0.LeashRadius = 900
  L3_3 = 55.56
  L0_0.VisualFacing = L1_1
  L3_3 = 56
  L0_0.VisualCenter = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Baron"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_NASHOR
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 420
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.CampLevel = 2
  L0_0.RevealEvent = "VO_INTERACTIVE_REVEAL_ENEMY_NASHOR_KILL"
  L0_0.SpawnDuration = 8.5
  L0_0.UseSummonerScript = true
  L0_0.EmptyVisibilityToAll = true
  L0_0.MinimapIcon = "Baron"
  L0_0.SkinID = L1_1
  L0_0.Name = "Order OwlBear"
  L3_3 = CAMPTYPE_OWLBEAR
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 3.2
  L0_0.LeashRadius = 700
  L3_3 = 51.78
  L0_0.VisualFacing = L1_1
  L0_0.Name = "Chaos OwlBear"
  L3_3 = CAMPTYPE_OWLBEAR
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.GroupBuffSide = L1_1
  L0_0.SpawnDuration = 3.2
  L0_0.LeashRadius = 700
  L3_3 = 53.57
  L0_0.VisualFacing = L1_1
  L0_0.Name = "Dragon Crab"
  L3_3 = CAMPTYPE_CRAB
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 180
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.SpawnDuration = 2.2
  L0_0.AIScript = "RiverCrab.lua"
  L3_3 = -62.81
  L0_0.VisualFacing = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "Baron Crab"
  L3_3 = CAMPTYPE_CRAB
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.GroupsRespawnTime = 180
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.SpawnDuration = 2.2
  L0_0.AIScript = "RiverCrab.lua"
  L3_3 = -66.75
  L0_0.VisualFacing = L1_1
  L0_0.SkinID = L1_1
  L0_0.Name = "SRU_RiftHerald"
  L0_0.TimerType = L1_1
  L3_3 = CAMPTYPE_SRU_RIFTHERALD
  L0_0.Groups = L1_1
  L0_0.GroupsChance = L1_1
  L0_0.StopSpawnTime = 1200
  L0_0.GroupsRespawnTime = 9999
  L0_0.GroupDelaySpawnTime = L1_1
  L0_0.RevealEvent = "VO_INTERACTIVE_REVEAL_ENEMY_RIFTHERALD_KILL"
  L0_0.SpawnDuration = 3.2
  L0_0.LeashRadius = 1200
  L0_0.MinimapIcon = "SRU_RiftHerald"
  L0_0.EmptyVisibilityToAll = true
  MinionSpawnStartTime = L0_0
  NeutralCampSpawnPosDict = L0_0
  NeutralCampSpawnTimeDict = L0_0
  NeutralCampRespawnTimeDict = L0_0
  NeutralCampSpawnDurationDict = L0_0
  NeutralCampUnitIDDict = L0_0
  NeutralCampMarkerIDDict = L0_0
  ElderDragonRespawnTime = L0_0
  for L3_3 = 1, NUMBER_OF_CAMPS do
    L4_4[NeutralMinionCamps[L3_3].Name] = CampCenterPoints[L3_3][1]
    L4_4[NeutralMinionCamps[L3_3].Name] = NeutralMinionCamps[L3_3].GroupDelaySpawnTime + MinionSpawnStartTime
    L4_4[NeutralMinionCamps[L3_3].Name] = NeutralMinionCamps[L3_3].GroupsRespawnTime
    L4_4[NeutralMinionCamps[L3_3].Name] = NeutralMinionCamps[L3_3].SpawnDuration
    L4_4[NeutralMinionCamps[L3_3].Name] = {}
  end
  L0_0()
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L3_3 = 3
  elementalDragonTable = L0_0
  elementalDragonTable = L0_0
  L3_3 = 0
  dragonOccurenceTable = L0_0
  for L3_3 = 1, 7 do
    randomlyChosenDragon = L4_4
    while true do
      if L4_4 > 2 then
        randomlyChosenDragon = L4_4
      end
    end
    L4_4[L3_3] = randomlyChosenDragon
    L4_4[randomlyChosenDragon] = dragonOccurenceTable[randomlyChosenDragon] + 1
  end
  for L3_3 = 8, 100 do
    L4_4[L3_3] = elementalDragonTable[GetRandomIntInRangeLua(1, 3)]
  end
  DragonFlavorIndex = L0_0
  L0_0(L1_1, L2_2)
  L0_0(L1_1, L2_2)
  L3_3 = DragonFlavorIndex
  L0_0.GroupsChance = L1_1
  L3_3 = DragonFlavorIndex
  L0_0.MinimapIcon = L1_1
  L0_0()
end
function InitDragonSigilMarkers()
  MarkerPos = Make3DPoint(9453.70996, -71.2406, 4777.350586)
  SetWorldVar("DragonSigilPos", MarkerPos)
  Marker = SpawnMinion("DragonSigil", "TestCube", "Idle.lua", MarkerPos, TEAM_NEUTRAL, false, true, true, true, true, true)
  ApplyPersistentBuff(Marker, "DragonSigilManager", false, 1, 1)
end
function CreateRespawnNeutralTimer(A0_5)
  local L1_6
  function L1_6()
    local L0_7, L1_8, L2_9, L3_10, L4_11, L5_12, L6_13, L7_14, L8_15, L9_16, L10_17
    L0_7 = GetRandomIntLua
    L1_8 = 100
    L0_7 = L0_7(L1_8)
    L1_8 = 0
    L2_9 = false
    L3_10.DamageBonus = L4_11
    L3_10.HealthBonus = L4_11
    if L3_10 == -1 then
      for L6_13 = 1, #L4_11 do
        if L0_7 <= L7_14 and L2_9 == false then
          L2_9 = true
          L7_14.AliveTracker = L8_15
          for L10_17 = 1, #L8_15 do
            SpawnNeutralMinionWithSkin(NeutralMinionCamps[_UPVALUE0_], _UPVALUE0_, L6_13, L10_17, NeutralMinionCamps[_UPVALUE0_].SkinID)
            NeutralMinionCamps[_UPVALUE0_].AliveTracker[L10_17] = true
          end
        end
        L1_8 = L1_8 + L7_14
      end
    elseif L3_10 > L4_11 then
      for L6_13 = 1, #L4_11 do
        if L0_7 <= L7_14 and L2_9 == false then
          L2_9 = true
          L7_14.AliveTracker = L8_15
          for L10_17 = 1, #L8_15 do
            SpawnNeutralMinionWithSkin(NeutralMinionCamps[_UPVALUE0_], _UPVALUE0_, L6_13, L10_17, NeutralMinionCamps[_UPVALUE0_].SkinID)
            NeutralMinionCamps[_UPVALUE0_].AliveTracker[L10_17] = true
          end
        end
        L1_8 = L1_8 + L7_14
      end
      L3_10.SpawnCount = L4_11
    end
  end
  return L1_6
end
function InitializeNeutralMinionInfo()
  local L0_18, L1_19, L2_20, L3_21, L4_22, L5_23, L6_24, L7_25, L8_26, L9_27, L10_28, L11_29
  for L3_21 = 1, #L1_19 do
    L4_22[L3_21] = nil
  end
  for L3_21 = 1, #L1_19 do
    for L7_25 = 1, #L5_23 do
      L8_26[L7_25] = L9_27
      for L11_29 = 1, #L9_27 do
        NeutralMinionCamps[L3_21].UniqueNames[L7_25][L11_29] = NeutralMinionCamps[L3_21].Groups[L7_25][L11_29][1] .. L3_21 .. "." .. L7_25 .. "." .. L11_29
      end
    end
    L7_25 = CreateRespawnNeutralTimer
    L7_25 = L7_25(L8_26)
    L5_23[L6_24] = L7_25
    L7_25 = L4_22 + 1
    L5_23.Timer = L6_24
    L7_25 = L3_21
    L5_23(L6_24, L7_25)
  end
  L3_21 = DragonFlavorIndex
  L0_18(L1_19, L2_20)
end
function SpawnInitialNeutralMinions(A0_30)
  if A0_30 <= #NeutralMinionCamps then
    for _FORV_7_ = 1, #NeutralMinionCamps[A0_30].Groups do
      if 0 < NeutralMinionCamps[A0_30].GroupDelaySpawnTime and false == false then
        NeutralMinionCamps[A0_30].AliveTracker = {}
        for _FORV_11_ = 1, #NeutralMinionCamps[A0_30].Groups[_FORV_7_] do
          NeutralMinionCamps[A0_30].AliveTracker[_FORV_11_] = true
        end
      elseif GetRandomIntLua(100) <= NeutralMinionCamps[A0_30].GroupsChance[_FORV_7_] + 0 and true == false then
        NeutralMinionCamps[A0_30].AliveTracker = {}
        for _FORV_11_ = 1, #NeutralMinionCamps[A0_30].Groups[_FORV_7_] do
          NeutralMinionCamps[A0_30].AliveTracker[_FORV_11_] = true
        end
      end
    end
  end
end
function NeutralMinionDeath(A0_31, A1_32, A2_33, A3_34)
  local L4_35, L5_36
  L4_35 = true
  L5_36 = 0
  if HasUnitTag(A1_32, {
    UnitTagIndicies.Monster_Epic
  }) then
    if GetUnitSkinName(A1_32) == "SRU_Dragon_Air" or GetUnitSkinName(A1_32) == "SRU_Dragon_Fire" or GetUnitSkinName(A1_32) == "SRU_Dragon_Water" or GetUnitSkinName(A1_32) == "SRU_Dragon_Earth" then
      nextSpawnTime = GetGameTime() + NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsRespawnTime
      if nextSpawnTime > ELDER_DRAGON_SPAWN_TIME then
        NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsChance = HelperDragonProbTableGenerate(5)
        SetWorldVar("DragonFlavorIndex", -1)
        NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon = DragonTypeToDragonIconName(5)
        UpdateNeutralCampNextSpawnType(DragonTypeToDragonBaseName(5), DRAGON_CAMP_INDEX)
        if NeutralMinionCamps[DRAGON_CAMP_INDEX].UpdateCampIconOnSpawn == true then
          UpdateNeutralCampMinimapIcon(NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon, DRAGON_CAMP_INDEX, NeutralMinionCamps[DRAGON_CAMP_INDEX].CampLevel)
        end
      else
        DragonFlavorIndex = DragonFlavorIndex + 1
        SetWorldVar("DragonFlavorIndex", DragonFlavorIndex)
        NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsChance = HelperDragonProbTableGenerate(DragonFlavorTable[DragonFlavorIndex])
        NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon = DragonTypeToDragonIconName(DragonFlavorTable[DragonFlavorIndex])
        if DragonFlavorTable[DragonFlavorIndex] ~= DragonFlavorTable[DragonFlavorIndex - 1] then
          UpdateNeutralCampNextSpawnType(DragonTypeToDragonBaseName(DragonFlavorTable[DragonFlavorIndex]), DRAGON_CAMP_INDEX)
          if NeutralMinionCamps[DRAGON_CAMP_INDEX].UpdateCampIconOnSpawn == true then
            UpdateNeutralCampMinimapIcon(NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon, DRAGON_CAMP_INDEX, NeutralMinionCamps[DRAGON_CAMP_INDEX].CampLevel)
          end
        end
      end
    elseif GetUnitSkinName(A1_32) == "SRU_Dragon_Elder" then
      NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsRespawnTime = ELDER_DRAGON_SPAWN_RATE
    end
  end
  for _FORV_9_ = 1, #NeutralMinionCamps do
    for _FORV_13_ = 1, #NeutralMinionCamps[_FORV_9_].UniqueNames do
      for _FORV_17_ = 1, #NeutralMinionCamps[_FORV_9_].UniqueNames[_FORV_13_] do
        if NeutralMinionCamps[_FORV_9_].UniqueNames[_FORV_13_][_FORV_17_] == A0_31 then
          L5_36 = _FORV_9_
          NeutralMinionCamps[_FORV_9_].AliveTracker[_FORV_17_] = false
        end
      end
    end
  end
  if L5_36 > 0 then
    for _FORV_9_ = 1, #NeutralMinionCamps[L5_36].AliveTracker do
      if NeutralMinionCamps[L5_36].AliveTracker[_FORV_9_] == true then
        L4_35 = false
      end
    end
    if L4_35 == true then
      InitNeutralMinionTimer(NeutralMinionCamps[L5_36].Timer, NeutralMinionCamps[L5_36].TimerType, NeutralMinionCamps[L5_36].GroupsRespawnTime - NeutralMinionCamps[L5_36].SpawnDuration, NeutralMinionCamps[L5_36].SpawnDuration, false, NeutralMinionCamps[L5_36].StopSpawnTime)
    end
  end
end
function HelperDragonProbTableGenerate(A0_37)
  local L2_38, L3_39, L4_40, L5_41
  returnTable = L2_38
  for L5_41 = 1, 5 do
    returnTable[L5_41] = 0
    if L5_41 == A0_37 then
      returnTable[L5_41] = 100
    end
  end
  return L2_38
end
function shuffleTable(A0_42, A1_43)
  local L2_44, L3_45, L4_46, L5_47, L6_48, L7_49, L8_50, L9_51, L10_52, L11_53
  L2_44 = #A0_42
  L3_45 = nil
  for L7_49 = 1, A1_43 do
    for L11_53 = L2_44, 2, -1 do
      L3_45 = GetRandomIntLua(L11_53)
      A0_42[L11_53], A0_42[L3_45] = A0_42[L3_45], A0_42[L11_53]
    end
  end
  return A0_42
end
function DragonTypeToDragonBaseName(A0_54)
  local L1_55, L2_56
  L1_55 = ""
  if A0_54 == 1 then
    L1_55 = "Air"
  elseif A0_54 == 2 then
    L1_55 = "Fire"
  elseif A0_54 == 3 then
    L1_55 = "Water"
  elseif A0_54 == 4 then
    L1_55 = "Earth"
  elseif A0_54 == 5 then
    L1_55 = "Elder"
  end
  L2_56 = "Dragon" .. L1_55
  return L2_56
end
function DragonTypeToDragonIconName(A0_57)
  local L1_58
  L1_58 = DragonTypeToDragonBaseName(A0_57)
  if L1_58 ~= "Dragon" then
    L1_58 = L1_58 .. "Minimap"
  end
  return L1_58
end
function SetNextDragonType(A0_59)
  if DragonFlavorIndex < 1 then
    return
  end
  if NeutralMinionCamps[DRAGON_CAMP_INDEX].AliveTracker[1] == true then
    DragonFlavorTable[DragonFlavorIndex + 1] = A0_59
  else
    DragonFlavorTable[DragonFlavorIndex] = A0_59
  end
  SetWorldVar("DragonFlavorIndex", DragonFlavorIndex)
  SetWorldVar("DragonFlavorTable", DragonFlavorTable)
  NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsChance = HelperDragonProbTableGenerate(DragonFlavorTable[DragonFlavorIndex])
  NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon = DragonTypeToDragonIconName(DragonFlavorTable[DragonFlavorIndex])
  UpdateNeutralCampMinimapIcon(NeutralMinionCamps[DRAGON_CAMP_INDEX].MinimapIcon, DRAGON_CAMP_INDEX, NeutralMinionCamps[DRAGON_CAMP_INDEX].CampLevel)
end
function NeutralMinionOnLevelReset()
  NeutralMinionInitCampMarkersDict()
  InitDragonSigilMarkers()
  NeutralMinionCamps[DRAGON_CAMP_INDEX].GroupsRespawnTime = ELEMENTAL_DRAGON_SPAWN_RATE
  DragonFlavorIndex = GetRandomIntInRangeLua(1, 20)
  SetNextDragonType(DragonFlavorTable[DragonFlavorIndex])
end
