UnitTags = {
  "Champion",
  "Champion_Clone",
  "Minion",
  "Minion_Lane",
  "Minion_Lane_Melee",
  "Minion_Lane_Ranged",
  "Minion_Lane_Siege",
  "Minion_Lane_Super",
  "Minion_Summon",
  "Minion_Summon_Large",
  "Monster",
  "Monster_Epic",
  "Monster_Large",
  "Monster_Medium",
  "Monster_Buff",
  "Special_TurretIgnores",
  "Special_AzirW",
  "Special_AzirR",
  "Special_CorkiBomb",
  "Special_YorickW",
  "Special_MonsterIgnores",
  "Special_EpicMonsterIgnores",
  "Special_Peaceful",
  "Special_AscXerath",
  "Special_PerksWormhole",
  "Special_UntargetableBySpells",
  "Special_SyndraSphere",
  "Special_TeleportTarget",
  "Special_TeleportPad",
  "Special_Trap",
  "Special_Tunnel",
  "Special_KPMinion",
  "Special_Void",
  "Structure",
  "Structure_Inhibitor",
  "Structure_Nexus",
  "Structure_Turret",
  "Structure_Turret_Outer",
  "Structure_Turret_Inner",
  "Structure_Turret_Inhib",
  "Structure_Turret_Nexus",
  "Structure_Turret_Shrine",
  "Ward",
  "Monster_Dragon",
  "Monster_Blue",
  "Monster_Red",
  "Monster_Crab",
  "Monster_Gromp",
  "Monster_Krug",
  "Monster_Raptor",
  "Monster_Wolf",
  "Monster_Camp",
  "Plant",
  "IsolationNonImpacting",
  "KingPoro",
  "Adventure_ChampionEnemy",
  "SLIME_WalkingNexus",
  "Ribeye_Structure_House"
}
RegionTags = {
  "GameplayArea",
  "AREA_Platform",
  "AREA_Base",
  "AREA_Lane_Top",
  "AREA_Lane_Mid",
  "AREA_Lane_Bot",
  "AREA_Jungle_Top",
  "AREA_Jungle_Bot",
  "AREA_River_Top",
  "AREA_River_Bot",
  "AREA_Jungle_Order_Near",
  "AREA_Jungle_Order_Far",
  "AREA_Jungle_Chaos_Near",
  "AREA_Jungle_Chaos_Far",
  "AREA_BasePerimeter_Top",
  "AREA_BasePerimeter_Bot",
  "AREA_Alcove_Top",
  "AREA_Alcove_Bot",
  "GameplayLane",
  "LANE_Top_Order",
  "LANE_Mid_Order",
  "LANE_Bot_Order",
  "LANE_Top_Chaos",
  "LANE_Mid_Chaos",
  "LANE_Bot_Chaos",
  "LANE_Neutral_Top_Order",
  "LANE_Neutral_Mid_Order",
  "LANE_Neutral_Bot_Order",
  "LANE_Neutral_Top_Chaos",
  "LANE_Neutral_Mid_Chaos",
  "LANE_Neutral_Bot_Chaos",
  "GameplayPOI",
  "POI_Near_Turret",
  "POI_Base_Gates",
  "POI_Pit_Baron",
  "POI_Pit_Dragon",
  "POI_Camp_Red",
  "POI_Camp_Blue",
  "POI_Camp_Gromp",
  "POI_Camp_Krugs",
  "POI_Camp_Razorbeaks",
  "POI_Camp_Murkwolves",
  "GameplayTurretLines",
  "Line_Order_Nexus",
  "Line_Order_Base",
  "Line_Order_Inner",
  "Line_Order_Outer",
  "Line_Order_River",
  "Line_Chaos_Nexus",
  "Line_Chaos_Base",
  "Line_Chaos_Inner",
  "Line_Chaos_Outer",
  "Line_Chaos_River"
}
SpellTags = {
  "PositiveEffect_MoveBlock",
  "PositiveEffect_Teleport",
  "PositiveEffect_EmpowerAttack",
  "PositiveEffect_Boon",
  "Trait_ChannelSpell",
  "Trait_Ultimate",
  "Trait_AttackReset",
  "Trait_UltimateReactivation",
  "Trait_SummonerFlash",
  "Trait_SummonerGhost",
  "Trait_SummonerSmite",
  "Trait_Recall",
  "Trait_Signature",
  "Trait_Biscuit",
  "Trait_Transformation",
  "Trait_SylasSpecialAttackOverride",
  "Trait_Upgrade",
  "Trait_Potion",
  "Trait_MultiTargetAttack",
  "Trait_Ammo",
  "Trait_NonPrimaryAttack",
  "SpecialCase_StasisLocked",
  "SpecialCase_CastWhileTeleporting",
  "SpecialCase_CastNotTriggerTear"
}
UnitTagFlags = {}
UnitTagIndicies = {}
function _BuildTags()
  local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
  L0_0 = UnitTagFlags
  L0_0.None = 0
  L0_0 = 1
  for L4_4, L5_5 in L1_1(L2_2) do
    UnitTagFlags[L5_5] = L0_0
    UnitTagIndicies[L5_5] = L4_4 - 1
    L0_0 = L0_0 * 2
  end
  for L4_4, L5_5 in L1_1(L2_2) do
    _G[L5_5] = FNVHash(L5_5)
  end
  for L4_4, L5_5 in L1_1(L2_2) do
    _G[L5_5] = FNVHash(L5_5)
  end
end
_BuildTags()
function ParseUnitTagFlags(A0_6)
  local L1_7
  L1_7 = {}
  for _FORV_5_ in string.gmatch(A0_6, "[^| ]+") do
    if UnitTagFlags[_FORV_5_] ~= nil then
      L1_7[#L1_7 + 1] = UnitTagFlags[_FORV_5_]
    end
  end
  return L1_7
end
function ParseUnitTagIndicies(A0_8)
  local L1_9
  L1_9 = {}
  for _FORV_5_ in string.gmatch(A0_8, "[^| ]+") do
    if UnitTagIndicies[_FORV_5_] ~= nil then
      L1_9[#L1_9 + 1] = UnitTagIndicies[_FORV_5_]
    end
  end
  return L1_9
end
