WanderAlongPath = {
  TimerCallbackName = "TimerWander"
}
RegisterForEvent("ComponentInit", WanderAlongPath)
RegisterForEvent("ComponentStart", WanderAlongPath)
RegisterForEvent("WanderPause", WanderAlongPath)
RegisterForEvent("WanderResume", WanderAlongPath)
RegisterForEvent("ComponentHalt", WanderAlongPath)
function WanderAlongPath.ComponentInit(A0_0)
  InitTimer(A0_0.TimerCallbackName, 0.25, true)
  WanderAlongPath:ComponentStart()
end
function WanderAlongPath.ComponentStart(A0_1)
  ResetAndStartTimer(A0_1.TimerCallbackName)
end
function WanderAlongPath.WanderPause(A0_2)
  StopTimer(A0_2.TimerCallbackName)
end
function WanderAlongPath.WanderResume(A0_3)
  ResetAndStartTimer(A0_3.TimerCallbackName)
  TurnOffAutoAttack(STOPREASON_MOVING)
end
function WanderAlongPath.ComponentHalt(A0_4)
  StopTimer(A0_4.TimerCallbackName)
end
function TimerWander()
  if GetState() == AI_HALTED then
    return
  end
  SetStateAndMove(AI_MOVE, GetWaypoint())
  if GetDist(GetMyPos(), GetWaypoint()) < 300 then
    IncrementWaypoint()
  end
end
