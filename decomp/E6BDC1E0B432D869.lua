local L0_0, L1_1
L0_0 = 0
TEAM_UNKNOWN = L0_0
L0_0 = 2
EOG_SCOREBOARD_PHASE_DELAY_TIME_DEFAULT = L0_0
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
  SetInvulnerable(orderHQ, true)
  SetTargetable(orderHQ, false)
  SetBuildingHealthRegenEnabled(orderHQ, false)
  chaosHQ = GetHQ(TEAM_CHAOS)
  SetInvulnerable(chaosHQ, true)
  SetTargetable(chaosHQ, false)
  SetBuildingHealthRegenEnabled(chaosHQ, false)
  SetInputLockForAllClients(INPUT_LOCK_CAMERALOCKING, true)
  SetInputLockForAllClients(INPUT_LOCK_CAMERAMOVEMENT, true)
  SetInputLockForAllClients(INPUT_LOCK_ABILITIES, true)
  SetInputLockForAllClients(INPUT_LOCK_SUMMONERSPELLS, true)
  SetInputLockForAllClients(INPUT_LOCK_MOVEMENT, true)
  SetInputLockForAllClients(INPUT_LOCK_SHOP, true)
  SetInputLockForAllClients(INPUT_LOCK_MINIMAPMOVEMENT, true)
  DisableHUDForEndOfGame()
  SetBarracksSpawnEnabled(false)
  CloseShop()
  HaltAllAI()
  LuaForEachChampion(TEAM_UNKNOWN, "ChampionEoGCeremony")
  InitTimer("DestroyNexusPhase", GetEoGNexusChangeSkinTime(), false)
end
EndOfGameCeremony = L0_0
function L0_0(A0_4)
  MoveCameraFromCurrentPositionToPoint(A0_4, losingHQPosition, GetEoGPanToHQTime(), true)
  SetGreyscaleEnabledWhenDead(A0_4, false)
end
ChampionEoGCeremony = L0_0
function L0_0()
  if GetEoGUseNexusDeathAnimation() == false then
    SetHQCurrentSkin(losingTeam, EOG_DESTROYED_NEXUS_SKIN)
  end
  FadeMinions(losingTeam, EOG_MINION_FADE_AMOUNT, EOG_MINION_FADE_TIME)
  InitTimer("StopRenderingMinionsPhase", EOG_MINION_FADE_TIME, false)
  scoreboardPhaseDelay = EOG_SCOREBOARD_PHASE_DELAY_TIME_DEFAULT
  if EOG_SCOREBOARD_PHASE_DELAY_TIME ~= nil then
    scoreboardPhaseDelay = EOG_SCOREBOARD_PHASE_DELAY_TIME
  end
  InitTimer("ScoreboardPhase", scoreboardPhaseDelay, false)
end
DestroyNexusPhase = L0_0
function L0_0()
  SetMinionsNoRender(losingTeam, true)
end
StopRenderingMinionsPhase = L0_0
function L0_0()
  SetInputLockForAllClients(INPUT_LOCK_CHAT, true)
  EndGame(winningTeam)
end
ScoreboardPhase = L0_0
function L0_0()
  SetHQCurrentSkin(losingTeam, EOG_ALIVE_NEXUS_SKIN)
end
TestReviveNexus = L0_0
