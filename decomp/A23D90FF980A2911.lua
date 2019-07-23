NonAggressiveTauntBehavior = {}
RegisterForEvent("ComponentInit", NonAggressiveTauntBehavior)
RegisterForEvent("OnTauntBegin", NonAggressiveTauntBehavior)
RegisterForEvent("OnTauntEnd", NonAggressiveTauntBehavior)
function NonAggressiveTauntBehavior.ComponentInit(A0_0)
  InitTimer("TimerTaunt", 0.25, true)
  StopTimer("TimerTaunt")
end
function NonAggressiveTauntBehavior.OnTauntBegin(A0_1)
  TimerTaunt()
  ResetAndStartTimer("TimerTaunt")
  Event("WanderPause")
  Event("SkittishPause")
  SetStateAndMove(AI_MOVE, GetMyPos())
end
function NonAggressiveTauntBehavior.OnTauntEnd(A0_2)
  if GetState() == AI_HALTED then
    return
  end
  StopTimer("TimerTaunt")
  Event("WanderResume")
  Event("SkittishResume")
  SetStateAndMove(AI_MOVE, GetWaypoint())
end
function TimerTaunt()
  if GetState() == AI_HALTED then
    return
  end
  Event("WanderPause")
  ClearTarget()
  StopMove()
end
return NonAggressiveTauntBehavior
