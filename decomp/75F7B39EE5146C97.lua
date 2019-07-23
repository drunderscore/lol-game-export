local L0_0, L1_1
L0_0 = 30
EVENT_STAGE_WELCOME_TIME = L0_0
L0_0 = 60
EVENT_STAGE_PREANNOUNCE_TIME = L0_0
L0_0 = 0
EVENT_STAGE_FINISHED = L0_0
L0_0 = 1
EVENT_STAGE_WELCOME = L0_0
L0_0 = 2
EVENT_STAGE_PREANNOUNCE = L0_0
L0_0 = EVENT_STAGE_WELCOME
NextEventStage = L0_0
function L0_0(A0_2)
  if NextEventStage == EVENT_STAGE_FINISHED then
    return
  elseif NextEventStage == EVENT_STAGE_WELCOME then
    if A0_2 >= EVENT_STAGE_WELCOME_TIME then
      NotifyGlobalEvent("OnStartGameMessage1")
      NextEventStage = EVENT_STAGE_PREANNOUNCE
    end
  elseif NextEventStage == EVENT_STAGE_PREANNOUNCE and A0_2 >= EVENT_STAGE_PREANNOUNCE_TIME then
    NotifyGlobalEvent("OnStartGameMessage2")
    NextEventStage = EVENT_STAGE_FINISHED
  end
end
UpdateEventTimers = L0_0
