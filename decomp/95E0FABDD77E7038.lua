LockMovementToRiver = {}
RegisterForEvent("ComponentInit", LockMovementToRiver)
numberOfClamps = 0
function LockMovementToRiver.ComponentInit(A0_0)
  local L1_1
  L1_1 = SetStateAndMove
  OriginalSetStateAndMove = L1_1
  function L1_1(A0_2, A1_3)
    numberOfClamps = 0
    if A1_3.x < River.TopBorder[1].x then
      A1_3.x = River.TopBorder[1].x
      numberOfClamps = numberOfClamps + 1
    elseif A1_3.x > River.TopBorder[#River.TopBorder].x then
      A1_3.x = River.TopBorder[#River.TopBorder].x
      numberOfClamps = numberOfClamps + 1
    end
    A1_3 = ClampToBorder(A1_3, River.TopBorder, true)
    A1_3 = ClampToBorder(A1_3, River.BottomBorder, false)
    if numberOfClamps > 1 then
      Event("RiverCornered")
    end
    OriginalSetStateAndMove(A0_2, A1_3)
  end
  SetStateAndMove = L1_1
end
function ClampToBorder(A0_4, A1_5, A2_6)
  local L3_7, L5_8, L6_9, L7_10, L8_11, L9_12, L10_13
  for L7_10 = 1, L5_8 - 1 do
    L8_11 = A0_4.x
    L9_12 = A1_5[L7_10]
    L9_12 = L9_12.x
    if L8_11 >= L9_12 then
      L8_11 = A0_4.x
      L9_12 = L7_10 + 1
      L9_12 = A1_5[L9_12]
      L9_12 = L9_12.x
      if L8_11 <= L9_12 then
        L8_11 = A0_4.x
        L9_12 = A1_5[L7_10]
        L9_12 = L9_12.x
        L8_11 = L8_11 - L9_12
        L9_12 = L7_10 + 1
        L9_12 = A1_5[L9_12]
        L9_12 = L9_12.x
        L10_13 = A1_5[L7_10]
        L10_13 = L10_13.x
        L9_12 = L9_12 - L10_13
        L8_11 = L8_11 / L9_12
        L9_12 = A1_5[L7_10]
        L9_12 = L9_12.z
        L10_13 = L7_10 + 1
        L10_13 = A1_5[L10_13]
        L10_13 = L10_13.z
        L10_13 = L10_13 - A1_5[L7_10].z
        L10_13 = L8_11 * L10_13
        L9_12 = L9_12 + L10_13
        if A2_6 then
          L10_13 = A0_4.z
          if L9_12 < L10_13 then
            A0_4.z = L9_12
            L10_13 = numberOfClamps
            L10_13 = L10_13 + 1
            numberOfClamps = L10_13
          end
          break
        end
        L10_13 = A0_4.z
        if L9_12 > L10_13 then
          A0_4.z = L9_12
          L10_13 = numberOfClamps
          L10_13 = L10_13 + 1
          numberOfClamps = L10_13
        end
        break
      end
    end
  end
  return A0_4
end
