local L1_0
function L1_0(A0_1, A1_2, A2_3, A3_4, A4_5)
  turret = CreateChildTurret(A0_1, A1_2, A2_3, A3_4, A4_5)
  SetWorldVar(A0_1, turret)
  return turret
end
SpawnTurret = L1_0
