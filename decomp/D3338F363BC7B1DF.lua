RUN_IN_FEAR = 2
HOSTILE = 1
INACTIVE = 0
DefaultCharmBehavior = {TimerCallbackName = "TimerCharm"}
RegisterForEvent("ComponentInit", DefaultCharmBehavior)
RegisterForEvent("OnCharmBegin", DefaultCharmBehavior)
RegisterForEvent("OnCharmEnd", DefaultCharmBehavior)
RegisterForEvent("ComponentHalt", DefaultCharmBehavior)
function DefaultCharmBehavior.ComponentInit(A0_0)
  InitTimer(A0_0.TimerCallbackName, 0.2, true)
  StopTimer(A0_0.TimerCallbackName)
end
function DefaultCharmBehavior.ComponentHalt(A0_1)
  StopTimer(A0_1.TimerCallbackName)
end
function DefaultCharmBehavior.OnCharmBegin(A0_2)
  if GetState() == AI_HALTED then
    return
  end
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
  end
  SetRoamState(HOSTILE)
  TurnOffAutoAttack(STOPREASON_MOVING)
  ResetAndStartTimer(A0_2.TimerCallbackName)
end
function DefaultCharmBehavior.OnCharmEnd(A0_3)
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
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    SetStateAndCloseToTarget(AI_ATTACK, charmTarget)
  end
end
function TimerCharm()
  if GetState() == AI_HALTED then
    return
  end
  SetRoamState(HOSTILE)
  charmTarget = GetCharmTarget()
  if charmTarget ~= nil then
    charmPosition = GetPos(charmTarget)
    SetStateAndMove(AI_CHARMED, charmPosition)
  end
end
return DefaultCharmBehavior
