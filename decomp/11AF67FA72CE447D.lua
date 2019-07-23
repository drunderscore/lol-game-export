MIN_FIGHT_DIST = GetAttackRange() + 200
MIN_FIGHT_DIST_SQ = MIN_FIGHT_DIST * MIN_FIGHT_DIST
MIN_ENGAGE_DIST = GetAttackRange() + 800
MIN_ENGAGE_DIST_SQ = MIN_ENGAGE_DIST * MIN_ENGAGE_DIST
AI_ATTACK = 0
AI_FOLLOW = 1
function FindNearestTower(A0_0)
  local L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
  L1_1 = GetStructures
  L2_2 = GetOtherTeam
  L8_8 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
  L2_2 = nil
  L3_3 = GetMaxTravelDistSquared
  L3_3 = L3_3()
  for L7_7 = 1, #L1_1 do
    L8_8 = GetObject
    L8_8 = L8_8(L1_1[L7_7])
    if not IsDead(L8_8) and GetDistSquared(GetPos(L8_8), GetPos()) < MIN_ENGAGE_DIST_SQ and L3_3 > GetDistSquared(GetPos(L8_8), GetPos()) then
      L3_3, L2_2 = GetDistSquared(GetPos(L8_8), GetPos()), L8_8
    end
  end
  return L2_2
end
function UpdatePriority(A0_9)
  local L1_10
  A0_9.Priority = 0
  L1_10 = A0_9.FindNearestTower
  L1_10 = L1_10(A0_9)
  if L1_10 then
    if GetHP(L1_10) / GetMaxHP(L1_10) < 0.2 then
      A0_9.Priority = 1 - GetHP(L1_10) / GetMaxHP(L1_10)
    else
      A0_9.Priority = 0.4
    end
  end
end
function BeginTask(A0_11)
  TurnOffAutoAttack(STOPREASON_TARGET_LOST)
end
function OnTargetLost(A0_12)
  local L1_13
end
function Tick(A0_14)
  local L1_15, L2_16, L3_17
  L1_15 = GetState
  L1_15 = L1_15()
  L3_17 = A0_14
  L2_16 = A0_14.FindNearestTower
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
