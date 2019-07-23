local L0_0
L0_0 = {
  {
    Name = "BlueLeft",
    Team = TEAM_ORDER,
    Start = Make3DPoint(2600, 95, 4600),
    End = Make3DPoint(2700, 0, 5000)
  },
  {
    Name = "BlueRight",
    Team = TEAM_ORDER,
    Start = Make3DPoint(4600, 95, 2800),
    End = Make3DPoint(5000, 100, 2900)
  },
  {
    Name = "PurpleLeft",
    Team = TEAM_CHAOS,
    Start = Make3DPoint(10200, 95, 12200),
    End = Make3DPoint(9800, 95, 12000)
  },
  {
    Name = "PurpleRight",
    Team = TEAM_CHAOS,
    Start = Make3DPoint(12300, 95, 10300),
    End = Make3DPoint(12200, 95, 9800)
  }
}
TeleporterDefinitions = L0_0
function L0_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7
  for L3_4, L4_5 in L0_1(L1_2) do
    L5_6 = SpawnMinion
    L6_7 = "S5Test_BaseTeleporter_"
    L6_7 = L6_7 .. L4_5.Name
    L5_6 = L5_6(L6_7, "S5Test_BaseTeleporter", "Idle.lua", L4_5.Start, L4_5.Team, false, true, true, true, true, true)
    L6_7 = FaceDirection
    L6_7(L5_6, L4_5.End)
    L6_7 = SpawnMinion
    L6_7 = L6_7("S5Test_BaseTeleporter_" .. L4_5.Name, "S5Test_BaseTeleporter", "Idle.lua", L4_5.End, L4_5.Team, false, true, true, true, true, true)
    FaceDirection(L6_7, L4_5.Start)
    LinkVisibility(L5_6, L6_7)
  end
end
SpawnTeleporters = L0_0
