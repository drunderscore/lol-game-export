local L0_0, L1_1
L0_0 = 300
baseKillGold = L0_0
L0_0 = 2
minimumKillsForKillStreak = L0_0
L0_0 = 0.165
percentBonusPerKill = L0_0
L0_0 = 1.66667
maxPercentKillStreakBonus = L0_0
L0_0 = 2
minimumDeathsForDeathStreak = L0_0
L0_0 = 0.2
percentReductionPerDeath = L0_0
L0_0 = 0.1666667
minPercentDeathStreakPenalty = L0_0
L0_0 = 100
firstBloodBonus = L0_0
L0_0 = 90
assistMinTime = L0_0
L0_0 = 210
assistMaxTime = L0_0
L0_0 = 0.25
assistMinPercentage = L0_0
L0_0 = 0.5
assistMaxPercentage = L0_0
function L0_0(A0_2, A1_3, A2_4)
  local L3_5, L4_6, L5_7, L6_8
  L3_5 = baseKillGold
  L4_6 = A1_3 + 1
  L5_7 = 1
  L6_8 = minimumKillsForKillStreak
  if A0_2 >= L6_8 then
    L6_8 = math
    L6_8 = L6_8.pow
    L6_8 = L6_8(1 + percentBonusPerKill, 1 + A0_2 - minimumKillsForKillStreak)
    L5_7 = L5_7 * math.min(L6_8, maxPercentKillStreakBonus)
  else
    L6_8 = minimumDeathsForDeathStreak
    if L4_6 >= L6_8 then
      L6_8 = math
      L6_8 = L6_8.pow
      L6_8 = L6_8(1 - percentReductionPerDeath, 0.4 + L4_6 - minimumDeathsForDeathStreak)
      L5_7 = L5_7 * math.max(L6_8, minPercentDeathStreakPenalty)
    end
  end
  L3_5 = L3_5 * L5_7
  if A2_4 then
    L6_8 = firstBloodBonus
    L3_5 = L3_5 + L6_8
  end
  return L3_5
end
GetBounty = L0_0
function L0_0(A0_9)
  local L1_10, L2_11, L3_12
  L1_10 = assistMinTime
  if A0_9 < L1_10 then
    L1_10 = assistMinPercentage
    return L1_10
  else
    L1_10 = assistMaxTime
    if A0_9 > L1_10 then
      L1_10 = assistMaxPercentage
      return L1_10
    end
  end
  L1_10 = assistMinTime
  L1_10 = A0_9 - L1_10
  L2_11 = assistMaxTime
  L3_12 = assistMinTime
  L2_11 = L2_11 - L3_12
  L1_10 = L1_10 / L2_11
  ratio = L1_10
  L1_10 = ratio
  L2_11 = assistMaxPercentage
  L3_12 = assistMinPercentage
  L2_11 = L2_11 - L3_12
  L1_10 = L1_10 * L2_11
  L2_11 = assistMinPercentage
  L1_10 = L1_10 + L2_11
  return L1_10
end
GetGetAssistPercentageShare = L0_0
