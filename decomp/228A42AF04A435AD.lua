HERO_FIGHT_DIST = GetAttackRange()
HERO_ENGAGE_DIST = GetAttackRange() + 500
AI_FOLLOW_HERO = 0
AI_ATTACK_HERO = 1
TargetHealth = 0
ReducePriority = false
function UpdatePriority(A0_0)
  local L1_1
  A0_0.Priority = 0
  L1_1 = GetHeroes
  L1_1 = L1_1(GetOtherTeam())
  if #L1_1 >= A0_0.HeroIDIndex and not IsDead(L1_1[A0_0.HeroIDIndex]) then
    if math.max(GetDist(GetPos(), GetPos(L1_1[A0_0.HeroIDIndex])), 1) < HERO_ENGAGE_DIST then
      A0_0.Priority = 0.5
    elseif math.max(GetDist(GetPos(), GetPos(L1_1[A0_0.HeroIDIndex])), 1) < HERO_ENGAGE_DIST * 2 then
      A0_0.Priority = 0.5 * (1 - (math.max(GetDist(GetPos(), GetPos(L1_1[A0_0.HeroIDIndex])), 1) - HERO_ENGAGE_DIST) / HERO_ENGAGE_DIST)
    end
  end
end
function BeginTask(A0_2)
  local L1_3
  L1_3 = GetHeroes
  L1_3 = L1_3(GetOtherTeam())
  if #L1_3 >= A0_2.HeroIDIndex then
    TurnOffAutoAttack(STOPREASON_MOVING)
    SetStateAndCloseToTarget(AI_FOLLOW_HERO, L1_3[A0_2.HeroIDIndex])
    TargetHealth = GetTargetHealth()
    InitTimer("AntiKiteTimer", 2, true)
  end
end
function Tick(A0_4)
  if #GetHeroes(GetOtherTeam()) >= A0_4.HeroIDIndex then
    if GetState() == AI_FOLLOW_HERO then
      if GetDist(GetPos(), GetPos(GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])) < HERO_FIGHT_DIST then
        SetStateAndCloseToTarget(AI_ATTACK_HERO, GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])
      else
        SetStateAndCloseToTarget(AI_FOLLOW_HERO, GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])
      end
    elseif GetState() == AI_ATTACK_HERO then
      if GetDist(GetPos(), GetPos(GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])) < HERO_FIGHT_DIST then
        TurnOnAutoAttack(GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])
      else
        TurnOffAutoAttack(STOPREASON_MOVING)
        SetStateAndCloseToTarget(AI_FOLLOW_HERO, GetHeroes(GetOtherTeam())[A0_4.HeroIDIndex])
      end
    end
  end
end
function AntiKiteTimer(A0_5)
  if GetTargetHealth() >= TargetHealth - 10 and IsMoving() then
    ReducePriority = true
    TargetHealth = GetTargetHealth()
    return
  end
  if ReducePriority == true then
    ReducePriority = false
    TargetHealth = GetTargetHealth()
    return
  end
  TargetHealth = GetTargetHealth()
end
function OnTargetLost(A0_6)
  local L1_7
end
