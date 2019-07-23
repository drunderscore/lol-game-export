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
  "Lizard",
  "Dragon",
  "Golem",
  "wolf",
  "Wraith"
}
NeutralMinionNames = L0_0
L0_0 = 1000
HERO_EXP_RADIUS = L0_0
L0_0 = {}
L0_0.Lizard = {
  GoldGiven = 80,
  ExpGiven = 180,
  SoulGiven = 0
}
L0_0.Dragon = {
  GoldGiven = 135,
  ExpGiven = 220,
  SoulGiven = 0
}
L0_0.Golem = {
  GoldGiven = 35,
  ExpGiven = 150,
  SoulGiven = 0
}
L0_0.wolf = {
  GoldGiven = 22,
  ExpGiven = 85,
  SoulGiven = 0
}
L0_0.Wraith = {
  GoldGiven = 28,
  ExpGiven = 95,
  SoulGiven = 0
}
DefaultNeutralMinionValues = L0_0
L0_0 = {}
NeutralTimers = L0_0
L0_0 = {
  Make3DPoint(3652.700195, 42.270264, 7739.373047),
  Make3DPoint(3473.678223, 44.799927, 6373.345703),
  Make3DPoint(6552.914795, 50.27832, 5336.885742),
  Make3DPoint(7422.615234, 50.383179, 3874.202637),
  Make3DPoint(7966.842285, 50.652954, 2633.963379),
  Make3DPoint(9354.931152, -77.426025, 4041.924805),
  Make3DPoint(10476.605469, 47.390503, 6901.112061),
  Make3DPoint(10501.523438, 51.239746, 8066.424316),
  Make3DPoint(7397.368164, 48.800049, 9141.405029),
  Make3DPoint(6504.240723, 51.270142, 10584.5625),
  Make3DPoint(5963.463867, 47.607788, 11844.473633),
  Make3DPoint(4706.495117, -77.390137, 10389.461914)
}
CampSpawnPoints = L0_0
L0_0 = {}
L0_0[1] = {"Dragon"}
L0_0[2] = {"Golem", "Golem"}
L0_0[3] = {
  "wolf",
  "wolf",
  "wolf"
}
L0_0[4] = {"Lizard", "Lizard"}
L0_0[5] = {
  "Wraith",
  "Wraith",
  "Wraith"
}
L0_0[6] = {"Dragon", "wolf"}
L0_0[7] = {"Lizard", "Wraith"}
L0_0[8] = {"Golem", "Golem"}
L0_0[9] = {
  "Lizard",
  "Wraith",
  "Golem"
}
L0_0[10] = {
  "Dragon",
  "Golem",
  "wolf"
}
L0_0[11] = {
  "Wraith",
  "Wraith",
  "Wraith"
}
PredefinedCamps = L0_0
L0_0 = {}
L0_0[1] = {}
L0_0[2] = {}
L0_0[3] = {}
L0_0[4] = {}
L0_0[5] = {}
L0_0[6] = {}
L0_0[7] = {}
L0_0[8] = {}
L0_0[9] = {}
L0_0[10] = {}
L0_0[11] = {}
L0_0[12] = {}
NeutralMinionCamps = L0_0
L0_0 = NeutralMinionCamps
L0_0 = #L0_0
NUMBER_OF_CAMPS = L0_0
function L0_0()
  local L0_1, L1_2
  for _FORV_3_ = 1, NUMBER_OF_CAMPS do
    NeutralMinionCamps[_FORV_3_].Positions = CampSpawnPoints[_FORV_3_]
    NeutralMinionCamps[_FORV_3_].FacePositions = CampSpawnPoints[_FORV_3_]
    NeutralMinionCamps[_FORV_3_].UniqueNames = {}
    NeutralMinionCamps[_FORV_3_].AliveTracker = {}
    NeutralMinionCamps[_FORV_3_].Team = TEAM_NEUTRAL
    NeutralMinionCamps[_FORV_3_].DamageBonus = 0
    NeutralMinionCamps[_FORV_3_].HealthBonus = 0
    NeutralMinionCamps[_FORV_3_].AIState = INACTIVE
    NeutralMinionCamps[_FORV_3_].CampLevel = 1
    NeutralMinionCamps[_FORV_3_].TimerType = ""
    NeutralMinionCamps[_FORV_3_].MinimapIcon = ""
    NeutralMinionCamps[_FORV_3_].LeashRadius = 800
    NeutralMinionCamps[_FORV_3_].StopSpawnTime = 25000
    NeutralMinionCamps[_FORV_3_].LeashCenter = CampSpawnPoints[_FORV_3_][1]
    NeutralMinionCamps[_FORV_3_].VisualCenter = CampSpawnPoints[_FORV_3_][1]
    NeutralMinionCamps[_FORV_3_].VisualFacing = CampFacePoints[_FORV_3_][1]
  end
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
  L0_1.Groups = L1_2
  L0_1.GroupsChance = L1_2
