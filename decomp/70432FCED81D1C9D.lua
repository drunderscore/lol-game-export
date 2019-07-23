local L0_0
L0_0 = 0
TEAM_UNKNOWN = L0_0
L0_0 = 100
TEAM_ORDER = L0_0
L0_0 = 200
TEAM_CHAOS = L0_0
L0_0 = 300
TEAM_NEUTRAL = L0_0
L0_0 = 400
TEAM_MAX = L0_0
L0_0 = 1
HOSTILE = L0_0
L0_0 = 0
INACTIVE = L0_0
L0_0 = {
  "HA_AP_HealthRelic",
  "AramSpeedShrine",
  "HA_FB_HealthRelic"
}
NeutralMinionNames = L0_0
L0_0 = 1000
HERO_EXP_RADIUS = L0_0
L0_0 = {}
L0_0.HA_AP_HealthRelic = {
  GoldGiven = 0,
  ExpGiven = 0,
  SoulGiven = 0
}
L0_0.AramSpeedShrine = {
  GoldGiven = 0,
  ExpGiven = 0,
  SoulGiven = 0
}
L0_0.HA_FB_HealthRelic = {
  GoldGiven = 0,
  ExpGiven = 0,
  SoulGiven = 0
}
DefaultNeutralMinionValues = L0_0
L0_0 = {}
NeutralTimers = L0_0
L0_0 = {
  {
    Get3DPointPosition("HA_AP_HealthRelic_Chaos_Outer")
  },
  {
    Get3DPointPosition("HA_AP_HealthRelic_Order_Outer")
  },
  {
    Get3DPointPosition("HA_AP_HealthRelic_Chaos_Inner")
  },
  {
    Get3DPointPosition("HA_AP_HealthRelic_Order_Inner")
  }
}
CampSpawnPoints = L0_0
L0_0 = {
  {
    Get3DPointFacingPosition("HA_AP_HealthRelic_Chaos_Outer")
  },
  {
    Get3DPointFacingPosition("HA_AP_HealthRelic_Order_Outer")
  },
  {
    Get3DPointFacingPosition("HA_AP_HealthRelic_Chaos_Inner")
  },
  {
    Get3DPointFacingPosition("HA_AP_HealthRelic_Order_Inner")
  }
}
CampFacePoints = L0_0
L0_0 = {}
L0_0[1] = {
  "HA_AP_HealthRelic"
}
L0_0[2] = {
  "HA_AP_HealthRelic"
}
L0_0[3] = {
  "HA_AP_HealthRelic"
}
L0_0[4] = {
  "HA_AP_HealthRelic"
}
PredefinedCamps = L0_0
L0_0 = {}
L0_0[1] = {
  "HA_FB_HealthRelic"
}
L0_0[2] = {
  "HA_FB_HealthRelic"
}
PredefinedCampsFB = L0_0
L0_0 = {}
L0_0[1] = {}
L0_0[2] = {}
L0_0[3] = {}
L0_0[4] = {}
NeutralMinionCamps = L0_0
L0_0 = NeutralMinionCamps
L0_0 = #L0_0
NUMBER_OF_CAMPS = L0_0
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6
  L0_1 = GetGameMode
  L0_1 = L0_1()
  for L4_5, L5_6 in L1_2(L2_3) do
    PreloadCharacter(L5_6)
  end
  if L0_1 == "FIRSTBLOOD" then
    L1_2[1] = L2_3
    L1_2[2] = L2_3
    NeutralMinionCamps = L1_2
    NUMBER_OF_CAMPS = L1_2
  end
  for L4_5 = 1, NUMBER_OF_CAMPS do
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.Positions = CampSpawnPoints[L4_5]
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.FacePositions = CampFacePoints[L4_5]
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.UniqueNames = {}
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.AliveTracker = {}
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.Team = TEAM_NEUTRAL
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.DamageBonus = 0
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.HealthBonus = 0
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.AIState = INACTIVE
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.GroupsRespawnTime = 60
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.CampLevel = 1
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.TimerType = ""
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.MinimapIcon = ""
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.LeashRadius = 800
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.StopSpawnTime = 25000
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.LeashCenter = CampSpawnPoints[L4_5][1]
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.VisualCenter = CampSpawnPoints[L4_5][1]
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.MinimapPosition = NeutralMinionCamps[L4_5].VisualCenter
    L5_6 = NeutralMinionCamps
    L5_6 = L5_6[L4_5]
    L5_6.VisualFacing = CampFacePoints[L4_5][1]
  end
  if L0_1 == "ARAM" or L0_1 == "KINGPORO" then
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 60
    L1_2.GroupDelaySpawnTime = 75
    L1_2.CampLevel = 3
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 60
    L1_2.GroupDelaySpawnTime = 75
    L1_2.CampLevel = 3
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 60
    L1_2.GroupDelaySpawnTime = 75
    L1_2.CampLevel = 3
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 60
    L1_2.GroupDelaySpawnTime = 75
    L1_2.CampLevel = 3
  elseif L0_1 == "FIRSTBLOOD" then
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 75
    L1_2.GroupDelaySpawnTime = 90
    L1_2.CampLevel = 3
    L1_2.Groups = L2_3
    L1_2.GroupsChance = L2_3
    L1_2.GroupsRespawnTime = 75
    L1_2.GroupDelaySpawnTime = 90
    L1_2.CampLevel = 3
  end
