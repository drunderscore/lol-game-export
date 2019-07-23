local L0_0, L2_1
L0_0 = {}
L0_0.x = 0
L0_0.y = 0
L0_0.z = 0
L2_1 = 0
AI_MOVE = 0
AI_STOP = 1
function UpdatePriority(A0_2)
  local L1_3
  A0_2.Priority = 0.001
end
function BeginTask(A0_4)
  TurnOffAutoAttack(STOPREASON_TARGET_LOST)
end
function Tick(A0_5)
  if _UPVALUE0_ < GetTime() then
    _UPVALUE0_ = GetTime() + GetRandomIntInRangeLua(2, 4)
    _UPVALUE1_ = MakeWanderPoint(GetPos(), 250)
  end
  if GetState() == AI_MOVE and GetDist(_UPVALUE1_, GetPos()) < 80 then
    StopMove()
    SetState(AI_STOP)
  end
  if GetState() == AI_STOP and GetDist(_UPVALUE1_, GetPos()) >= 80 then
    SetStateAndMove(AI_MOVE, _UPVALUE1_)
  end
end
function OnTargetLost(A0_6)
  local L1_7
end