end
NeutralMinionInit = L0_0
function L0_0(A0_3)
  local L1_4
  function L1_4()
    local L0_5, L1_6, L2_7, L3_8, L4_9, L5_10, L6_11, L7_12, L8_13, L9_14, L10_15
    L0_5 = GetRandomIntLua
    L1_6 = 100
    L0_5 = L0_5(L1_6)
    L1_6 = 0
    L2_7 = false
    L3_8.DamageBonus = L4_9
    L3_8.HealthBonus = L4_9
    for L6_11 = 1, #L4_9 do
      if L0_5 <= L7_12 and L2_7 == false then
        L2_7 = true
        L7_12.AliveTracker = L8_13
        for L10_15 = 1, #L8_13 do
          SpawnNeutralMinion(NeutralMinionCamps[_UPVALUE0_], _UPVALUE0_, L6_11, L10_15)
          NeutralMinionCamps[_UPVALUE0_].AliveTracker[L10_15] = true
        end
      end
      L1_6 = L1_6 + L7_12
    end
  end
  return L1_4
end
CreateRespawnNeutralTimer = L0_0
function L0_0()
  local L0_16, L1_17, L2_18, L3_19, L4_20, L5_21, L6_22, L7_23, L8_24, L9_25, L10_26, L11_27
  for L3_19 = 1, #L1_17 do
    for L7_23 = 1, #L5_21 do
      L8_24[L7_23] = L9_25
      for L11_27 = 1, #L9_25 do
        NeutralMinionCamps[L3_19].UniqueNames[L7_23][L11_27] = NeutralMinionCamps[L3_19].Groups[L7_23][L11_27] .. L3_19 .. "$" .. L11_27
        NeutralMinionCamps[L3_19].AliveTracker[L11_27] = true
      end
    end
    L7_23 = CreateRespawnNeutralTimer
    L7_23 = L7_23(L8_24)
    L5_21[L6_22] = L7_23
    L7_23 = L4_20 + 1
    L5_21.Timer = L6_22
    L7_23 = L3_19
    L5_21(L6_22, L7_23)
  end
end
InitializeNeutralMinionInfo = L0_0
function L0_0()
  local L0_28, L1_29, L2_30, L3_31, L4_32, L5_33, L6_34, L7_35, L8_36, L9_37, L10_38, L11_39, L12_40, L13_41, L14_42
  for L3_31 = 1, #L1_29 do
    L4_32 = GetRandomIntLua
    L5_33 = 100
    L4_32 = L4_32(L5_33)
    L5_33 = 0
    L6_34 = false
    for L10_38 = 1, #L8_36 do
      if L4_32 <= L11_39 and L6_34 == false then
        L6_34 = true
        for L14_42 = 1, #L12_40 do
          SpawnNeutralMinion(NeutralMinionCamps[L3_31], L3_31, L10_38, L14_42)
        end
      end
      L5_33 = L5_33 + L11_39
    end
  end
end
SpawnInitialNeutralMinions = L0_0
function L0_0(A0_43, A1_44, A2_45, A3_46)
  local L4_47, L5_48, L6_49, L7_50, L8_51, L9_52, L10_53, L11_54, L12_55, L13_56, L14_57, L15_58, L16_59, L17_60, L18_61
  L4_47 = true
  L5_48 = 0
  for L9_52 = 1, #L7_50 do
    for L13_56 = 1, #L11_54 do
      for L17_60 = 1, #L15_58 do
        L18_61 = NeutralMinionCamps
        L18_61 = L18_61[L9_52]
        L18_61 = L18_61.UniqueNames
        L18_61 = L18_61[L13_56]
        L18_61 = L18_61[L17_60]
        if L18_61 == A0_43 then
          L5_48 = L9_52
          L18_61 = NeutralMinionCamps
          L18_61 = L18_61[L9_52]
          L18_61 = L18_61.AliveTracker
          L18_61[L17_60] = false
          L18_61 = DefaultNeutralMinionValues
          L18_61 = L18_61[string.match(NeutralMinionCamps[L9_52].UniqueNames[L13_56][L17_60], "%a+")]
          L18_61 = L18_61.ExpGiven
          GiveExpToNearHeroesFromNeutral(A2_45, L18_61, A3_46, HERO_EXP_RADIUS)
        end
      end
    end
  end
  if L5_48 > 0 then
    for L9_52 = 1, #L7_50 do
      if L10_53 == true then
        L4_47 = false
      end
    end
    if L4_47 == true then
      L9_52 = 60
      L6_49(L7_50, L8_51, L9_52, L10_53, L11_54, L12_55)
    end
  end
end
NeutralMinionDeath = L0_0