end
NeutralMinionInit = L0_0
function L0_0(A0_7)
  local L1_8
  function L1_8()
    local L0_9, L1_10, L2_11, L3_12, L4_13, L5_14, L6_15, L7_16, L8_17, L9_18, L10_19
    L0_9 = GetRandomIntLua
    L1_10 = 100
    L0_9 = L0_9(L1_10)
    L1_10 = 0
    L2_11 = false
    L3_12.DamageBonus = L4_13
    L3_12.HealthBonus = L4_13
    for L6_15 = 1, #L4_13 do
      if L0_9 <= L7_16 and L2_11 == false then
        L2_11 = true
        L7_16.AliveTracker = L8_17
        for L10_19 = 1, #L8_17 do
          SpawnNeutralMinion(NeutralMinionCamps[_UPVALUE0_], _UPVALUE0_, L6_15, L10_19)
          NeutralMinionCamps[_UPVALUE0_].AliveTracker[L10_19] = true
        end
      end
      L1_10 = L1_10 + L7_16
    end
  end
  return L1_8
end
CreateRespawnNeutralTimer = L0_0
function L0_0()
  local L0_20, L1_21, L2_22, L3_23, L4_24, L5_25, L6_26, L7_27, L8_28, L9_29, L10_30, L11_31
  for L3_23 = 1, #L1_21 do
    for L7_27 = 1, #L5_25 do
      L8_28[L7_27] = L9_29
      for L11_31 = 1, #L9_29 do
        NeutralMinionCamps[L3_23].UniqueNames[L7_27][L11_31] = NeutralMinionCamps[L3_23].Groups[L7_27][L11_31] .. L3_23 .. "." .. L7_27 .. "." .. L11_31
      end
    end
    L7_27 = CreateRespawnNeutralTimer
    L7_27 = L7_27(L8_28)
    L5_25[L6_26] = L7_27
    L7_27 = L4_24 + 1
    L5_25.Timer = L6_26
    L7_27 = L3_23
    L5_25(L6_26, L7_27)
  end
end
InitializeNeutralMinionInfo = L0_0
function L0_0(A0_32)
  if A0_32 <= #NeutralMinionCamps then
    for _FORV_7_ = 1, #NeutralMinionCamps[A0_32].Groups do
      if 0 < NeutralMinionCamps[A0_32].GroupDelaySpawnTime and false == false then
        NeutralMinionCamps[A0_32].AliveTracker = {}
        for _FORV_11_ = 1, #NeutralMinionCamps[A0_32].Groups[_FORV_7_] do
          NeutralMinionCamps[A0_32].AliveTracker[_FORV_11_] = true
        end
      elseif GetRandomIntLua(100) <= NeutralMinionCamps[A0_32].GroupsChance[_FORV_7_] + 0 and true == false then
        NeutralMinionCamps[A0_32].AliveTracker = {}
        for _FORV_11_ = 1, #NeutralMinionCamps[A0_32].Groups[_FORV_7_] do
          NeutralMinionCamps[A0_32].AliveTracker[_FORV_11_] = true
        end
      end
    end
  end
end
SpawnInitialNeutralMinions = L0_0
function L0_0(A0_33, A1_34, A2_35, A3_36)
  local L4_37, L5_38
  L4_37 = true
  L5_38 = 0
  for _FORV_9_ = 1, #NeutralMinionCamps do
    for _FORV_13_ = 1, #NeutralMinionCamps[_FORV_9_].UniqueNames do
      for _FORV_17_ = 1, #NeutralMinionCamps[_FORV_9_].UniqueNames[_FORV_13_] do
        if NeutralMinionCamps[_FORV_9_].UniqueNames[_FORV_13_][_FORV_17_] == A0_33 then
          L5_38 = _FORV_9_
          NeutralMinionCamps[_FORV_9_].AliveTracker[_FORV_17_] = false
        end
      end
    end
  end
  if L5_38 > 0 then
    for _FORV_9_ = 1, #NeutralMinionCamps[L5_38].AliveTracker do
      if NeutralMinionCamps[L5_38].AliveTracker[_FORV_9_] == true then
        L4_37 = false
      end
    end
    if L4_37 == true then
      InitNeutralMinionTimer(NeutralMinionCamps[L5_38].Timer, NeutralMinionCamps[L5_38].TimerType, NeutralMinionCamps[L5_38].GroupsRespawnTime, 0, false, NeutralMinionCamps[L5_38].StopSpawnTime)
    end
  end
end
NeutralMinionDeath = L0_0
