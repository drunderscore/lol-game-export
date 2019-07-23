HOSTILE = 1
INACTIVE = 0
DefaultFleeBehavior = {TimerCallbackName = "TimerFlee"}
RegisterForEvent("ComponentInit", DefaultFleeBehavior)
RegisterForEvent("OnFleeBegin", DefaultFleeBehavior)
RegisterForEvent("OnFleeEnd", DefaultFleeBehavior)
RegisterForEvent("ComponentHalt", DefaultFleeBehavior)
function DefaultFleeBehavior.ComponentInit(A0_0)
  InitTimer(A0_0.TimerCallbackName, 0.5, true)
  StopTimer(A0_0.TimerCallbackName)
end
function DefaultFleeBehavior.ComponentHalt(A0_1)
  StopTimer(A0_1.TimerCallbackName)
end
function DefaultFleeBehavior.OnFleeBegin(A0_2)
  if GetState() == AI_HALTED then
    return
  end
  Event("FleeBegin")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  ResetAndStartTimer(A0_2.TimerCallbackName)
end
function DefaultFleeBehavior.OnFleeEnd(A0_3)
  if GetState() == AI_HALTED then
    return
  end
  StopTimer(A0_3.TimerCallbackName)
  SetRoamState(HOSTILE)
  NetSetState(AI_ATTACK)
  if TimerRetreat ~= nil then
    TimerRetreat()
  end
  if TimerAttack ~= nil then
    TimerAttack()
  end
  Event("FleeEnd")
end
function TimerFlee()
  if GetState() == AI_HALTED then
    return
  end
  Event("FleeTimer")
end
return DefaultFleeBehavior
