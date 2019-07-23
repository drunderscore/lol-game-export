DefaultFearBehavior = {
  TimerCallbackName = "TimerFeared"
}
RegisterForEvent("ComponentInit", DefaultFearBehavior)
RegisterForEvent("OnFearBegin", DefaultFearBehavior)
RegisterForEvent("OnFearEnd", DefaultFearBehavior)
RegisterForEvent("ComponentHalt", DefaultFearBehavior)
function DefaultFearBehavior.ComponentInit(A0_0)
  InitTimer(A0_0.TimerCallbackName, 0.5, true)
  StopTimer(A0_0.TimerCallbackName)
end
function DefaultFearBehavior.ComponentHalt(A0_1)
  StopTimer(A0_1.TimerCallbackName)
end
function DefaultFearBehavior.OnFearBegin(A0_2)
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetStateAndMove(AI_FEARED, wanderPoint)
  SetRoamState(RUN_IN_FEAR)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer(A0_2.TimerCallbackName)
end
function DefaultFearBehavior.OnFearEnd(A0_3)
  if GetState() == AI_HALTED then
    return
  end
  if GetThis() == nil then
    return
  end
  StopTimer(A0_3.TimerCallbackName)
  SetRoamState(HOSTILE)
  NetSetState(AI_ATTACK)
  TimerRetreat()
  TimerAttack()
end
function TimerFeared()
  if GetState() == AI_HALTED then
    return
  end
  wanderPoint = MakeWanderPoint(GetFearLeashPoint(), FEAR_WANDER_DISTANCE)
  SetRoamState(RUN_IN_FEAR)
  SetStateAndMove(AI_FEARED, wanderPoint)
end
