DefaultTauntBehavior = {}
RegisterForEvent("OnTauntBegin", DefaultTauntBehavior)
RegisterForEvent("OnTauntEnd", DefaultTauntBehavior)
function DefaultTauntBehavior.OnTauntBegin(A0_0)
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    OutOfCombatRegen.Stop()
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    SetRoamState(HOSTILE)
  end
end
function DefaultTauntBehavior.OnTauntEnd(A0_1)
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    OutOfCombatRegen.Stop()
    SetStateAndCloseToTarget(AI_ATTACK, tauntTarget)
    SetRoamState(HOSTILE)
  else
    NetSetState(AI_ATTACK)
    TimerRetreat()
    TimerAttack()
  end
end
function TimerTaunt()
  if GetState() == AI_HALTED then
    return
  end
  tauntTarget = GetTauntTarget()
  if tauntTarget ~= nil and GetState() ~= AI_FEARED then
    OutOfCombatRegen.Stop()
    SetStateAndCloseToTarget(AI_TAUNTED, tauntTarget)
    SetRoamState(HOSTILE)
  end
end
return DefaultTauntBehavior
