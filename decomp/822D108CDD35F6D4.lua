local L0_0
L0_0 = 500
MIN_DIST_TO_SHOP = L0_0
L0_0 = 0
AI_MOVE = L0_0
L0_0 = 1
AI_SHOP = L0_0
L0_0 = {
  1001,
  2003,
  1006,
  1042,
  1028,
  1029
}
ITEMS_TO_BUY = L0_0
L0_0 = 1
BUY_INDEX = L0_0
function L0_0(A0_1)
  local L1_2
  L1_2 = BUY_INDEX
  L1_2 = L1_2 + 1
  BUY_INDEX = L1_2
  L1_2 = BUY_INDEX
  if L1_2 > 6 then
    L1_2 = 1
    BUY_INDEX = L1_2
  end
end
ChangeItemToBuy = L0_0
function L0_0(A0_3)
  return ITEMS_TO_BUY[BUY_INDEX]
end
GetNextItemToBuy = L0_0
function L0_0(A0_4)
  local L1_5, L2_6, L3_7, L4_8
  L1_5 = A0_4.ItemToBuy
  if L1_5 == nil then
    L1_5 = GetNextItemToBuy
    L1_5 = L1_5()
    A0_4.ItemToBuy = L1_5
  end
  L1_5 = GetNumInvSlotsAvailable
  L1_5 = L1_5()
  if L1_5 < 1 then
    A0_4.Priority = 0
    return
  end
  L1_5 = GetGold
  L1_5 = L1_5()
  L2_6 = GetItemPrice
  L3_7 = A0_4.ItemToBuy
  L2_6 = L2_6(L3_7)
  L3_7 = 1
  L4_8 = GetRegroupPos
  L4_8 = L4_8()
  if L1_5 < L2_6 then
    A0_4.Priority = 0
  elseif L1_5 >= L2_6 then
    if L1_5 > 2 * L2_6 then
      L3_7 = 1.1
    end
    if GetDist(L4_8, GetPos()) < 3000 then
      A0_4.Priority = 0.8 * L3_7
    elseif GetDist(L4_8, GetPos()) > 3000 and GetDist(L4_8, GetPos()) < 6000 then
      A0_4.Priority = 6000 / GetDist(L4_8, GetPos()) * 0.2 * L3_7
    else
      A0_4.Priority = 0.2 * L3_7
    end
  end
  if A0_4.Priority > 0.9 then
    A0_4.Priority = 0.9
  end
  if GetItemPrice(A0_4.ItemToBuy) == 0 then
    A0_4.Priority = 0
    A0_4.ItemToBuy = nil
  end
end
UpdatePriority = L0_0
function L0_0(A0_9)
  TurnOffAutoAttack(STOPREASON_IMMEDIATELY)
  SetState(AI_SHOP)
end
BeginTask = L0_0
function L0_0(A0_10)
  local L1_11
  L1_11 = GetRegroupPos
  L1_11 = L1_11()
  if GetState() == AI_SHOP and GetDist(L1_11, GetPos()) > MIN_DIST_TO_SHOP then
    SetStateAndMove(AI_MOVE, L1_11)
  end
  if GetDist(L1_11, GetPos()) <= MIN_DIST_TO_SHOP then
    if GetState() == AI_MOVE then
      StopMove()
      SetState(AI_SHOP)
    end
    if GetGold() > GetItemPrice(A0_10.ItemToBuy) then
      BuyItem(A0_10.ItemToBuy)
      A0_10:ChangeItemToBuy()
      A0_10.ItemToBuy = GetNextItemToBuy()
      A0_10:UpdatePriority()
    end
  end
end
Tick = L0_0
function L0_0(A0_12)
  local L1_13
end
OnTargetLost = L0_0
