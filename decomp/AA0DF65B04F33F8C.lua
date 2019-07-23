local L0_0, L1_1
L0_0 = 22500
MIN_FIGHT_DIST_SQ = L0_0
L0_0 = 562500
MAX_FIGHT_DIST_SQ = L0_0
L0_0 = 0
AI_MOVE = L0_0
L0_0 = 1
AI_ATTACK = L0_0
function L0_0(A0_2)
  local L1_3
  L1_3 = GetObject
  L1_3 = L1_3(A0_2.StructureID)
  if L1_3 == nil then
    A0_2.Done = true
    A0_2.Priority = 0
    return
  end
  if 0 <= GetTime() - GetLastTookDamageTime(L1_3) and 20 >= GetTime() - GetLastTookDamageTime(L1_3) then
    if GetDist(GetPos(), GetPos(L1_3)) * GetDist(GetPos(), GetPos(L1_3)) < MAX_FIGHT_DIST_SQ then
    else
    end
    A0_2.Priority = 0 * ((math.sqrt(GetMaxTravelDistSquared()) - GetDist(GetPos(), GetPos(L1_3))) / math.sqrt(GetMaxTravelDistSquared())) * (1 - (GetTime() - GetLastTookDamageTime(L1_3)) / 20)
  else
    A0_2.Priority = 0
  end
end
UpdatePriority = L0_0
function L0_0(A0_4)
  local L1_5
  L1_5 = GetObject
  L1_5 = L1_5(A0_4.StructureID)
  Say("BeginTask: Defend " .. objGetName(L1_5))
  TurnOffAutoAttack(STOPREASON_TARGET_LOST)
  SetStateAndMove(AI_MOVE, GetPos(L1_5))
end
BeginTask = L0_0
function L0_0(A0_6)
  local L1_7
  L1_7 = GetObject
  L1_7 = L1_7(A0_6.StructureID)
  if not IsMoving() and GetDistSquared(GetPos(L1_7), GetPos()) > MAX_FIGHT_DIST_SQ then
    SetStateAndMove(AI_MOVE, GetPos(L1_7))
  elseif IsMoving() and GetDistSquared(GetPos(L1_7), GetPos()) < MIN_FIGHT_DIST_SQ then
    StopMove()
  end
end
Tick = L0_0
function L0_0(A0_8)
  local L1_9
end
OnTargetLost = L0_0
