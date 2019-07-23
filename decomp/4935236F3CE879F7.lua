local L0_0
L0_0 = {
  {
    Name = "BlueTop",
    Point = Make3DPoint(2715, 54, 4860)
  },
  {
    Name = "RedTop",
    Point = Make3DPoint(10033, 84, 12168)
  },
  {
    Name = "BlueBot",
    Point = Make3DPoint(4822, 74, 2805)
  },
  {
    Name = "RedBot",
    Point = Make3DPoint(12087, 92, 10159)
  }
}
VisionBearersDefinition = L0_0
function L0_0()
  for _FORV_3_, _FORV_4_ in ipairs(VisionBearersDefinition) do
    SpawnMinion("SRU_WallVisionBearer_" .. _FORV_4_.Name, "SRU_WallVisionBearer", "Idle.lua", _FORV_4_.Point, TEAM_NEUTRAL, false, true, true, true, true, true)
  end
end
SpawnVisionBearers = L0_0
