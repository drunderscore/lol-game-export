local L0_0, L1_1
L0_0 = 0.5
DELAY_FIND_ENEMIES = L0_0
function L0_0()
  SetState(AI_IDLE)
  InitTimer("Update", 0.15, true)
  Active = true
  SearchForTargets = false
  SearchIgnoresAzirMovement = false
  InitTimer("TimerFindEnemies", DELAY_FIND_ENEMIES, false)
  return false
end
OnInit = L0_0
function L0_0()
  local L1_2
  L1_2 = true
  SearchForTargets = L1_2
end
TimerFindEnemies = L0_0
function L0_0(A0_3, A1_4, A2_5)
  local L3_6
  L3_6 = GetState
  L3_6 = L3_6()
  if L3_6 == AI_HALTED then
    L3_6 = true
    return L3_6
  end
  L3_6 = ORDER_PETHARDATTACK
  if A0_3 == L3_6 then
    L3_6 = Active
    if L3_6 == false then
      L3_6 = true
      Active = L3_6
      L3_6 = GetGoldRedirectTarget
      L3_6 = L3_6()
      IssueOrder(L3_6, ORDER_PETHARDATTACK, GetPos(L3_6), L3_6)
    end
  else
    L3_6 = ORDER_PETHARDRETURN
    if A0_3 == L3_6 then
      L3_6 = false
      Active = L3_6
    else
      L3_6 = ORDER_MOVETO
      if A0_3 == L3_6 then
        L3_6 = true
        SearchForTargets = L3_6
        L3_6 = false
        SearchIgnoresAzirMovement = L3_6
      else
        L3_6 = ORDER_ATTACKMOVE
        if A0_3 == L3_6 then
          L3_6 = true
          SearchForTargets = L3_6
          L3_6 = true
          SearchIgnoresAzirMovement = L3_6
          L3_6 = Update
          L3_6()
        else
          L3_6 = ORDER_HOLD
          if A0_3 == L3_6 then
            L3_6 = false
            SearchForTargets = L3_6
            L3_6 = false
            SearchIgnoresAzirMovement = L3_6
          else
            L3_6 = ORDER_STOP
            if A0_3 == L3_6 then
              L3_6 = false
              SearchForTargets = L3_6
              L3_6 = false
              SearchIgnoresAzirMovement = L3_6
            else
              L3_6 = ORDER_CASTSPELL
              if A0_3 == L3_6 then
                L3_6 = false
                SearchForTargets = L3_6
                L3_6 = false
                SearchIgnoresAzirMovement = L3_6
                L3_6 = Active
                if L3_6 == true then
                  L3_6 = TurnOnAutoAttack
                  L3_6(A1_4, true)
                end
              end
            end
          end
        end
      end
    end
  end
  L3_6 = true
  return L3_6
end
OnOrder = L0_0
function L0_0()
  local L0_7
  L0_7 = GetGoldRedirectTarget
  L0_7 = L0_7()
  if L0_7 == nil then
    Die(me)
    return
  end
  if Active == false then
    return
  end
  if SearchForTargets == true and (SearchIgnoresAzirMovement == true or TargetIsMoving(L0_7) == false and TargetIsAutoAcquireTargetEnabled(L0_7)) and FindTargetInAcR() ~= nil then
    IssueOrder(L0_7, ORDER_PETHARDMOVE, GetPos(L0_7))
  end
end
Update = L0_0
function L0_0()
  StopTimer("Update")
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  NetSetState(AI_HALTED)
end
HaltAI = L0_0
