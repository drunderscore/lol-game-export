Components = {}
DoLuaShared("EventSystem")
IncludedFiles = {
  "AIComponentSystem.lua",
  "EventSystem.lua"
}
function AddComponent(A0_0)
  local L1_1
  L1_1 = "AIComponent"
  L1_1 = L1_1 .. A0_0
  DoLuaShared(L1_1)
  IncludedFiles[#IncludedFiles + 1] = L1_1 .. ".lua"
  Components[#Components + 1] = _G[A0_0]
end
