require("os")
DataLoggingCategories = {
  NidaleeSpear = {
    Creator = "bill.clark",
    Expiration = os.time({
      month = 9,
      day = 30,
      year = 2014
    }),
    AccumulateVariables = {
      "SpearThrows",
      "SpearChampHits"
    },
    SampleVariables = {
      "SpearAngle",
      "SpearHit",
      "SpearHitChampion"
    }
  },
  NewKlepto = {
    Creator = "khuang",
    Expiration = os.time({
      month = 1,
      day = 30,
      year = 2019
    }),
    SampleVariables = {
      "TotalGameTime",
      "KleptoFirstUsed",
      "KleptoSecondUsed"
    }
  },
  KaisaEvolve = {
    Creator = "jsidhu",
    Expiration = os.time({
      month = 6,
      day = 13,
      year = 2018
    }),
    AccumulateVariables = {
      "FirstQEvolveTime",
      "FirstWEvolveTime",
      "FirstEEvolveTime"
    }
  },
  TowerDamageTakenFromSources = {
    Creator = "bsalvatore",
    Expiration = os.time({
      month = 10,
      day = 18,
      year = 2017
    }),
    SampleVariables = {
      "TowerRank",
      "Lane",
      "DamageFromMinions",
      "DamageFromChampionsMelee",
      "DamageFromChampionsRangedMagic",
      "DamageFromChampionsRangedPhysical",
      "DamageFromOtherSources"
    }
  },
  TimeToLiveData = {
    Creator = "eshiue",
    Expiration = os.time({
      month = 1,
      day = 1,
      year = 2018
    }),
    SampleVariables = {
      "GameTime",
      "AverageLVL",
      "EnemiesNearby",
      "AlliesNearby",
      "TimeSince50",
      "TimeSince25",
      "TimeSince10",
      "KilledArmor",
      "KilledMR",
      "KilledHealth",
      "KilledLevel",
      "KilledTimeAlive",
      "KilledSummID",
      "KillerSummID1",
      "KillerSummID2",
      "KillerSummID3",
      "KillerSummID4",
      "KillerSummID5"
    }
  },
  SupportQuestCompletionData = {
    Creator = "eshiue",
    Expiration = os.time({
      month = 4,
      day = 1,
      year = 2018
    }),
    SampleVariables = {
      "GameTime",
      "SummID",
      "ItemID",
      "Efficacy",
      "Efficacy2",
      "OpponentsItemID"
    }
  },
  SupportGoldItemData = {
    Creator = "eshiue",
    Expiration = os.time({
      month = 4,
      day = 1,
      year = 2018
    }),
    SampleVariables = {
      "GameTime",
      "SummID",
      "ItemID",
      "MechanicGold",
      "BanditHarassGold",
      "BanditMinionGold"
    }
  },
  FlashData = {
    Creator = "jfrank",
    Expiration = os.time({
      month = 1,
      day = 10,
      year = 2020
    }),
    SampleVariables = {
      "FlashDistance"
    }
  },
  IntroBotForceBuyData = {
    Creator = "jmurphy",
    Expiration = os.time({
      month = 4,
      day = 1,
      year = 2019
    }),
    SampleVariables = {
      "ProtectionActivated",
      "NumberofTimesActivates",
      "ArrowActivated",
      "NumberofTimesArrowActivated"
    }
  },
  SLIMEEventsData = {
    Creator = "ltang",
    Expiration = os.time({
      month = 10,
      day = 18,
      year = 2019
    }),
    AccumulateVariables = {
      "EventType1",
      "RewardType1",
      "WinningTeam1",
      "StartTime1",
      "EndTime1",
      "GoldDifferentialStart1",
      "GoldDifferentialEnd1",
      "EventType2",
      "RewardType2",
      "WinningTeam2",
      "StartTime2",
      "EndTime2",
      "GoldDifferentialStart2",
      "GoldDifferentialEnd2",
      "EventType3",
      "RewardType3",
      "WinningTeam3",
      "StartTime3",
      "EndTime3",
      "GoldDifferentialStart3",
      "GoldDifferentialEnd3",
      "EventType4",
      "RewardType4",
      "WinningTeam4",
      "StartTime4",
      "EndTime4",
      "GoldDifferentialStart4",
      "GoldDifferentialEnd4"
    }
  }
}
DataLoggingErroredCategories = {}
function DataLoggingCategoryError(A0_0, A1_1)
  if DataLoggingErroredCategories[A0_0] == nil then
    DataLoggingErroredCategories[A0_0] = 1
    DebugPrintToChat("DataLogging category " .. A0_0 .. ": " .. A1_1)
  end
end
function GetDataLoggingCategory(A0_2)
  local L1_3
  L1_3 = DataLoggingCategories
  L1_3 = L1_3[A0_2]
  if L1_3 ~= nil then
    L1_3.Name = A0_2
    if L1_3.Expiration == nil or os.time() > L1_3.Expiration then
      DataLoggingCategoryError(A0_2, "Expired Category owned by " .. L1_3.Creator)
      L1_3 = nil
    end
  else
    DataLoggingCategoryError(A0_2, "Missing Category")
  end
  return L1_3
end
function GetDataLoggingCategoryValueNames(A0_4, A1_5, A2_6)
  local L3_7, L4_8, L5_9, L6_10, L7_11, L8_12, L9_13, L10_14, L11_15
  L3_7 = {}
  if L4_8 ~= nil then
    for L7_11, L8_12 in L4_8(L5_9) do
      if A1_5 > L9_13 then
        L3_7[L9_13] = L8_12
      else
        L10_14 = A0_4.Name
        L11_15 = "Too many variables"
        L9_13(L10_14, L11_15)
      end
    end
  end
  if L5_9 ~= nil then
    L3_7.SampleStartIndex = L7_11
    L3_7.SampleValueCount = L6_10
    while A2_6 > L4_8 do
      if A1_5 > L7_11 then
        for L10_14, L11_15 in L7_11(L8_12) do
          L3_7[#L3_7 + 1] = GetDataLoggingSampleVariableName(L11_15, L4_8)
        end
      end
    end
    if L4_8 == 0 then
      L7_11(L8_12, L9_13)
    end
  end
  L3_7.SampleCount = L4_8
  return L3_7
end
function GetDataLoggingSampleValueNames(A0_16, A1_17)
  local L2_18, L3_19, L4_20, L5_21, L6_22, L7_23
  L2_18 = {}
  if L3_19 ~= nil then
    for L6_22, L7_23 in L3_19(L4_20) do
      L2_18[#L2_18 + 1] = GetDataLoggingSampleVariableName(L7_23, A1_17)
    end
  end
  return L2_18
end
DataLoggingConstructedVariableNames = {}
function GetDataLoggingSampleVariableName(A0_24, A1_25)
  if DataLoggingConstructedVariableNames[A0_24 .. tostring(A1_25)] == nil then
    DataLoggingConstructedVariableNames[A0_24 .. tostring(A1_25)] = A0_24 .. tostring(A1_25)
  end
  return DataLoggingConstructedVariableNames[A0_24 .. tostring(A1_25)]
end
