local L0_0, L1_1
L0_0 = 0
TEAM_UNKNOWN = L0_0
L0_0 = 10
EOG_NEXUS_REVIVE_TIME = L0_0
L0_0 = 0
EOG_ALIVE_NEXUS_SKIN = L0_0
L0_0 = 1
EOG_DESTROYED_NEXUS_SKIN = L0_0
L0_0 = 0
EOG_MINION_FADE_AMOUNT = L0_0
L0_0 = 2
EOG_MINION_FADE_TIME = L0_0
function L0_0(A0_2, A1_3)
  winningTeam = A0_2
  if winningTeam == TEAM_ORDER then
    losingTeam = TEAM_CHAOS
  else
    losingTeam = TEAM_ORDER
  end
  losingHQPosition = GetPosition(A1_3)
  orderHQ = GetHQ(TEAM_ORDER)
  if orderHQ ~= nil then
    SetInvulnerable(orderHQ, true)
    SetTargetable(orderHQ, false)
    SetBuildingHealthRegenEnabled(orderHQ, false)
  end
  chaosHQ = GetHQ(TEAM_CHAOS)
  if chaosHQ ~= nil then
    SetInvulnerable(chaosHQ, true)
    SetTargetable(chaosHQ, false)
    SetBuildingHealthRegenEnabled(chaosHQ, false)
  end
  CloseShop()
  LuaForEachChampion(TEAM_UNKNOWN, "CheatChampionEoGCeremonyServer")
  InitTimer("CheatDestroyNexusPhaseServer", GetEoGNexusChangeSkinTime(), false)
end
CheatEndOfGameCeremonyServer = L0_0
function L0_0(A0_4)
  MoveCameraFromCurrentPositionToPoint(A0_4, losingHQPosition, GetEoGPanToHQTime(), true)
  SetGreyscaleEnabledWhenDead(A0_4, false)
end
CheatChampionEoGCeremonyServer = L0_0
function L0_0()
  if GetEoGUseNexusDeathAnimation() == false then
    SetHQCurrentSkin(losingTeam, EOG_DESTROYED_NEXUS_SKIN)
  end
  FadeMinions(losingTeam, EOG_MINION_FADE_AMOUNT, EOG_MINION_FADE_TIME)
  InitTimer("CheatStopRenderingMinionsPhaseServer", EOG_MINION_FADE_TIME, false)
  InitTimer("CheatRevertEoGSettingsServer", EOG_NEXUS_REVIVE_TIME, false)
end
CheatDestroyNexusPhaseServer = L0_0
function L0_0()
  SetMinionsNoRender(losingTeam, true)
end
CheatStopRenderingMinionsPhaseServer = L0_0
function L0_0()
  SetBarracksSpawnEnabled(true)
  FadeMinions(losingTeam, 1, 0.1)
  SetHQCurrentSkin(losingTeam, EOG_ALIVE_NEXUS_SKIN)
end
CheatRevertEoGSettingsServer = L0_0
