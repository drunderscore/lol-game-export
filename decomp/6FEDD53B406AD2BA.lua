local L0_0, L1_1
function L0_0()
  if activeTask ~= nil and getmetatable(activeTask).OnTargetLost then
    getmetatable(activeTask).OnTargetLost(activeTask)
  end
end
OnLostTarget = L0_0
function L0_0(A0_2)
  LoadScript(A0_2).__index = LoadScript(A0_2)
  return (LoadScript(A0_2))
end
LoadTask = L0_0
function L0_0()
  UpgradeSpellsInOrder(4, 2, 3, 1)
end
OnLevelUp = L0_0
function L0_0()
  InitTimer("TimerHackDelayedInit", 1, false)
end
OnInit = L0_0
function L0_0()
  StopTimer("TimerUpdate")
end
Disable = L0_0
function L0_0()
  ResetAndStartTimer("TimerUpdate")
end
Enable = L0_0
function L0_0()
  local L0_3, L1_4, L2_5, L3_6, L4_7, L5_8, L6_9, L7_10, L8_11, L9_12, L10_13, L11_14, L12_15, L13_16, L14_17
  L0_3 = LoadTask
  L1_4 = "TaskPushLane.lua"
  L0_3 = L0_3(L1_4)
  L1_4 = LoadTask
  L2_5 = "TaskRetreat.lua"
  L1_4 = L1_4(L2_5)
  L2_5 = LoadTask
  L3_6 = "TaskDefendStructure.lua"
  L2_5 = L2_5(L3_6)
  L3_6 = LoadTask
  L4_7 = "TaskBuyItem.lua"
  L3_6 = L3_6(L4_7)
  L4_7 = LoadTask
  L5_8 = "TaskKillHero.lua"
  L4_7 = L4_7(L5_8)
  L5_8 = LoadTask
  L6_9 = "TaskCastSpell.lua"
  L5_8 = L5_8(L6_9)
  L6_9 = LoadTask
  L7_10 = "TaskKillMinion.lua"
  L6_9 = L6_9(L7_10)
  L7_10 = LoadTask
  L7_10 = L7_10(L8_11)
  tasks = L8_11
  L9_12(L10_13, L11_14)
  L8_11.Name = "CastSpell"
  L9_12(L10_13, L11_14)
  L9_12(L10_13, L11_14)
  L8_11.Name = "Retreat"
  L9_12(L10_13, L11_14)
  L9_12(L10_13, L11_14)
  L8_11.Name = "KillLowHPMinion"
  L9_12(L10_13, L11_14)
  L9_12(L10_13, L11_14)
  L8_11.Name = "KillNearbyStruct"
  L9_12(L10_13, L11_14)
  for L11_14 = 0, 2 do
    L12_15.LaneID = L11_14
    L13_16 = "Push Lane "
    L14_17 = L11_14
    L13_16 = L13_16 .. L14_17
    L12_15.Name = L13_16
    L13_16 = setmetatable
    L14_17 = L12_15
    L13_16(L14_17, L0_3)
    L13_16 = table
    L13_16 = L13_16.insert
    L14_17 = tasks
    L13_16(L14_17, L12_15)
  end
  L14_17 = L9_12()
  for L12_15 = 1, #L8_11 do
    L13_16 = {}
    L14_17 = L8_11[L12_15]
    L13_16.StructureID = L14_17
    L14_17 = "Defend "
    L14_17 = L14_17 .. objGetName(GetObject(L8_11[L12_15]))
    L13_16.Name = L14_17
    L14_17 = setmetatable
    L14_17(L13_16, L2_5)
    L14_17 = table
    L14_17 = L14_17.insert
    L14_17(tasks, L13_16)
  end
  L10_13(L11_14, L12_15)
  L9_12.Name = "Buy Item"
  L10_13(L11_14, L12_15)
  L14_17 = L10_13()
  for L13_16 = 1, #L9_12 do
    L14_17 = {}
    L14_17.HeroIDIndex = L13_16
    L14_17.Name = "Kill Hero " .. objGetName(L9_12[L13_16])
    setmetatable(L14_17, L4_7)
    table.insert(tasks, L14_17)
  end
  L13_16 = true
  L10_13(L11_14, L12_15, L13_16)
end
TimerHackDelayedInit = L0_0
function L0_0()
  if activeTask.HeroID and getmetatable(activeTask).AntiKiteTimer then
    getmetatable(activeTask).AntiKiteTimer(activeTask)
  end
end
AntiKiteTimer = L0_0
function L0_0()
  local L0_18, L1_19, L2_20, L3_21, L4_22
  L0_18 = tasks
  L0_18 = L0_18[L1_19]
  for L4_22 = #L1_19, 1, -1 do
    tasks[L4_22]:UpdatePriority()
    if tasks[L4_22].Done then
      if activeTask == tasks[L4_22] then
        activeTask = nil
      end
      SetDebugSlotText(#tasks, "", 0)
      table.remove(tasks, L4_22)
    elseif tasks[L4_22].Priority > L0_18.Priority then
      L0_18 = tasks[L4_22]
    end
  end
  for L4_22 = 1, #L2_20 do
    if L0_18 == tasks[L4_22] then
      colorIndex = 1
    else
      colorIndex = 0
    end
    SetDebugSlotText(L4_22, tasks[L4_22].Name .. " : " .. tasks[L4_22].Priority, colorIndex)
  end
  if L0_18 ~= L1_19 then
    if L1_19 ~= nil then
    elseif L1_19 > L2_20 then
      activeTask = L0_18
      L1_19(L2_20)
    end
  end
  L1_19(L2_20)
end
TimerUpdate = L0_0
