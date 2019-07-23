local L0_0, L1_1
L0_0 = {}
function L1_1(A0_2)
  local L1_3, L2_4, L3_5
  L1_3 = 1
  L2_4 = 0.25
  L3_5 = GetRegroupPos
  L3_5 = L3_5()
  A0_2.Priority = L1_3 * (L2_4 * math.max(1 - GetDist(L3_5, GetPos()) / math.sqrt(GetMaxTravelDistSquared()), 0) + (1 - L2_4)) * 1
  for _FORV_13_, _FORV_14_ in pairs(_UPVALUE0_) do
    if _FORV_13_ < GetTime() - 2 then
      _UPVALUE0_[_FORV_13_] = nil
    elseif _FORV_13_ == GetTime() and _FORV_14_ > GetHP() then
      _UPVALUE0_[_FORV_13_] = _FORV_14_
    end
  end
  if not _UPVALUE0_[GetTime()] then
    _UPVALUE0_[GetTime()] = GetHP()
  end
  if _UPVALUE0_[GetTime() - 2] and _UPVALUE0_[GetTime() - 2] - GetHP() > 110 then
    A0_2.Priority = 1
  end
end
UpdatePriority = L1_1
function L1_1(A0_6)
  local L1_7
  L1_7 = TurnOffAutoAttack
  L1_7(STOPREASON_TARGET_LOST)
  L1_7 = GetRegroupPos
  L1_7 = L1_7()
  SetStateAndMove(0, L1_7)
end
BeginTask = L1_1
function L1_1(A0_8)
  local L1_9
end
Tick = L1_1
function L1_1(A0_10)
  local L1_11
end
OnTargetLost = L1_1
