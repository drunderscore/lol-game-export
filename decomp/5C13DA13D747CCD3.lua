local L0_0, L1_1
L0_0 = 5625
MIN_FOLLOW_DIST_SQ = L0_0
L0_0 = 500
MAX_DIST_TO_LANE = L0_0
L0_0 = 22500
MIN_FIGHT_DIST_SQ = L0_0
L0_0 = 90000
MAX_FIGHT_DIST_SQ = L0_0
L0_0 = false
allBarracksStarted = L0_0
function L0_0(A0_2)
  local L1_3, L2_4, L3_5
  L1_3 = GetMinions
  L2_4 = GetTeam
  L2_4 = L2_4()
  L3_5 = A0_2.LaneID
  L1_3 = L1_3(L2_4, L3_5)
  L2_4 = GetMaxTravelDistSquared
  L2_4 = L2_4()
  L3_5 = nil
  for _FORV_7_ = 1, #L1_3 do
    if GetMinionDistanceToLane(L1_3[_FORV_7_]) < MAX_DIST_TO_LANE and GetDistSquared(GetPos(), GetPos(L1_3[_FORV_7_])) > MIN_FOLLOW_DIST_SQ and L2_4 > GetDistSquared(GetPos(), GetPos(L1_3[_FORV_7_])) then
      L2_4 = GetDistSquared(GetPos(), GetPos(L1_3[_FORV_7_]))
      L3_5 = L1_3[_FORV_7_]
    end
  end
  return L3_5, L2_4
end
FindNearestFriendlyMinion = L0_0
function L0_0(A0_6)
  local L1_7, L2_8, L3_9, L4_10, L5_11, L6_12
  L1_7 = 0.3
  L2_8 = allBarracksStarted
  if not L2_8 then
    L2_8 = GetAreAllBarracksStarted
    L3_9 = GetTeam
    L3_9 = L3_9()
    L2_8 = L2_8(L3_9, L4_10, L5_11, L6_12, L3_9())
    allBarracksStarted = L2_8
  end
  L2_8 = allBarracksStarted
  if L2_8 then
    L2_8 = 0
    L3_9 = GetHeroes
    L3_9 = L3_9(L4_10, L5_11, L6_12, L4_10())
    for _FORV_7_ = 1, #L3_9 do
      if GetActiveTaskName(L3_9[_FORV_7_]) == A0_6.Name then
        L2_8 = L2_8 + 1
      end
    end
    if L5_11 == L6_12 then
      L2_8 = L2_8 - 1
    end
    if L6_12 > 0 then
    end
    if L6_12 then
      A0_6.Priority = L1_7 * (1 - GetDist(GetPos(L6_12), GetPos()) / math.sqrt(GetMaxTravelDistSquared())) * 0.2 + 0.24 + L5_11 + L4_10 + GetRandomFloatLua() * 0.03
    else
      A0_6.Priority = 0
    end
  else
    A0_6.Priority = 0
  end
end
UpdatePriority = L0_0
function L0_0(A0_13)
  local L1_14
  L1_14 = A0_13.FindNearestFriendlyMinion
  L1_14 = L1_14(A0_13)
  if L1_14 then
    SetStateAndMove(AI_SOFTATTACK, GetPos(L1_14))
  end
end
FollowClosestMinion = L0_0
function L0_0(A0_15)
  TurnOffAutoAttack(STOPREASON_TARGET_LOST)
  A0_15:FollowClosestMinion()
end
BeginTask = L0_0
function L0_0(A0_16, A1_17)
  return GetMinionDistanceToLane(A1_17) < MAX_DIST_TO_LANE
end
IsMinionCloseToLane = L0_0
function L0_0(A0_18)
  if not IsMoving() and A0_18:FindNearestFriendlyMinion() > MAX_FIGHT_DIST_SQ then
    A0_18:FollowClosestMinion()
  elseif IsMoving() and A0_18:FindNearestFriendlyMinion() < MIN_FIGHT_DIST_SQ then
    StopMove()
  end
end
Tick = L0_0
function L0_0(A0_19)
  local L1_20
end
OnTargetLost = L0_0
