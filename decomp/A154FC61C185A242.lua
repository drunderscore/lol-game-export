DoLuaShared("RiverRegions")
DoLuaShared("AIComponentSystem")
AddComponent("OutOfCombatRegen")
AddComponent("DefaultCharmBehavior")
AddComponent("DefaultFearBehavior")
AddComponent("DefaultFleeBehavior")
AddComponent("NonAggressiveTauntBehavior")
AddComponent("WanderAndGraze")
AddComponent("SkittishMonster")
AddComponent("LockMovementToRiver")
RiverCrab = {}
RegisterForEvent("RiverCornered", RiverCrab)
RegisterForEvent("MeleeAttacked", RiverCrab)
RegisterForEvent("RangeAttacked", RiverCrab)
function OnInit(A0_0)
  CreateRiverRegions()
  Event("ComponentInit")
  SetState(AI_ATTACK)
  SetMyLeashedPos()
  SetMyLeashedOrientation()
  InitTimer("TimerRetreat", 0.5, true)
  InitTimer("TimerAttack", 0, true)
  SpellIncLevel(0)
  SpellIncLevel(1)
  Event("WanderPause")
  RiverCrab.InMelee = true
end
function HaltAI()
  Event("ComponentHalt")
  StopTimer("TimerRetreat")
  StopTimer("TimerAttack")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
function RiverCrab.MeleeAttacked(A0_1)
  local L1_2
  A0_1.InMelee = true
end
function RiverCrab.RangeAttacked(A0_3)
  local L1_4
  A0_3.InMelee = false
end
function RiverCrab.RiverCornered(A0_5)
  local L1_6, L2_7, L3_8
  L1_6 = SetStateAndMove
  L2_7 = AI_MOVE
  L3_8 = River
  L3_8 = L3_8.CenterPos
  L1_6(L2_7, L3_8)
  L1_6 = A0_5.InMelee
  if L1_6 == true then
    L1_6 = ServerCastSpellOnPos
    L2_7 = 0
    L3_8 = River
    L3_8 = L3_8.CenterPos
    L1_6(L2_7, L3_8)
  else
    L1_6 = ServerCastSpellOnPos
    L2_7 = 1
    L3_8 = River
    L3_8 = L3_8.CenterPos
    L1_6(L2_7, L3_8)
  end
  L1_6 = GetWaypoint
  L1_6 = L1_6()
  L2_7 = GetMyPos
  L2_7 = L2_7()
  L3_8 = River
  L3_8 = L3_8.CenterPos
  L3_8 = L2_7 - L3_8
  L3_8 = L3_8.normalize
  L3_8 = L3_8(L3_8)
  L3_8 = L3_8 * 400
  L3_8 = L2_7 + L3_8
  if GetDistSquared(L2_7, L1_6) > GetDistSquared(L3_8, L1_6) then
    River.Dir = River.Dir * -1
  end
end
function StopAI()
  Event("WanderPause")
  Event("SkittishPause")
  SetStateAndMove(AI_MOVE, GetMyPos())
end
function StartAI()
  Event("WanderResume")
  Event("SkittishResume")
  SetStateAndMove(AI_MOVE, GetWaypoint())
end
function StopLeashing()
  StopAI()
end
function StartLeashing()
  StartAI()
end
