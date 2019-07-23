MIN_FIGHT_DIST = GetAttackRange() + 50
MIN_FIGHT_DIST_SQ = MIN_FIGHT_DIST * MIN_FIGHT_DIST
MIN_ENGAGE_DIST = GetAttackRange() + 500
MIN_ENGAGE_DIST_SQ = MIN_ENGAGE_DIST * MIN_ENGAGE_DIST
AI_ATTACK = 0
AI_FOLLOW = 1
function FindNearLowestHPMinion(A0_0)
  local L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
  L1_1 = GetMinions
  L2_2 = GetOtherTeam
  L2_2 = L2_2()
  L3_3 = -1
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = 10000
  L3_3 = nil
  for L7_7 = 1, #L1_1 do
    L8_8 = L1_1[L7_7]
    if GetDistSquared(GetPos(), GetPos(L8_8)) <= MIN_ENGAGE_DIST_SQ and not IsDead(L8_8) and L2_2 > GetHP(L8_8) then
      L3_3 = L8_8
      L2_2 = GetHP(L8_8)
    end
  end
  if L3_3 then
    L7_7 = L3_3
    L8_8 = L6_6(L7_7)
    L7_7 = "Dist: "
    L8_8 = L4_4
    L7_7 = L7_7 .. L8_8
    L8_8 = 0
    L5_5(L6_6, L7_7, L8_8)
  end
  return L3_3
end
function UpdatePriority(A0_9)
  A0_9.Priority = 0
  if A0_9:FindNearLowestHPMinion() then
    A0_9.Priority = 0.45
  end
end
function BeginTask(A0_10)
  local L1_11
  L1_11 = TurnOffAutoAttack
  L1_11(STOPREASON_TARGET_LOST)
  L1_11 = A0_10.FindNearLowestHPMinion
  L1_11 = L1_11(A0_10)
  if L1_11 then
    SetStateAndCloseToTarget(AI_ATTACK, L1_11)
  end
end
function OnTargetLost(A0_12)
  local L1_13
end
function Tick(A0_14)
  local L1_15, L2_16, L3_17
  L1_15 = GetState
  L1_15 = L1_15()
  L3_17 = A0_14
  L2_16 = A0_14.FindNearLowestHPMinion
  L2_16 = L2_16(L3_17)
  if L2_16 then
    L3_17 = GetPos
    L3_17 = L3_17(L2_16)
    if L1_15 == AI_FOLLOW then
      if GetDistSquared(GetPos(), L3_17) < MIN_FIGHT_DIST_SQ then
        SetStateAndCloseToTarget(AI_ATTACK, L2_16)
      else
        SetStateAndMove(AI_FOLLOW, L3_17)
      end
    elseif L1_15 == AI_ATTACK then
      if TargetInAttackRange() then
        TurnOnAutoAttack(L2_16)
      else
        TurnOffAutoAttack(STOPREASON_MOVING)
        SetStateAndMove(AI_FOLLOW, L3_17)
      end
    end
  end
end
