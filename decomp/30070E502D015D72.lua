local L0_0, L1_1
function L0_0()
  if (GetMyPos() - Make3DPoint(10500, 0, 5000)):lengthSq() > (GetMyPos() - Make3DPoint(4200, 0, 9800)):lengthSq() then
    River = {
      StartPos = Make3DPoint(3150, 0, 11500),
      EndPos = Make3DPoint(6400, 0, 8400),
      Dest = 4,
      Dir = -1,
      Path = {
        Make3DPoint(3720, 0, 9920),
        Make3DPoint(4030, 0, 9460),
        Make3DPoint(4710, 0, 9190),
        Make3DPoint(5240, 0, 8950),
        Make3DPoint(5890, 0, 8810)
      },
      TopBorder = {
        Make3DPoint(2840, 0, 11270),
        Make3DPoint(3100, 0, 11500),
        Make3DPoint(3800, 0, 11000),
        Make3DPoint(4500, 0, 9900),
        Make3DPoint(6750, 0, 8650)
      },
      CenterPos = Make3DPoint(4200, 0, 9800),
      BottomBorder = {
        Make3DPoint(2840, 0, 11270),
        Make3DPoint(3600, 0, 9700),
        Make3DPoint(4700, 0, 8900),
        Make3DPoint(6115, 0, 8100),
        Make3DPoint(6800, 0, 8600)
      }
    }
  else
    River = {
      StartPos = Make3DPoint(11500, 0, 4000),
      EndPos = Make3DPoint(8500, 0, 6300),
      Dest = 4,
      Dir = -1,
      Path = {
        Make3DPoint(11190, 0, 4660),
        Make3DPoint(11020, 0, 5130),
        Make3DPoint(10440, 0, 5520),
        Make3DPoint(9830, 0, 5780),
        Make3DPoint(9190, 0, 6030)
      },
      CenterPos = Make3DPoint(10500, 0, 5000),
      TopBorder = {
        Make3DPoint(8150, 0, 6100),
        Make3DPoint(8850, 0, 6650),
        Make3DPoint(9500, 0, 6200),
        Make3DPoint(10800, 0, 5500),
        Make3DPoint(11300, 0, 4900),
        Make3DPoint(11900, 0, 4000)
      },
      BottomBorder = {
        Make3DPoint(8150, 0, 6100),
        Make3DPoint(9500, 0, 5300),
        Make3DPoint(10200, 0, 4800),
        Make3DPoint(11000, 0, 4100),
        Make3DPoint(11300, 0, 3900),
        Make3DPoint(11900, 0, 4000)
      }
    }
  end
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
