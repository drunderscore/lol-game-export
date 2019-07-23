local L0_0, L1_1
function L0_0()
  River = {
    StartPos = Make3DPoint(7640, 0, 5700),
    EndPos = Make3DPoint(7340, 0, 5700),
    Dest = 4,
    Dir = -1,
    Path = {
      Make3DPoint(8180, 0, 5360),
      Make3DPoint(8010, 0, 4800),
      Make3DPoint(7500, 0, 4450),
      Make3DPoint(6900, 0, 4800),
      Make3DPoint(6730, 0, 5360)
    },
    CenterPos = Make3DPoint(7500, 0, 4450),
    TopBorder = {
      Make3DPoint(6120, 0, 6270),
      Make3DPoint(8700, 0, 6170),
      Make3DPoint(8720, 0, 4230)
    },
    BottomBorder = {
      Make3DPoint(6120, 0, 6270),
      Make3DPoint(6220, 0, 4300),
      Make3DPoint(8720, 0, 4230)
    }
  }
end
CreateRiverRegions = L0_0
function L0_0()
  local L0_2, L1_3
  L0_2 = River
  L0_2 = L0_2.Path
  L1_3 = River
  L1_3 = L1_3.Dest
  L0_2 = L0_2[L1_3]
  return L0_2
end
GetWaypoint = L0_0
function L0_0()
  local L0_4, L1_5, L2_6
  L0_4 = River
  L0_4 = L0_4.Dir
  if L0_4 == 1 then
    L0_4 = River
    L0_4 = L0_4.Dest
    L1_5 = River
    L1_5 = L1_5.Path
    L1_5 = #L1_5
    if L0_4 == L1_5 then
      L0_4 = River
      L0_4.Dir = -1
    end
  else
    L0_4 = River
    L0_4 = L0_4.Dest
    if L0_4 == 1 then
      L0_4 = River
      L0_4.Dir = 1
    end
  end
  L0_4 = River
  L1_5 = River
  L1_5 = L1_5.Dest
  L2_6 = River
  L2_6 = L2_6.Dir
  L1_5 = L1_5 + L2_6
  L0_4.Dest = L1_5
end
IncrementWaypoint = L0_0
function L0_0()
  local L0_7, L1_8, L2_9
  L0_7 = GetMyPos
  L0_7 = L0_7()
  L1_8 = GetDistSquared
  L2_9 = L0_7
  L1_8 = L1_8(L2_9, River.Path[1])
  L2_9 = 1
  while #River.Path >= 2 do
    if L1_8 > GetDistSquared(L0_7, River.Path[2]) then
      L1_8, L2_9 = GetDistSquared(L0_7, River.Path[2]), 2
    end
  end
end
SeekWaypoint = L0_0
