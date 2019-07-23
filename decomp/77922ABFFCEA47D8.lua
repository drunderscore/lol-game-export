WanderAndGraze = {
  TimerCallbackName = "TimerWander"
}
WanderingStateName = "Wandering"
GrazingStateName = "Grazing"
AIMode = WanderingStateName
Enabled = false
RegisterForEvent("ComponentInit", WanderAndGraze)
RegisterForEvent("ComponentStart", WanderAndGraze)
RegisterForEvent("WanderPause", WanderAndGraze)
RegisterForEvent("WanderResume", WanderAndGraze)
RegisterForEvent("ComponentHalt", WanderAndGraze)
RegisterForEvent("GrazeStart", WanderAndGraze)
RegisterForEvent("GrazeStop", WanderAndGraze)
function WanderAndGraze.ComponentInit(A0_0)
  InitTimer(A0_0.TimerCallbackName, 0.25, true)
  A0_0.Enabled = true
  WanderAndGraze:ComponentStart()
end
function WanderAndGraze.ComponentStart(A0_1)
  ResetAndStartTimer(A0_1.TimerCallbackName)
end
function WanderAndGraze.WanderPause(A0_2)
  StopTimer(A0_2.TimerCallbackName)
  AIMode = WanderingStateName
  A0_2.Enabled = false
end
function WanderAndGraze.WanderResume(A0_3)
  ResetAndStartTimer(A0_3.TimerCallbackName)
  TurnOffAutoAttack(STOPREASON_MOVING)
  AIMode = WanderingStateName
  A0_3.Enabled = true
end
function WanderAndGraze.GrazeStart(A0_4)
  local L1_5
  L1_5 = GrazingStateName
  AIMode = L1_5
  L1_5 = GetDistXZ
  L1_5 = L1_5(GetMyPos(), GetOrderPosition())
  if L1_5 > 250 then
    L1_5 = ServerCastSpellOnPos
    L1_5(0, GetOrderPosition())
  end
end
function WanderAndGraze.GrazeStop(A0_6)
  AIMode = WanderingStateName
end
function WanderAndGraze.ComponentHalt(A0_7)
  StopTimer(A0_7.TimerCallbackName)
end
function TimerWander()
  if GetState() == AI_HALTED then
    return
  end
  if AIMode == "Wandering" then
    SetStateAndMove(AI_MOVE, GetWaypoint())
    if GetDist(GetMyPos(), GetWaypoint()) < 400 then
      IncrementWaypoint()
    end
  end
end
function FoundFood()
  Event("GrazeStart")
end
function StopEating()
  Event("GrazeStop")
end
