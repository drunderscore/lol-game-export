function BBExecuteFunction(A0_0, A1_1, A2_2)
  local L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
  L3_3 = {}
  for L7_7, L8_8 in L4_4(L5_5) do
    L3_3[L7_7] = L8_8
    L9_9 = GetHashedGameObjName
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    L3_3[L9_9] = L8_8
  end
  for L7_7, L8_8 in L4_4(L5_5) do
    L9_9 = L8_8.VarTable
    L10_10 = L8_8.Var
    L11_11 = GetTable
    L11_11 = L11_11(A0_0, L9_9, false)
    L3_3[L7_7] = L11_11[L10_10]
    L3_3[GetHashedGameObjName(L7_7)] = L11_11[L10_10]
  end
  L3_3.InstanceVars = L4_4
  L3_3.CharVars = L4_4
  L3_3.NextBuffVars = L4_4
  L3_3.NextSpellVars = L4_4
  L3_3.AvatarVars = L4_4
  L3_3.SpellVars = L4_4
  L3_3.WorldVars = L4_4
  L3_3.Target = L4_4
  L3_3[L4_4] = L5_5
  L3_3.Attacker = L4_4
  L3_3[L4_4] = L5_5
  L3_3.Owner = L4_4
  L3_3[L4_4] = L5_5
  L3_3.FunctionSubBlocks = A2_2
  L3_3.CallerPTP = A0_0
  L3_3.Caster = L4_4
  L3_3[L4_4] = L5_5
  L3_3.GoldRedirectTarget = L4_4
  L3_3[L4_4] = L5_5
  L6_6(L7_7, L8_8)
  for L9_9, L10_10 in L6_6(L7_7) do
    L11_11 = L10_10.VarTable
    GetTable2(A0_0, L11_11, true)[L10_10.Var] = L3_3[L9_9]
  end
end
function BBExecuteFunctionSubBlocks(A0_12, A1_13)
  local L2_14, L3_15, L4_16, L5_17, L6_18, L7_19, L8_20
  L2_14 = A0_12.CallerPTP
  L3_15 = A1_13.Exports
  if L3_15 ~= nil then
    for L7_19, L8_20 in L4_16(L5_17) do
      L2_14[L8_20] = A0_12[L8_20]
      L2_14[GetHashedGameObjName(L8_20)] = A0_12[L8_20]
    end
  end
  L4_16(L5_17, L6_18)
end
function BBRequireVar(A0_21, A1_22)
  local L2_23, L3_24
  L2_23 = GetParam
  L3_24 = "Required"
  L2_23 = L2_23(L3_24, A0_21, A1_22)
  L3_24 = gDebugMode
  if L3_24 ~= nil and L2_23 == nil then
    L3_24 = A1_22.RequiredVarTable
    if L3_24 == nil then
      L3_24 = "PassThroughParams"
    end
    DebugError("Missing Required Variable: " .. L3_24 .. "." .. A1_22.RequiredVar)
  end
end
function BBCom(A0_25, A1_26, A2_27)
  ExecuteBuildingBlocksDefault(A2_27, A0_25)
end
function BBConditionallyExecute(A0_28, A1_29, A2_30)
  if A1_29.IsConditionTrue(A0_28) then
    ExecuteBuildingBlocksDefault(A2_30, A0_28)
  end
end
DEBUG_TEXT_COLOR = "#00FF000"
function DebugClientPrintColored(A0_31)
  local L1_32
  L1_32 = "<font color=\""
  L1_32 = L1_32 .. DEBUG_TEXT_COLOR .. "\">" .. A0_31 .. "</font>"
  DebugClientPrint(L1_32)
end
function DebugClientPrintStyled(A0_33)
  DebugClientPrintColored("(DEBUG) " .. A0_33)
end
function BBDebugPrintTypeToChat(A0_34, A1_35)
  local L2_36, L3_37
  L2_36 = GetTable
  L3_37 = A0_34
  L2_36 = L2_36(L3_37, A1_35.SrcVarTable, false)
  L3_37 = A1_35.ToSay
  L3_37 = L3_37 or ""
  DebugClientPrintStyled(tostring(L3_37) .. ": " .. type(L2_36[A1_35.SrcVar]))
end
function BBDebugPrintTableToChat(A0_38, A1_39)
  local L2_40, L3_41
  L2_40 = GetTable
  L3_41 = A0_38
  L2_40 = L2_40(L3_41, A1_39.TableName, true)
  L3_41 = A1_39.TableName
  L3_41 = L3_41 or "PassThroughParams"
  DebugClientPrintStyled(L3_41)
  DebugPrintTableToChat(L2_40)
end
function DebugPrintTableToChat(A0_42, A1_43)
  local L2_44, L3_45, L4_46, L5_47, L6_48, L7_49, L8_50, L9_51, L10_52, L11_53, L12_54, L13_55
  A1_43 = A1_43 or 0
  if A1_43 > 10 then
    return
  end
  L2_44 = nil
  L3_45 = "|"
  for L7_49 = 1, A1_43 do
    L9_51 = "----"
    L3_45 = L8_50 .. L9_51
  end
  L6_48(L7_49)
  for L9_51, L10_52 in L6_48(L7_49) do
    L11_53 = nil
    L12_54 = tostring
    L13_55 = L9_51
    L12_54 = L12_54(L13_55)
    if L12_54 == "PassThroughParams" then
      L11_53 = "{{ PassThroughParams }}"
    else
      L13_55 = type
      L13_55 = L13_55(L10_52)
      if L13_55 == "table" then
        L11_53 = "Table"
      else
        L13_55 = tostring
        L13_55 = L13_55(L10_52)
        L11_53 = L13_55
      end
    end
    L13_55 = L3_45
    L13_55 = L13_55 .. L12_54 .. ": " .. L11_53
    DebugClientPrintColored(L13_55)
    if type(L10_52) == "table" then
      DebugPrintTableToChat(L10_52, A1_43 + 1)
    end
  end
  L6_48(L7_49)
end
function BBDebugPrintToChat(A0_56, A1_57)
  local L2_58, L3_59, L4_60, L5_61, L6_62
  L2_58 = A1_57.ToSay
  L2_58 = L2_58 or ""
  L3_59 = A1_57.Color
  L3_59 = L3_59 or DEBUG_TEXT_COLOR
  if L3_59 == "FFFFFF" then
    L3_59 = DEBUG_TEXT_COLOR
  end
  L4_60 = GetTable
  L5_61 = A0_56
  L6_62 = A1_57.SrcVarTable
  L4_60 = L4_60(L5_61, L6_62, false)
  L5_61 = A1_57.SrcVar
  L5_61 = L4_60[L5_61]
  L6_62 = "<font color=\""
  L6_62 = L6_62 .. L3_59 .. "\">"
  if L2_58 == "" then
    if A1_57.SrcVarTable ~= nil then
      L6_62 = L6_62 .. "(DEBUG) " .. A1_57.SrcVarTable .. "." .. (A1_57.SrcVar or "")
    else
      L6_62 = L6_62 .. "(DEBUG) " .. (A1_57.SrcVar or "")
    end
  else
    L6_62 = L6_62 .. "(DEBUG) " .. L2_58
  end
  if type(L5_61) ~= "table" and type(L5_61) ~= "nil" then
    L6_62 = L6_62 .. " " .. tostring(L5_61)
  end
  L6_62 = L6_62 .. "</font>"
  DebugClientPrint(L6_62)
  if type(L5_61) == "table" then
    DebugPrintTableToChat(L5_61)
  end
end
function GetTable(A0_63, A1_64, A2_65)
  local L3_66
  if A1_64 ~= nil then
    L3_66 = A0_63[A1_64]
    if L3_66 == nil and A2_65 then
      A0_63[A1_64] = {}
      return A0_63[A1_64]
    end
  end
  if L3_66 == nil then
    L3_66 = A0_63
  end
  return L3_66
end
function GetTable2(A0_67, A1_68, A2_69)
  local L3_70
  if A1_68 == "PassThroughParams" then
    return A0_67
  end
  if A1_68 ~= nil then
    L3_70 = A0_67[A1_68]
    if L3_70 == nil and A2_69 then
      A0_67[A1_68] = {}
      return A0_67[A1_68]
    end
  end
  if L3_70 == nil then
    L3_70 = A0_67
  end
  return L3_70
end
function GetParam(A0_71, A1_72, A2_73)
  if A2_73[A0_71 .. "Var"] ~= nil and GetTable(A1_72, A2_73[A0_71 .. "VarTable"], false) ~= nil then
    return GetTable(A1_72, A2_73[A0_71 .. "VarTable"], false)[A2_73[A0_71 .. "Var"]]
  else
    return A2_73[A0_71]
  end
end
function BBDebugLogSREEventInfo(A0_74, A1_75)
  local L2_76, L3_77, L4_78, L5_79
  L2_76 = A1_75.ToLog
  L2_76 = L2_76 or ""
  L3_77 = GetTable
  L4_78 = A0_74
  L5_79 = A1_75.SrcVarTable
  L3_77 = L3_77(L4_78, L5_79, false)
  L4_78 = A1_75.SrcVar
  L4_78 = L3_77[L4_78]
  L5_79 = ""
  if L2_76 == "" then
    if A1_75.SrcVarTable ~= nil then
      L5_79 = A1_75.SrcVarTable .. "." .. (A1_75.SrcVar or "")
    else
      L5_79 = A1_75.SrcVar or ""
    end
  else
    L5_79 = L2_76
  end
  L5_79 = L5_79 .. " " .. tostring(L4_78)
  DebugLogSREEventInfo(L5_79)
end
function BBRemoveEachFromCustomTableWhere(A0_80, A1_81, A2_82)
  local L3_83, L4_84, L5_85, L6_86, L7_87, L8_88, L9_89, L10_90, L11_91, L12_92
  L3_83 = GetTable
  L4_84 = A0_80
  L5_85 = A1_81.TableVarTable
  L6_86 = false
  L3_83 = L3_83(L4_84, L5_85, L6_86)
  L4_84 = false
  L5_85 = A1_81.TableVar
  L5_85 = L3_83[L5_85]
  L5_85 = L5_85[1]
  if L5_85 ~= nil then
    L4_84 = true
  end
  if L4_84 then
    L5_85 = {}
    L6_86 = false
    L7_87 = true
    for L11_91, L12_92 in L8_88(L9_89) do
      if L7_87 then
        L6_86, L7_87 = RemoveEachFromCustomTableWhere_ExecuteIteration(L11_91, L12_92, A0_80, A1_81, A2_82)
        if L6_86 == false then
          table.insert(L5_85, L12_92)
        end
      else
        table.insert(L5_85, L12_92)
      end
    end
    L3_83[L8_88] = L5_85
  else
    L5_85 = {}
    L6_86 = false
    L7_87 = true
    for L11_91, L12_92 in L8_88(L9_89) do
      L6_86, L7_87 = RemoveEachFromCustomTableWhere_ExecuteIteration(L11_91, L12_92, A0_80, A1_81, A2_82)
      if L6_86 == true then
        table.insert(L5_85, L11_91)
      end
      if not L7_87 then
        break
      end
    end
    for L11_91, L12_92 in L8_88(L9_89) do
      L3_83[A1_81.TableVar][L12_92] = nil
    end
  end
end
function RemoveEachFromCustomTableWhere_ExecuteIteration(A0_93, A1_94, A2_95, A3_96, A4_97)
  local L5_98, L6_99, L7_100, L8_101, L9_102
  L5_98 = GetTable
  L6_99 = A2_95
  L7_100 = A3_96.IterKeyVarTable
  L8_101 = true
  L5_98 = L5_98(L6_99, L7_100, L8_101)
  L6_99 = A3_96.IterKeyVar
  L5_98[L6_99] = A0_93
  L6_99 = GetTable
  L7_100 = A2_95
  L8_101 = A3_96.IterValueVarTable
  L9_102 = true
  L6_99 = L6_99(L7_100, L8_101, L9_102)
  L7_100 = A3_96.IterValueVar
  L6_99[L7_100] = A1_94
  L7_100 = GetTable
  L8_101 = A2_95
  L9_102 = A3_96.ShouldRemoveVarTable
  L7_100 = L7_100(L8_101, L9_102, true)
  L8_101 = A3_96.ShouldRemoveVar
  L7_100[L8_101] = false
  L8_101 = ExecuteBuildingBlocksLoop
  L9_102 = A4_97
  L8_101 = L8_101(L9_102, A2_95)
  L9_102 = A3_96.ShouldRemoveVar
  L9_102 = L7_100[L9_102]
  return L9_102, L8_101
end
function BBGetAndInitTempTableInVar(A0_103, A1_104, A2_105)
  if GetTable(A0_103, A1_104.DestVarVarTable, true)[A1_104.DestVarVar] == nil then
    GetTable(A0_103, A1_104.DestVarVarTable, true)[A1_104.DestVarVar] = {}
  end
  A0_103[A1_104.DestTempTable] = GetTable(A0_103, A1_104.DestVarVarTable, true)[A1_104.DestVarVar]
  if true then
    ExecuteBuildingBlocksDefault(A2_105, A0_103)
  end
end
function BBGetAndInitTempTableInCustomTable(A0_106, A1_107, A2_108)
  if GetTable(A0_106, A1_107.DestTableVarTable, false)[A1_107.DestTableVar][GetParam("DestKey", A0_106, A1_107)] == nil then
    GetTable(A0_106, A1_107.DestTableVarTable, false)[A1_107.DestTableVar][GetParam("DestKey", A0_106, A1_107)] = {}
  end
  A0_106[A1_107.DestTempTable] = GetTable(A0_106, A1_107.DestTableVarTable, false)[A1_107.DestTableVar][GetParam("DestKey", A0_106, A1_107)]
  if true then
    ExecuteBuildingBlocksDefault(A2_108, A0_106)
  end
end
function BBAttachVarToTempTable(A0_109, A1_110)
  A0_109[A1_110.Dest] = GetTable(A0_109, A1_110.SourceVarTable, true)[A1_110.SourceVar]
end
function BBAttachTempTableToVar(A0_111, A1_112)
  GetTable(A0_111, A1_112.DestVarTable, true)[A1_112.DestVar] = GetTable(A0_111, A1_112.Source, false)
end
function BBShuffleCustomTable(A0_113, A1_114)
  local L2_115, L3_116, L4_117, L5_118, L6_119, L7_120, L8_121, L9_122
  L2_115 = GetTable
  L3_116 = A0_113
  L4_117 = A1_114.TableToShuffleVarTable
  L5_118 = false
  L2_115 = L2_115(L3_116, L4_117, L5_118)
  L3_116 = A1_114.TableToShuffleVar
  L3_116 = L2_115[L3_116]
  L4_117 = {}
  L5_118 = 0
  for L9_122, _FORV_10_ in L6_119(L7_120) do
    L5_118 = L5_118 + 1
    L4_117[L5_118] = L9_122
  end
  for L9_122 = #L4_117, 2, -1 do
    L3_116[L4_117[L9_122]], L3_116[L4_117[MO_RAND_INT_RANGE(1, L9_122)]] = L3_116[L4_117[MO_RAND_INT_RANGE(1, L9_122)]], L3_116[L4_117[L9_122]]
  end
end
function BBCreateCustomTable(A0_123, A1_124)
  GetTable(A0_123, A1_124.DestVarTable, true)[A1_124.DestVar] = {}
end
function BBDestroyCustomTable(A0_125, A1_126)
  GetTable(A0_125, A1_126.TableNameVarTable, false)[A1_126.TableNameVar] = nil
end
function BBSetKeyValueInCustomTable(A0_127, A1_128)
  if type(GetTable(A0_127, A1_128.DestTableVarTable, false)[A1_128.DestTableVar]) == "nil" then
    GetTable(A0_127, A1_128.DestTableVarTable, false)[A1_128.DestTableVar] = {}
  end
  if type(GetTable(A0_127, A1_128.DestTableVarTable, false)[A1_128.DestTableVar]) == "table" then
    GetTable(A0_127, A1_128.DestTableVarTable, false)[A1_128.DestTableVar][GetParam("Key", A0_127, A1_128)] = GetParam("Value", A0_127, A1_128)
  end
end
function BBGetKeyValueInCustomTable(A0_129, A1_130)
  if type(GetTable(A0_129, A1_130.SrcTableVarTable, false)[A1_130.SrcTableVar]) == "table" then
    GetTable(A0_129, A1_130.DestVarTable, true)[A1_130.DestVar] = GetTable(A0_129, A1_130.SrcTableVarTable, false)[A1_130.SrcTableVar][GetParam("SrcKey", A0_129, A1_130)]
  end
end
function BBInsertIntoInCustomTable(A0_131, A1_132)
  local L2_133, L3_134, L4_135
  L2_133 = GetTable
  L3_134 = A0_131
  L4_135 = A1_132.DestTableVarTable
  L2_133 = L2_133(L3_134, L4_135, false)
  L3_134 = GetParam
  L4_135 = "DestIndex"
  L3_134 = L3_134(L4_135, A0_131, A1_132)
  L4_135 = GetParam
  L4_135 = L4_135("Value", A0_131, A1_132)
  if type(L2_133[A1_132.DestTableVar]) == "nil" then
    L2_133[A1_132.DestTableVar] = {}
  end
  if type(L2_133[A1_132.DestTableVar]) == "table" then
    if L3_134 then
      table.insert(L2_133[A1_132.DestTableVar], L3_134, L4_135)
      if A1_132.OutIndexVar then
        GetTable(A0_131, A1_132.OutIndexVarTable, true)[A1_132.OutIndexVar] = L3_134
      end
    else
      table.insert(L2_133[A1_132.DestTableVar], L4_135)
      if A1_132.OutIndexVar then
        GetTable(A0_131, A1_132.OutIndexVarTable, true)[A1_132.OutIndexVar] = table.getn(L2_133[A1_132.DestTableVar])
      end
    end
  end
end
function BBRemoveFromCustomTable(A0_136, A1_137)
  local L2_138, L3_139
  L2_138 = GetTable
  L3_139 = A0_136
  L2_138 = L2_138(L3_139, A1_137.TableVarTable, false)
  L3_139 = GetParam
  L3_139 = L3_139("Index", A0_136, A1_137)
  if type(L2_138[A1_137.TableVar]) == "nil" then
    DebugClientPrint("Table specified does not exist: " .. tostring(A1_137.TableVarTable) .. "." .. tostring(A1_137.TableVar))
    return
  end
  if type(L2_138[A1_137.TableVar]) == "table" then
    if GetParam("Key", A0_136, A1_137) then
      L2_138[A1_137.TableVar][GetParam("Key", A0_136, A1_137)] = nil
    elseif L3_139 then
      table.remove(L2_138[A1_137.TableVar], L3_139)
    else
      DebugClientPrint("Specified index/key was nil: " .. tostring(A1_137.IndexVarTable) .. "." .. tostring(A1_137.IndexVar))
    end
  end
end
function BBGetRandomFromCustomTable(A0_140, A1_141)
  local L2_142
  A1_141.SizeVar = "_tempSizeVar"
  A1_141.SizeVarTable = "PassThroughParams"
  L2_142 = BBGetSizeOfCustomTable
  L2_142(A0_140, A1_141)
  L2_142 = A1_141.SizeVar
  L2_142 = A0_140[L2_142]
  if A1_141.ShouldRemove == true then
    A1_141.Index = MO_RAND_INT_RANGE(1, L2_142)
    BBRemoveFromCustomTable(A0_140, A1_141)
  end
  GetTable(A0_140, A1_141.DestVarTable, false)[A1_141.DestVar] = GetTable(A0_140, A1_141.TableVarTable, false)[A1_141.TableVar][MO_RAND_INT_RANGE(1, L2_142)]
end
function BBForEachInCustomTable(A0_143, A1_144, A2_145)
  local L3_146, L4_147, L5_148, L6_149, L7_150, L8_151
  L3_146 = GetTable
  L3_146 = L3_146(L4_147, L5_148, L6_149)
  if L4_147 == "table" then
    if L4_147 then
      for L8_151, _FORV_9_ in L5_148(L6_149) do
        table.insert(L4_147, L8_151)
      end
      L5_148(L6_149)
      for L8_151, _FORV_9_ in L5_148(L6_149) do
        GetTable(A0_143, A1_144.DestKeyVarTable, true)[A1_144.DestKeyVar] = _FORV_9_
        GetTable(A0_143, A1_144.DestValueVarTable, true)[A1_144.DestValueVar] = L3_146[A1_144.TableVar][_FORV_9_]
        if not ExecuteBuildingBlocksLoop(A2_145, A0_143) then
          break
        end
      end
    else
      for L7_150, L8_151 in L4_147(L5_148) do
        GetTable(A0_143, A1_144.DestKeyVarTable, true)[A1_144.DestKeyVar] = L7_150
        GetTable(A0_143, A1_144.DestValueVarTable, true)[A1_144.DestValueVar] = L8_151
        if not ExecuteBuildingBlocksLoop(A2_145, A0_143) then
          break
        end
      end
    end
  end
end
function BBForEachInSortedCustomTable(A0_152, A1_153, A2_154)
  local L3_155, L4_156, L5_157, L6_158, L7_159, L8_160
  L3_155 = GetTable
  L4_156 = A0_152
  L3_155 = L3_155(L4_156, L5_157, L6_158)
  L4_156 = type
  L4_156 = L4_156(L5_157)
  if L4_156 == "table" then
    L4_156 = {}
    for L8_160, _FORV_9_ in L5_157(L6_158) do
      table.insert(L4_156, L8_160)
    end
    if L5_157 then
      L5_157(L6_158, L7_159)
    else
      L5_157(L6_158, L7_159)
    end
    for L8_160, _FORV_9_ in L5_157(L6_158) do
      GetTable(A0_152, A1_153.DestKeyVarTable, true)[A1_153.DestKeyVar] = _FORV_9_
      GetTable(A0_152, A1_153.DestValueVarTable, true)[A1_153.DestValueVar] = L3_155[A1_153.TableVar][_FORV_9_]
      if not ExecuteBuildingBlocksLoop(A2_154, A0_152) then
        break
      end
    end
  end
end
function BBCustomTableContainsValue(A0_161, A1_162)
  local L2_163, L3_164, L4_165, L5_166, L6_167
  L2_163 = GetTable
  L3_164 = A0_161
  L4_165 = A1_162.SrcTableVarTable
  L5_166 = false
  L2_163 = L2_163(L3_164, L4_165, L5_166)
  L3_164 = GetParam
  L4_165 = "Value"
  L5_166 = A0_161
  L6_167 = A1_162
  L3_164 = L3_164(L4_165, L5_166, L6_167)
  L4_165 = GetTable
  L5_166 = A0_161
  L6_167 = A1_162.MatchingKeyVarTable
  L4_165 = L4_165(L5_166, L6_167, false)
  L5_166 = GetTable
  L6_167 = A0_161
  L5_166 = L5_166(L6_167, A1_162.WasFoundVarTable, false)
  L6_167 = A1_162.WasFoundVar
  L5_166[L6_167] = false
  L6_167 = type
  L6_167 = L6_167(L2_163[A1_162.SrcTableVar])
  if L6_167 == "table" then
    L6_167 = GetTable
    L6_167 = L6_167(A0_161, A1_162.DestVarTable, true)
    for _FORV_10_, _FORV_11_ in pairs(L6_167) do
      if _FORV_11_ == L3_164 then
        L5_166[A1_162.WasFoundVar] = true
        L4_165[A1_162.MatchingKeyVar] = _FORV_10_
      end
    end
  end
end
function BBGetSizeOfCustomTable(A0_168, A1_169, A2_170)
  for _FORV_9_, _FORV_10_ in pairs(GetTable(A0_168, A1_169.TableVarTable, false)[A1_169.TableVar]) do
  end
  GetTable(A0_168, A1_169.SizeVarTable, false)[A1_169.SizeVar] = 0 + 1
end
function CheckIfUnitOrPointIsInRegionTagList(A0_171, A1_172, A2_173, A3_174)
  local L4_175
  L4_175 = GetParam
  L4_175 = L4_175("Unit", A0_171, A1_172)
  if L4_175 ~= nil then
    A1_172.DestPos = GetPosition(L4_175)
    A1_172.DestPosVar = "__TempDestPos"
    GetTable(A0_171, A1_172.DestPosVarTable, false)[A1_172.DestPosVar] = GetPosition(L4_175)
  end
  A1_172.RegionGroup = A2_173
  BBGetRegionTag(A0_171, A1_172)
  for _FORV_11_, _FORV_12_ in ipairs(A3_174) do
  end
  return true
end
function BBGetIsOrderSide(A0_176, A1_177)
  local L2_178, L3_179
  L2_178 = GameplayLane
  L3_179 = {
    LANE_Top_Order,
    LANE_Mid_Order,
    LANE_Bot_Order,
    LANE_Neutral_Top_Order,
    LANE_Neutral_Mid_Order,
    LANE_Neutral_Bot_Order
  }
  resultTable = GetTable(A0_176, A1_177.ResultVarTable, false)
  resultTable[A1_177.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_176, A1_177, L2_178, L3_179)
end
function BBGetIsPlatform(A0_180, A1_181)
  local L2_182, L3_183
  L2_182 = GameplayArea
  L3_183 = {AREA_Platform}
  resultTable = GetTable(A0_180, A1_181.ResultVarTable, false)
  resultTable[A1_181.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_180, A1_181, L2_182, L3_183)
end
function BBGetIsBase(A0_184, A1_185)
  local L2_186, L3_187
  L2_186 = GameplayArea
  L3_187 = {AREA_Base}
  resultTable = GetTable(A0_184, A1_185.ResultVarTable, false)
  resultTable[A1_185.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_184, A1_185, L2_186, L3_187)
end
function BBGetIsJungle(A0_188, A1_189)
  local L2_190, L3_191
  L2_190 = GameplayArea
  L3_191 = {AREA_Jungle_Top, AREA_Jungle_Bot}
  resultTable = GetTable(A0_188, A1_189.ResultVarTable, false)
  resultTable[A1_189.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_188, A1_189, L2_190, L3_191)
end
function BBGetIsLane(A0_192, A1_193)
  local L2_194, L3_195
  L2_194 = GameplayArea
  L3_195 = {
    AREA_Lane_Top,
    AREA_Lane_Mid,
    AREA_Lane_Bot
  }
  resultTable = GetTable(A0_192, A1_193.ResultVarTable, false)
  resultTable[A1_193.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_192, A1_193, L2_194, L3_195)
end
function BBGetIsRiver(A0_196, A1_197)
  local L2_198, L3_199
  L2_198 = GameplayArea
  L3_199 = {AREA_River_Top, AREA_River_Bot}
  resultTable = GetTable(A0_196, A1_197.ResultVarTable, false)
  resultTable[A1_197.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_196, A1_197, L2_198, L3_199)
end
function BBGetIsBasePerimeter(A0_200, A1_201)
  local L2_202, L3_203
  L2_202 = GameplayArea
  L3_203 = {AREA_BasePerimeter_Top, AREA_BasePerimeter_Bot}
  resultTable = GetTable(A0_200, A1_201.ResultVarTable, false)
  resultTable[A1_201.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_200, A1_201, L2_202, L3_203)
end
function BBGetIsNeutralMapDivide(A0_204, A1_205)
  local L2_206, L3_207
  L2_206 = GameplayLane
  L3_207 = {
    LANE_Neutral_Top_Order,
    LANE_Neutral_Top_Chaos,
    LANE_Neutral_Mid_Order,
    LANE_Neutral_Mid_Chaos,
    LANE_Neutral_Bot_Order,
    LANE_Neutral_Bot_Chaos
  }
  resultTable = GetTable(A0_204, A1_205.ResultVarTable, false)
  resultTable[A1_205.ResultVar] = CheckIfUnitOrPointIsInRegionTagList(A0_204, A1_205, L2_206, L3_207)
end
function BBGetLocationHints(A0_208, A1_209)
  local L2_210, L3_211, L4_212, L5_213, L6_214, L7_215, L8_216, L9_217
  L2_210 = GetParam
  L3_211 = "Unit"
  L4_212 = A0_208
  L5_213 = A1_209
  L2_210 = L2_210(L3_211, L4_212, L5_213)
  L3_211 = GetParam
  L4_212 = "X"
  L5_213 = A0_208
  L6_214 = A1_209
  L3_211 = L3_211(L4_212, L5_213, L6_214)
  L4_212 = GetParam
  L5_213 = "Z"
  L6_214 = A0_208
  L7_215 = A1_209
  L4_212 = L4_212(L5_213, L6_214, L7_215)
  if L2_210 ~= nil then
    L5_213 = GetPosition
    L6_214 = L2_210
    L5_213 = L5_213(L6_214)
    L3_211 = L5_213.x
    L4_212 = L5_213.z
  end
  L5_213 = 2
  L6_214 = 1
  L7_215 = 0
  L8_216 = 4
  L9_217 = 3
  if L4_212 > 12250 then
  elseif L4_212 < 2650 then
  elseif L3_211 > 12250 then
  elseif L3_211 < 2650 then
  elseif L4_212 - L3_211 > 4500 then
  else
  end
  if L4_212 > 13000 then
  elseif L4_212 < 1800 then
  elseif L3_211 > 13000 then
  elseif L3_211 < 1800 then
  elseif L4_212 - L3_211 > 1150 then
  else
  end
  GetTable(A0_208, A1_209.NearLaneVarTable, false)[A1_209.NearLaneVar] = L7_215
  GetTable(A0_208, A1_209.NearSectionVarTable, false)[A1_209.NearSectionVar] = L9_217
  GetTable(A0_208, A1_209.BlueSideVarTable, false)[A1_209.BlueSideVar] = true
end
function BBGetSlotSpellInfo(A0_218, A1_219)
  local L2_220, L3_221, L4_222, L5_223
  L2_220 = GetTable
  L3_221 = A0_218
  L4_222 = A1_219.DestVarTable
  L5_223 = true
  L2_220 = L2_220(L3_221, L4_222, L5_223)
  L3_221 = nil
  L4_222 = GetTable
  L5_223 = A0_218
  L4_222 = L4_222(L5_223, A1_219.SpellSlotVarTable, false)
  L5_223 = A1_219.SpellSlotVar
  if L5_223 ~= nil and L4_222 ~= nil then
    L5_223 = A1_219.SpellSlotVar
    L3_221 = L4_222[L5_223]
  else
    L3_221 = A1_219.SpellSlotValue
  end
  L5_223 = A1_219.Function
  L5_223 = L5_223(A0_218[A1_219.OwnerVar], L3_221, A1_219.SpellbookType, A1_219.SlotType)
  SetVarInTable(A0_218, A1_219, L5_223)
end
function BBSetSlotSpellCooldownTime(A0_224, A1_225)
  local L2_226, L3_227, L4_228
  L2_226 = GetTable
  L3_227 = A0_224
  L4_228 = A1_225.SrcVarTable
  L2_226 = L2_226(L3_227, L4_228, false)
  L3_227 = nil
  L4_228 = A1_225.SrcVar
  if L4_228 ~= nil and L2_226 ~= nil then
    L4_228 = A1_225.SrcVar
    L3_227 = L2_226[L4_228]
  else
    L3_227 = A1_225.SrcValue
  end
  L4_228 = nil
  if A1_225.SpellSlotVar ~= nil and GetTable(A0_224, A1_225.SpellSlotVarTable, false) ~= nil then
    L4_228 = GetTable(A0_224, A1_225.SpellSlotVarTable, false)[A1_225.SpellSlotVar]
  else
    L4_228 = A1_225.SpellSlotValue
  end
  SetSlotSpellCooldownTime(A0_224[A1_225.OwnerVar], L4_228, A1_225.SpellbookType, A1_225.SlotType, L3_227)
end
function BBSetReturnValue(A0_229, A1_230)
  if A0_229.Level ~= nil and A1_230.SrcValueByLevel ~= nil then
    A0_229.ReturnValue = A1_230.SrcValueByLevel[A0_229.Level]
  elseif A1_230.SrcVar ~= nil and GetTable(A0_229, A1_230.SrcVarTable, false) ~= nil then
    A0_229.ReturnValue = GetTable(A0_229, A1_230.SrcVarTable, false)[A1_230.SrcVar]
  else
    A0_229.ReturnValue = A1_230.SrcValue
  end
end
function BBCancelOrderBeforeIssued(A0_231, A1_232)
  A0_231.ReturnValue = true
end
function BBCreateMacro(A0_233, A1_234, A2_235)
  GetTable(A0_233, A1_234.MacroVarTable, true)[A1_234.MacroVar] = A2_235
end
function BBRunMacro(A0_236, A1_237)
  local L2_238, L3_239
  L2_238 = GetParam
  L3_239 = "Macro"
  L2_238 = L2_238(L3_239, A0_236, A1_237)
  if L2_238 ~= nil then
    L3_239 = type
    L3_239 = L3_239(L2_238)
    if L3_239 == "table" then
      L3_239 = ExecuteBuildingBlocksDefault
      L3_239(L2_238, A0_236)
    end
  else
    L3_239 = A1_237.FunctionVarTable
    if L3_239 == nil then
      L3_239 = "PassThroughParams"
    end
    DebugError("Macro variable " .. tostring(L3_239) .. "." .. tostring(A1_237.FunctionVar) .. " not initialized.")
  end
end
function BBCreateFunction(A0_240, A1_241, A2_242)
  local L3_243, L4_244, L5_245, L6_246, L7_247, L8_248
  if A2_242 == nil then
    L3_243 = {}
    A2_242 = L3_243
  end
  L3_243 = GetTable
  L3_243 = L3_243(L4_244, L5_245, L6_246)
  L3_243[L4_244] = A2_242
  if L4_244 == nil then
    A2_242.InPerBlockParams = A1_241
    for L7_247 = 1, 6 do
      L8_248 = "FunctionParameter"
      L8_248 = L8_248 .. L7_247 .. "Var"
      if A1_241[L8_248 .. "Table"] ~= nil then
        DebugError("CreateFunction can only input parameters to PassThroughParams.")
      end
    end
  end
end
function BBEndFunction(A0_249, A1_250)
  local L2_251, L3_252, L4_253, L5_254, L6_255
  for L5_254 = 1, 6 do
    L6_255 = "FunctionOutput"
    L6_255 = L6_255 .. L5_254 .. "Var"
    if A1_250[L6_255] ~= nil and A1_250[L6_255] ~= "" then
      if A1_250[L6_255 .. "Table"] ~= nil then
        DebugError("EndFunction can only output from PassThroughParams.")
      else
        A0_249[L6_255] = A0_249[A1_250[L6_255]]
      end
    end
  end
  L2_251(L3_252)
end
function BBRunFunction(A0_256, A1_257)
  local L2_258, L3_259, L4_260, L5_261, L6_262, L7_263, L8_264, L9_265
  L2_258 = GetParam
  L3_259 = "Function"
  L2_258 = L2_258(L3_259, L4_260, L5_261)
  L3_259 = {}
  L3_259.InstanceVars = L4_260
  L3_259.CharVars = L4_260
  L3_259.NextBuffVars = L4_260
  L3_259.NextSpellVars = L4_260
  L3_259.AvatarVars = L4_260
  L3_259.SpellVars = L4_260
  L3_259.WorldVars = L4_260
  L3_259.Target = L4_260
  L3_259[L4_260] = L5_261
  L3_259.Attacker = L4_260
  L3_259[L4_260] = L5_261
  L3_259.Owner = L4_260
  L3_259[L4_260] = L5_261
  L3_259.Caster = L4_260
  L3_259.GoldRedirectTarget = L4_260
  L3_259.Unit = L4_260
  L3_259.Other1 = L4_260
  L3_259.Other2 = L4_260
  L3_259.Other3 = L4_260
  L3_259.Nothing = L4_260
  if L2_258 ~= nil then
    if L4_260 == "table" then
      if L4_260 ~= nil then
        for L8_264 = 1, 6 do
          L9_265 = "FunctionParameter"
          L9_265 = L9_265 .. L8_264 .. "Var"
          if A1_257[L9_265] ~= nil and A1_257[L9_265] ~= "" and L4_260[L9_265] ~= nil and L4_260[L9_265] ~= "" then
            L3_259[L4_260[L9_265]] = GetTable(A0_256, A1_257[L9_265 .. "Table"], false)[A1_257[L9_265]]
          end
        end
      end
      L4_260(L5_261, L6_262)
      for L7_263 = 1, 6 do
        L8_264 = "FunctionOutput"
        L9_265 = L7_263
        L8_264 = L8_264 .. L9_265 .. "Var"
        L9_265 = A1_257[L8_264]
        if L9_265 ~= nil then
          L9_265 = A1_257[L8_264]
          if L9_265 ~= "" then
            L9_265 = L3_259
            GetTable(A0_256, A1_257[L8_264 .. "Table"], false)[A1_257[L8_264]] = L9_265[L8_264]
          end
        end
      end
    end
  else
    L8_264 = L4_260
    L8_264 = "."
    L9_265 = tostring
    L9_265 = L9_265(A1_257.FunctionVar)
    L5_261(L6_262)
  end
end
function MakeOtherIfFunctions(A0_266)
  elseIfFunctionName = string.gsub(A0_266, "BBIf", "BBElseIf")
  _G[elseIfFunctionName] = function(A0_267, A1_268, A2_269)
    if A0_267.LastIfSucceeded == false then
      _G[_UPVALUE0_](A0_267, A1_268, A2_269)
    end
  end
  andIfFunctionName = string.gsub(A0_266, "BBIf", "BBAndIf")
  _G[andIfFunctionName] = function(A0_270, A1_271, A2_272)
    if A0_270.LastIfSucceeded == true then
      _G[_UPVALUE0_](A0_270, A1_271, A2_272)
    end
  end
  orIfFunctionName = string.gsub(A0_266, "BBIf", "BBOrIf")
  _G[orIfFunctionName] = function(A0_273, A1_274, A2_275)
    if A0_273.LastIfSucceeded == true then
      ExecuteBuildingBlocksDefault(A2_275, A0_273)
      A0_273.LastIfSucceeded = true
    else
      _G[_UPVALUE0_](A0_273, A1_274, A2_275)
    end
  end
end
MakeOtherIfFunctions("BBIf")
function BBElse(A0_276, A1_277, A2_278)
  if A0_276.LastIfSucceeded == false then
    ExecuteBuildingBlocksDefault(A2_278, A0_276)
    A0_276.LastIfSucceeded = true
  end
end
function BBIfHasBuffOfType(A0_279, A1_280, A2_281)
  local L3_282
  if A1_280.TargetVar ~= nil then
    L3_282 = A0_279[A1_280.TargetVar]
  else
    L3_282 = A0_279.Target
  end
  if HasBuffOfType(L3_282, A1_280.BuffType) then
    ExecuteBuildingBlocksDefault(A2_281, A0_279)
    A0_279.LastIfSucceeded = true
  else
    A0_279.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfHasBuffOfType")
function BBIfHasBuffOfTypeFromTeam(A0_283, A1_284, A2_285)
  local L3_286, L4_287
  L4_287 = A1_284.TargetVar
  if L4_287 ~= nil then
    L4_287 = A1_284.TargetVar
    L3_286 = A0_283[L4_287]
  else
    L3_286 = A0_283.Target
  end
  L4_287 = GetParam
  L4_287 = L4_287("Team", A0_283, A1_284)
  if HasBuffOfTypeFromTeam(L3_286, A1_284.BuffType, L4_287) then
    ExecuteBuildingBlocksDefault(A2_285, A0_283)
    A0_283.LastIfSucceeded = true
  else
    A0_283.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfHasBuffOfTypeFromTeam")
function BBIfHasBuffOfTypeFromChampion(A0_288, A1_289, A2_290)
  local L3_291, L4_292
  L4_292 = A1_289.TargetVar
  if L4_292 ~= nil then
    L4_292 = A1_289.TargetVar
    L3_291 = A0_288[L4_292]
  else
    L3_291 = A0_288.Target
  end
  L4_292 = nil
  if A1_289.CasterVar ~= nil then
    L4_292 = A0_288[A1_289.CasterVar]
  else
    L4_292 = A0_288.CasterVar
  end
  if HasBuffOfTypeFromChampion(L3_291, A1_289.BuffType, L4_292) then
    ExecuteBuildingBlocksDefault(A2_290, A0_288)
    A0_288.LastIfSucceeded = true
  else
    A0_288.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfHasBuffOfTypeFromChampion")
MakeOtherIfFunctions("BBIfHasBuffOfTypeHardCC")
MakeOtherIfFunctions("BBIfHasBuffOfTypeCC")
MakeOtherIfFunctions("BBIfHasBuffOfTypeMovementBlocker")
MakeOtherIfFunctions("BBIfHasBuffOfTypeActionBlocker")
MakeOtherIfFunctions("BBIfHasBuff")
MakeOtherIfFunctions("BBIfBuffTypeIsHardCC")
MakeOtherIfFunctions("BBIfBuffTypeIsCC")
MakeOtherIfFunctions("BBIfBuffTypeIsMovementBlocker")
MakeOtherIfFunctions("BBIfBuffTypeIsActionBlocker")
MakeOtherIfFunctions("BBIfBuffTypeInterruptsChannels")
function BBIfMissileIsAutoAttack(A0_293, A1_294, A2_295)
  if BBIsMissileAutoAttack(A0_293, A1_294) then
    ExecuteBuildingBlocksDefault(A2_295, A0_293)
    A0_293.LastIfSucceeded = true
  else
    A0_293.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfMissileIsAutoAttack")
function BBIfMissileConsideredAsAutoAttack(A0_296, A1_297, A2_298)
  if BBIsMissileConsideredAsAutoAttack(A0_296, A1_297) then
    ExecuteBuildingBlocksDefault(A2_298, A0_296)
    A0_296.LastIfSucceeded = true
  else
    A0_296.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfMissileConsideredAsAutoAttack")
MakeOtherIfFunctions("BBIfLineSegmentIntersectsLineSegment")
MakeOtherIfFunctions("BBIfLineSegmentIntersectsCircle")
function BBIfHasKeyInCustomTable(A0_299, A1_300, A2_301)
  if type(GetTable(A0_299, A1_300.SrcTableVarTable, false)[A1_300.SrcTableVar]) == "table" and GetTable(A0_299, A1_300.SrcTableVarTable, false)[A1_300.SrcTableVar][GetParam("SrcKey", A0_299, A1_300)] ~= nil then
    ExecuteBuildingBlocksDefault(A2_301, A0_299)
  end
  A0_299.LastIfSucceeded = true
end
MakeOtherIfFunctions("BBIfHasKeyInCustomTable")
MakeOtherIfFunctions("BBIfNotHasBuff")
function BBIfHasUnitTag(A0_302, A1_303, A2_304)
  local L3_305
  if A1_303.TargetVar ~= nil then
    L3_305 = A0_302[A1_303.TargetVar]
  else
    L3_305 = A0_302.Owner
  end
  if HasUnitTag(L3_305, A1_303.UnitTag) ~= A1_303.InvertResult then
    ExecuteBuildingBlocksDefault(A2_304, A0_302)
    A0_302.LastIfSucceeded = true
  else
    A0_302.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfHasUnitTag")
function BBIfHasSpellTag(A0_306, A1_307, A2_308)
  local L3_309, L4_310
  L4_310 = A1_307.OwnerVar
  if L4_310 ~= nil then
    L4_310 = A1_307.OwnerVar
    L3_309 = A0_306[L4_310]
  else
    L3_309 = A0_306.Owner
  end
  L4_310 = GetParam
  L4_310 = L4_310("SpellSlot", A0_306, A1_307)
  if HasSpellTag(L3_309, L4_310, A1_307.SpellbookType, A1_307.SlotType, A1_307.SpellTag) ~= A1_307.InvertResult then
    ExecuteBuildingBlocksDefault(A2_308, A0_306)
    A0_306.LastIfSucceeded = true
  else
    A0_306.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfHasSpellTag")
function BBIfEventSpellOriginationHasSpellTag(A0_311, A1_312, A2_313)
  if EventSpellOriginationHasSpellTag(A1_312.SpellTag) ~= A1_312.InvertResult then
    ExecuteBuildingBlocksDefault(A2_313, A0_311)
    A0_311.LastIfSucceeded = true
  else
    A0_311.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfEventSpellOriginationHasSpellTag")
function BBIfPARTypeEquals(A0_314, A1_315, A2_316)
  local L3_317, L4_318
  if A1_315.OwnerVar ~= nil then
    L3_317 = A0_314[A1_315.OwnerVar]
  else
    L3_317 = A0_314.Owner
  end
  if HasPARType(L3_317, A1_315.PARType) then
    ExecuteBuildingBlocksDefault(A2_316, A0_314)
    A0_314.LastIfSucceeded = true
  else
    A0_314.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfPARTypeEquals")
function BBIfPARTypeNotEquals(A0_319, A1_320, A2_321)
  local L3_322, L4_323
  if A1_320.OwnerVar ~= nil then
    L3_322 = A0_319[A1_320.OwnerVar]
  else
    L3_322 = A0_319.Owner
  end
  if not HasPARType(L3_322, A1_320.PARType) then
    ExecuteBuildingBlocksDefault(A2_321, A0_319)
    A0_319.LastIfSucceeded = true
  else
    A0_319.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfPARTypeNotEquals")
function BBDefineCheat(A0_324, A1_325, A2_326)
  local L3_327, L4_328, L5_329, L6_330, L7_331
  if L3_327 == L4_328 then
    for L6_330, L7_331 in L3_327(L4_328) do
      if tonumber(L7_331) ~= nil then
        A0_324.TriggeredCheatParams[L6_330] = tonumber(L7_331)
      end
    end
    L3_327(L4_328, L5_329)
  end
end
function BBFor(A0_332, A1_333, A2_334)
  local L3_335, L4_336, L5_337
  L3_335 = GetParam
  L4_336 = "Start"
  L5_337 = A0_332
  L3_335 = L3_335(L4_336, L5_337, A1_333)
  L4_336 = GetParam
  L5_337 = "End"
  L4_336 = L4_336(L5_337, A0_332, A1_333)
  L5_337 = L3_335
  while L4_336 >= L5_337 do
    SetVarInTable(A0_332, A1_333, L5_337)
    if not ExecuteBuildingBlocksLoop(A2_334, A0_332) then
      break
    end
    L5_337 = L5_337 + 1
  end
end
function MO_MULTIPLY(A0_338, A1_339)
  return A0_338 * A1_339
end
function MO_ADD(A0_340, A1_341)
  return A0_340 + A1_341
end
function MO_SUBTRACT(A0_342, A1_343)
  return A0_342 - A1_343
end
function MO_DIVIDE(A0_344, A1_345)
  return A0_344 / A1_345
end
function MO_LOG(A0_346)
  return math.log10(A0_346)
end
function MO_INT_DIVIDE(A0_347, A1_348)
  return math.floor(A0_347 / A1_348)
end
function MO_MIN(A0_349, A1_350)
  if A0_349 < A1_350 then
    return A0_349
  else
    return A1_350
  end
end
function MO_MAX(A0_351, A1_352)
  if A1_352 < A0_351 then
    return A0_351
  else
    return A1_352
  end
end
function MO_MODULO(A0_353, A1_354)
  return A0_353 % A1_354
end
function MO_ROUND(A0_355)
  return math.floor(A0_355 + 0.5)
end
function MO_ROUNDUP(A0_356)
  return math.ceil(A0_356)
end
function MO_ROUNDDOWN(A0_357)
  return math.floor(A0_357)
end
function MO_SIN(A0_358)
  return math.sin(math.rad(A0_358))
end
function MO_COSINE(A0_359)
  return math.cos(math.rad(A0_359))
end
function MO_TANGENT(A0_360)
  return math.tan(math.rad(A0_360))
end
function MO_ASIN(A0_361)
  return math.deg(math.asin(A0_361))
end
function MO_ACOS(A0_362)
  return math.deg(math.acos(A0_362))
end
function MO_ATAN(A0_363)
  return math.deg(math.atan(A0_363))
end
function MO_POW(A0_364, A1_365)
  return math.pow(A0_364, A1_365)
end
function MO_SQUARE_ROOT(A0_366)
  return math.sqrt(A0_366)
end
function MO_BOOLEAN_AND(A0_367, A1_368)
  local L2_369
  L2_369 = A0_367 and A1_368
  return L2_369
end
function MO_BOOLEAN_OR(A0_370, A1_371)
  local L2_372
  L2_372 = A0_370 or A1_371
  return L2_372
end
function MO_BOOLEAN_NOT(A0_373)
  local L1_374
  L1_374 = not A0_373
  return L1_374
end
function MO_ABS(A0_375)
  return math.abs(A0_375)
end
function MO_RAND_INT_RANGE(A0_376, A1_377)
  return GetRandomIntInRangeLua(A0_376, A1_377)
end
function MO_FACTORIAL(A0_378)
  local L1_379
  L1_379 = 1
  out = L1_379
  while A0_378 > 0 do
    L1_379 = out
    L1_379 = L1_379 * A0_378
    out = L1_379
    A0_378 = A0_378 - 1
  end
  L1_379 = out
  return L1_379
end
function BBFreeformMath(A0_380, A1_381, A2_382)
  ExecuteBuildingBlocksDefault(A2_382, A0_380)
end
function BBMath(A0_383, A1_384)
  local L2_385, L3_386, L4_387, L5_388, L6_389
  L2_385 = GetMathNumber
  L3_386 = A0_383
  L4_387 = A1_384.Src1VarTable
  L5_388 = A1_384.Src1Var
  L6_389 = A1_384.Src1Value
  L2_385 = L2_385(L3_386, L4_387, L5_388, L6_389)
  L3_386 = GetMathNumber
  L4_387 = A0_383
  L5_388 = A1_384.Src2VarTable
  L6_389 = A1_384.Src2Var
  L3_386 = L3_386(L4_387, L5_388, L6_389, A1_384.Src2Value)
  L4_387 = GetTable
  L5_388 = A0_383
  L6_389 = A1_384.DestVarTable
  L4_387 = L4_387(L5_388, L6_389)
  L5_388, L6_389 = nil, nil
  L6_389, L5_388 = pcall(A1_384.MathOp, L2_385, L3_386)
  if not L6_389 then
    ReportError(L5_388)
    return
  end
  SetVarInTable(A0_383, A1_384, L5_388)
end
function GetMathNumber(A0_390, A1_391, A2_392, A3_393)
  if A2_392 ~= nil and GetTable(A0_390, A1_391)[A2_392] ~= nil then
    return GetTable(A0_390, A1_391)[A2_392]
  end
  return A3_393
end
function GetNumber(A0_394, A1_395)
  if type(A1_395) == "number" then
    return A1_395
  elseif type(A1_395) == "function" then
    return A1_395(A0_394)
  elseif type(A1_395) == "string" then
    return A0_394[A1_395]
  end
end
function VEC_ADD(A0_396, A1_397)
  return VectorAdd(A0_396, A1_397)
end
function VEC_SUBTRACT(A0_398, A1_399)
  return VectorSubtract(A0_398, A1_399)
end
function VEC_SCALAR_MULTIPLY(A0_400, A1_401)
  return VectorScalarMultiply(A0_400, A1_401)
end
function VEC_SCALAR_DIVIDE(A0_402, A1_403)
  return VectorScalarDivide(A0_402, A1_403)
end
function VEC_ROTATE(A0_404, A1_405)
  return VectorRotateY(A0_404, A1_405)
end
function VEC_NORMALIZE(A0_406)
  return VectorNormalize(A0_406)
end
function VEC_LENGTH(A0_407)
  return VectorLengthIgnoreY(A0_407)
end
function VEC_DOT_IGNORE_Y(A0_408, A1_409)
  return VectorDotProductIgnoreY(A0_408, A1_409)
end
function VEC_CROSS_IGNORE_Y(A0_410, A1_411)
  return VectorCrossProductIgnoreY(A0_410, A1_411)
end
function BBVectorMath(A0_412, A1_413)
  BBMath(A0_412, A1_413)
end
function BBInterpolateFromLevel(A0_414, A1_415)
  local L2_416, L3_417, L4_418
  L2_416 = GetMathNumber
  L3_417 = A0_414
  L4_418 = A1_415.RangeBeginVarTable
  L2_416 = L2_416(L3_417, L4_418, A1_415.RangeBeginVar, A1_415.RangeBegin)
  L3_417 = GetMathNumber
  L4_418 = A0_414
  L3_417 = L3_417(L4_418, A1_415.RangeEndVarTable, A1_415.RangeEndVar, A1_415.RangeEnd)
  L4_418 = nil
  if A1_415.TargetVar ~= nil then
    L4_418 = GetLevel(A0_414[A1_415.TargetVar])
  else
    L4_418 = GetLevel()
  end
  GetTable(A0_414, A1_415.DestVarTable)[A1_415.DestVar] = L2_416 + (L3_417 - L2_416) * ((L4_418 - 1) / 17)
end
function BBInterpolateFromValue(A0_419, A1_420)
  rangeSize = GetMathNumber(A0_419, A1_420.RangeEndVarTable, A1_420.RangeEndVar, A1_420.RangeEnd) - GetMathNumber(A0_419, A1_420.RangeBeginVarTable, A1_420.RangeBeginVar, A1_420.RangeBegin)
  if rangeSize == 0 then
    ratio = 0
  else
    ratio = (GetMathNumber(A0_419, A1_420.ValueVarTable, A1_420.ValueVar, A1_420.Value) - GetMathNumber(A0_419, A1_420.RangeBeginVarTable, A1_420.RangeBeginVar, A1_420.RangeBegin)) / rangeSize
  end
  if A1_420.Clamp == true then
    if 0 > ratio then
      ratio = 0
    elseif ratio > 1 then
      ratio = 1
    end
  end
  GetTable(A0_419, A1_420.RatioVarTable)[A1_420.RatioVar] = ratio
end
function BBInterpolateFromRatio(A0_421, A1_422)
  local L2_423, L3_424
  L2_423 = GetMathNumber
  L3_424 = A0_421
  L2_423 = L2_423(L3_424, A1_422.RangeBeginVarTable, A1_422.RangeBeginVar, A1_422.RangeBegin)
  L3_424 = GetMathNumber
  L3_424 = L3_424(A0_421, A1_422.RangeEndVarTable, A1_422.RangeEndVar, A1_422.RangeEnd)
  rangeSize = L3_424 - L2_423
  scaler = rangeSize * GetMathNumber(A0_421, A1_422.RatioVarTable, A1_422.RatioVar, A1_422.Ratio)
  if A1_422.Clamp == true then
    if GetMathNumber(A0_421, A1_422.RatioVarTable, A1_422.RatioVar, A1_422.Ratio) < 0 then
    else
    end
  end
  GetTable(A0_421, A1_422.ValueVarTable)[A1_422.ValueVar] = L3_424
end
function BBAppendString(A0_425, A1_426)
  local L2_427, L3_428
  L2_427 = GetParam
  L3_428 = "Left"
  L2_427 = L2_427(L3_428, A0_425, A1_426)
  L3_428 = GetParam
  L3_428 = L3_428("Right", A0_425, A1_426)
  GetTable(A0_425, A1_426.DestVarTable, true)[A1_426.DestVar] = tostring(L2_427) .. tostring(L3_428)
end
function BBReplaceString(A0_429, A1_430)
  local L2_431, L3_432, L4_433
  L2_431 = GetParam
  L3_432 = "Source"
  L4_433 = A0_429
  L2_431 = L2_431(L3_432, L4_433, A1_430)
  L3_432 = GetParam
  L4_433 = "Find"
  L3_432 = L3_432(L4_433, A0_429, A1_430)
  L4_433 = GetParam
  L4_433 = L4_433("Replace", A0_429, A1_430)
  GetTable(A0_429, A1_430.DestVarTable, true)[A1_430.DestVar] = string.gsub(L2_431, L3_432, L4_433)
end
function BBIncStat(A0_434, A1_435)
  local L2_436
  L2_436 = 0
  if A1_435.Delta ~= nil then
    L2_436 = L2_436 + A1_435.Delta
  end
  if A1_435.DeltaByLevel ~= nil and A0_434.Level ~= nil then
    L2_436 = L2_436 + A1_435.DeltaByLevel[A0_434.Level]
  end
  if A1_435.DeltaVar ~= nil then
    L2_436 = L2_436 + GetTable(A0_434, A1_435.DeltaVarTable, true)[A1_435.DeltaVar]
  end
  if A1_435.TargetVar ~= nil then
    A1_435.Stat(L2_436, A0_434[A1_435.TargetVar])
  else
    A1_435.Stat(L2_436)
  end
end
function BBIncPermanentStat(A0_437, A1_438)
  local L2_439
  L2_439 = 0
  if A1_438.Delta ~= nil then
    L2_439 = L2_439 + A1_438.Delta
  end
  if A1_438.DeltaByLevel ~= nil and A0_437.Level ~= nil then
    L2_439 = L2_439 + A1_438.DeltaByLevel[A0_437.Level]
  end
  if A1_438.DeltaVar ~= nil then
    L2_439 = L2_439 + GetTable(A0_437, A1_438.DeltaVarTable, true)[A1_438.DeltaVar]
  end
  if A1_438.TargetVar ~= nil then
    A1_438.Stat(L2_439, A0_437[A1_438.TargetVar])
  else
    A1_438.Stat(L2_439)
  end
end
function BBSetMinionLane(A0_440, A1_441)
  local L2_442, L3_443
  L2_442 = A1_441.TargetVar
  L3_443 = 0
  if A1_441.LaneVar ~= nil then
    L3_443 = L3_443 + GetTable(A0_440, A1_441.LaneVarTable, true)[A1_441.LaneVar]
  end
  if A1_441.Lane ~= nil then
    L3_443 = L3_443 + A1_441.Lane
  end
  SetMinionLane(A0_440[L2_442], L3_443)
end
function BBCalculateCriticalDamage(A0_444, A1_445)
  if A1_445.AttackVar ~= nil then
  end
  if A1_445.Attack ~= nil then
  end
  if A1_445.TotalCoefficientVar ~= nil then
  end
  if A1_445.TotalCoefficient ~= nil then
  end
  if A1_445.TargetVar ~= nil then
    GetTable(A0_444, A1_445.DestVarTable, false)[A1_445.DestVar] = (0 + GetTable(A0_444, A1_445.AttackVarTable, true)[A1_445.AttackVar] + A1_445.Attack) * (2 * (1 + GetPercentCritDamageMod(A0_444[A1_445.TargetVar])) + GetFlatCritDamageMod(A0_444[A1_445.TargetVar])) * (0 + GetTable(A0_444, A1_445.TotalCoefficientVarTable, true)[A1_445.TotalCoefficientVar] + A1_445.TotalCoefficient)
  else
    GetTable(A0_444, A1_445.DestVarTable, false)[A1_445.DestVar] = 2 * A1_445.Attack
  end
end
function BBInitializeShield(A0_446, A1_447)
  local L2_448, L3_449, L4_450, L5_451, L6_452, L7_453, L8_454
  L2_448 = GetTable
  L3_449 = A0_446
  L4_450 = A1_447.DestVarTable
  L5_451 = false
  L2_448 = L2_448(L3_449, L4_450, L5_451)
  L3_449 = GetTable
  L4_450 = A0_446
  L5_451 = A1_447.AmountVarTable
  L6_452 = true
  L3_449 = L3_449(L4_450, L5_451, L6_452)
  L4_450 = GetTable
  L5_451 = A0_446
  L6_452 = A0_446.NextBuffVars
  L7_453 = false
  L4_450 = L4_450(L5_451, L6_452, L7_453)
  L5_451 = A1_447.AmountVar
  L5_451 = L3_449[L5_451]
  L6_452 = A1_447.Amount
  L5_451 = L5_451 + L6_452
  L4_450.InitializeShield_Amount = L5_451
  L5_451 = A1_447.AmountVar
  if L5_451 ~= nil then
    L5_451 = A1_447.HealShieldMod
    if L5_451 ~= nil and L5_451 == true then
      L6_452 = A1_447.Amount
      L7_453 = A1_447.AmountVar
      L7_453 = L3_449[L7_453]
      L6_452 = L6_452 + L7_453
      L7_453 = A1_447.AttackerVar
      L8_454 = 0
      if L7_453 ~= nil then
        L8_454 = GetPercentHealingAmountMod(A0_446[L7_453])
      end
      L6_452 = L6_452 * (1 + L8_454)
      L6_452 = L6_452 * (1 + GetPercentIncomingHealingAmountMod(A0_446[A1_447.UnitVar]))
      L3_449[A1_447.AmountVar] = L6_452
      L4_450.InitializeShield_Amount = L6_452
    end
  end
  L5_451 = SpellBuffAddNoRenew
  L6_452 = A1_447.AttackerVar
  L6_452 = A0_446[L6_452]
  L7_453 = A1_447.UnitVar
  L7_453 = A0_446[L7_453]
  L8_454 = "InitializeShieldMarker"
  L5_451(L6_452, L7_453, L8_454, 0, 1, 25000, L4_450)
  L5_451 = BBIncreaseShield
  L6_452 = A0_446
  L7_453 = A1_447
  L5_451(L6_452, L7_453)
end
function BBGetStat(A0_455, A1_456)
  local L2_457, L3_458
  L3_458 = A1_456.TargetVar
  if L3_458 ~= nil then
    L2_457 = A1_456.Stat(A0_455[L3_458])
  else
    L2_457 = A1_456.Stat()
  end
  SetVarInTable(A0_455, A1_456, L2_457)
end
function BBGetLevel(A0_459, A1_460)
  if A1_460.TargetVar ~= nil then
    GetTable(A0_459, A1_460.DestVarTable, false)[A1_460.DestVar] = GetLevel(A0_459[A1_460.TargetVar])
  else
    GetTable(A0_459, A1_460.DestVarTable, false)[A1_460.DestVar] = GetLevel()
  end
end
function BBGetUnitSignificance(A0_461, A1_462)
  if A1_462.TargetVar ~= nil then
    GetTable(A0_461, A1_462.DestVarTable, false)[A1_462.DestVar] = GetUnitSignificance(A0_461[A1_462.TargetVar])
  else
    GetTable(A0_461, A1_462.DestVarTable, false)[A1_462.DestVar] = GetUnitSignificance()
  end
end
function BBGetArmor(A0_463, A1_464)
  if A1_464.TargetVar ~= nil then
    GetTable(A0_463, A1_464.DestVarTable, false)[A1_464.DestVar] = GetArmor(A0_463[A1_464.TargetVar])
  else
    GetTable(A0_463, A1_464.DestVarTable, false)[A1_464.DestVar] = GetArmor()
  end
end
function BBGetSpellBlock(A0_465, A1_466)
  if A1_466.TargetVar ~= nil then
    GetTable(A0_465, A1_466.DestVarTable, false)[A1_466.DestVar] = GetSpellBlock(A0_465[A1_466.TargetVar])
  else
    GetTable(A0_465, A1_466.DestVarTable, false)[A1_466.DestVar] = GetSpellBlock()
  end
end
function BBGetTeamID(A0_467, A1_468)
  local L2_469, L3_470
  L3_470 = A1_468.TargetVar
  if L3_470 ~= nil then
    L2_469 = GetTeamID(A0_467[L3_470])
  else
    L2_469 = GetTeamID()
  end
  SetVarInTable(A0_467, A1_468, L2_469)
end
function BBGetEnemyTeamID(A0_471, A1_472)
  local L2_473, L3_474, L4_475
  L2_473 = GetTable
  L3_474 = A0_471
  L4_475 = A1_472.DestVarTable
  L2_473 = L2_473(L3_474, L4_475, false)
  L3_474 = A1_472.TargetVar
  L4_475 = nil
  if L3_474 ~= nil then
    L4_475 = GetTeamID(A0_471[L3_474])
  else
    L4_475 = GetTeamID()
  end
  if L4_475 == TEAM_ORDER then
    L2_473[A1_472.DestVar] = TEAM_CHAOS
  elseif L4_475 == TEAM_CHAOS then
    L2_473[A1_472.DestVar] = TEAM_ORDER
  end
end
function BBGetUnitSkinName(A0_476, A1_477)
  if A1_477.TargetVar ~= nil then
    GetTable(A0_476, A1_477.DestVarTable, false)[A1_477.DestVar] = GetUnitSkinName(A0_476[A1_477.TargetVar])
  end
end
function BBGetUnitSummonerID(A0_478, A1_479)
  if A1_479.TargetVar ~= nil then
    GetTable(A0_478, A1_479.DestVarTable, false)[A1_479.DestVar] = GetUnitSummonerID(A0_478[A1_479.TargetVar])
  end
end
function BBGetTotalAttackDamage(A0_480, A1_481)
  local L2_482, L3_483, L4_484
  L2_482 = GetTable
  L3_483 = A0_480
  L4_484 = A1_481.DestVarTable
  L2_482 = L2_482(L3_483, L4_484, false)
  L3_483 = A0_480.Owner
  L4_484 = nil
  if A1_481.TargetVar ~= nil then
    L4_484 = GetTotalAttackDamage(A0_480[A1_481.TargetVar])
  else
    L4_484 = GetTotalAttackDamage()
  end
  SetVarInTable(A0_480, A1_481, L4_484)
end
function BBGetStatus(A0_485, A1_486)
  GetTable(A0_485, A1_486.DestVarTable, true)[A1_486.DestVar] = A1_486.Status(A0_485[A1_486.TargetVar])
end
function BBClearAttackTarget(A0_487, A1_488)
  local L2_489
  L2_489 = A1_488.TargetVar
  L2_489 = A0_487[L2_489]
  ClearAttackTarget(L2_489)
end
function BBGetCastInfo(A0_490, A1_491)
  local L2_492, L3_493
  L2_492 = GetTable
  L3_493 = A0_490
  L2_492 = L2_492(L3_493, A1_491.DestVarTable, true)
  L3_493 = A1_491.Info
  L3_493 = L3_493(A0_490[A1_491.TargetVar])
  SetVarInTable(A0_490, A1_491, L3_493)
end
function BBExecutePeriodically(A0_494, A1_495, A2_496)
  local L3_497
  L3_497 = 0
  if GetTable(A0_494, A1_495.TrackTimeVarTable, false)[A1_495.TrackTimeVar] == nil then
    L3_497, GetTable(A0_494, A1_495.TrackTimeVarTable, false)[A1_495.TrackTimeVar] = GetTime(), GetTime()
    if A1_495.ExecuteImmediately == true then
      ExecuteBuildingBlocksDefault(A2_496, A0_494)
    end
  else
    L3_497 = GetTable(A0_494, A1_495.TrackTimeVarTable, false)[A1_495.TrackTimeVar]
  end
  if GetTime() >= L3_497 + GetParam("TimeBetweenExecutions", A0_494, A1_495) then
    GetTable(A0_494, A1_495.TrackTimeVarTable, false)[A1_495.TrackTimeVar] = L3_497 + GetParam("TimeBetweenExecutions", A0_494, A1_495)
    ExecuteBuildingBlocksDefault(A2_496, A0_494)
  end
end
function BBExecutePeriodicallyReset(A0_498, A1_499, A2_500)
  GetTable(A0_498, A1_499.TrackTimeVarTable, false)[A1_499.TrackTimeVar] = nil
end
function BBSetStatus(A0_501, A1_502)
  local L2_503
  L2_503 = A1_502.SrcValue
  if A1_502.SrcVar ~= nil then
    L2_503 = GetTable(A0_501, A1_502.SrcVarTable, true)[A1_502.SrcVar]
  end
  A1_502.Status(A0_501[A1_502.TargetVar], L2_503)
end
function BBAlert(A0_504, A1_505)
  local L2_506
  L2_506 = A1_505.ToAlert
  if GetTable(A0_504, A1_505.SrcVarTable, false) ~= nil and A1_505.SrcVar ~= nil then
    L2_506 = L2_506 .. GetTable(A0_504, A1_505.SrcVarTable, false)[A1_505.SrcVar]
  end
  _ALERT(L2_506)
end
function BBDisplayNumericFloatingTextOnUnitToChampion(A0_507, A1_508)
  local L2_509, L3_510, L4_511, L5_512, L6_513, L7_514
  L2_509 = GetParam
  L3_510 = "Value"
  L4_511 = A0_507
  L5_512 = A1_508
  L2_509 = L2_509(L3_510, L4_511, L5_512)
  if L2_509 == nil then
    L3_510 = ReportError
    L4_511 = "Could not resolve Value param"
    L3_510(L4_511)
    return
  end
  L3_510 = true
  L4_511 = GetParam
  L5_512 = "OnUnit"
  L6_513 = A0_507
  L7_514 = A1_508
  L4_511 = L4_511(L5_512, L6_513, L7_514)
  if L4_511 == nil then
    L3_510 = false
    L5_512 = GetParam
    L6_513 = "OnUnitByFlag"
    L7_514 = A0_507
    L5_512 = L5_512(L6_513, L7_514, A1_508)
    L4_511 = L5_512
  end
  if L4_511 == nil then
    L5_512 = ReportError
    L6_513 = "Could not resolve OnUnit param"
    L5_512(L6_513)
    return
  end
  L5_512 = true
  L6_513 = GetParam
  L7_514 = "ChampionToSayTo"
  L6_513 = L6_513(L7_514, A0_507, A1_508)
  if L6_513 == nil then
    L5_512 = false
    L7_514 = GetParam
    L7_514 = L7_514("ChampionToSayToByFlag", A0_507, A1_508)
    L6_513 = L7_514
  end
  if L6_513 == nil then
    L7_514 = ReportError
    L7_514("Could not resolve ChampionToSayTo param")
    return
  end
  L7_514 = GetParam
  L7_514 = L7_514("ShowToSpectator", A0_507, A1_508)
  if L7_514 == nil then
    ReportError("Could not resolve ShowToSpectator param")
    return
  end
  DisplayNumericFloatingTextOnUnitToChampion(L2_509, A1_508.TextType, L4_511, L3_510, L6_513, L5_512, L7_514)
end
function BBSayWithFloatingTextOnUnitToChampion(A0_515, A1_516)
  local L2_517, L3_518, L4_519, L5_520, L6_521, L7_522
  L2_517 = GetParam
  L3_518 = "Message"
  L4_519 = A0_515
  L5_520 = A1_516
  L2_517 = L2_517(L3_518, L4_519, L5_520)
  if L2_517 == nil then
    L3_518 = ReportError
    L4_519 = "Could not resolve Message param"
    L3_518(L4_519)
    return
  end
  L3_518 = true
  L4_519 = GetParam
  L5_520 = "OnUnit"
  L6_521 = A0_515
  L7_522 = A1_516
  L4_519 = L4_519(L5_520, L6_521, L7_522)
  if L4_519 == nil then
    L3_518 = false
    L5_520 = GetParam
    L6_521 = "OnUnitByFlag"
    L7_522 = A0_515
    L5_520 = L5_520(L6_521, L7_522, A1_516)
    L4_519 = L5_520
  end
  if L4_519 == nil then
    L5_520 = ReportError
    L6_521 = "Could not resolve OnUnit param"
    L5_520(L6_521)
    return
  end
  L5_520 = true
  L6_521 = GetParam
  L7_522 = "ChampionToSayTo"
  L6_521 = L6_521(L7_522, A0_515, A1_516)
  if L6_521 == nil then
    L5_520 = false
    L7_522 = GetParam
    L7_522 = L7_522("ChampionToSayToByFlag", A0_515, A1_516)
    L6_521 = L7_522
  end
  if L6_521 == nil then
    L7_522 = ReportError
    L7_522("Could not resolve ChampionToSayTo param")
    return
  end
  L7_522 = GetParam
  L7_522 = L7_522("ShowToSpectator", A0_515, A1_516)
  if L7_522 == nil then
    ReportError("Could not resolve ShowToSpectator param")
    return
  end
  SayWithFloatingTextOnUnitToChampion(tostring(L2_517), A1_516.TextType, L4_519, L3_518, L6_521, L5_520, L7_522)
end
function BBSay(A0_523, A1_524)
  local L2_525, L3_526, L4_527
  L2_525 = A1_524.ToSay
  L3_526 = GetTable
  L4_527 = A0_523
  L3_526 = L3_526(L4_527, A1_524.SrcVarTable, false)
  if L3_526 ~= nil then
    L4_527 = A1_524.SrcVar
    if L4_527 ~= nil then
      L4_527 = L2_525
      L2_525 = L4_527 .. tostring(L3_526[A1_524.SrcVar])
    end
  end
  L4_527 = nil
  if A1_524.OwnerVar ~= nil then
    L4_527 = A0_523[A1_524.OwnerVar]
  else
    L4_527 = A0_523.Owner
  end
  if A1_524.TextType == nil then
    A1_524.TextType = 0
  end
  Say(L4_527, L2_525, A1_524.TextType)
end
function BBDebugSay(A0_528, A1_529)
  local L2_530, L3_531, L4_532
  L2_530 = A1_529.ToSay
  L3_531 = GetTable
  L4_532 = A0_528
  L3_531 = L3_531(L4_532, A1_529.SrcVarTable, false)
  if L3_531 ~= nil then
    L4_532 = A1_529.SrcVar
    if L4_532 ~= nil then
      L4_532 = L2_530
      L2_530 = L4_532 .. tostring(L3_531[A1_529.SrcVar])
    end
  end
  L4_532 = nil
  if A1_529.OwnerVar ~= nil then
    L4_532 = A0_528[A1_529.OwnerVar]
  else
    L4_532 = A0_528.Owner
  end
  if A1_529.TextType == nil then
    A1_529.TextType = 0
  end
  DebugSay(L4_532, L2_530, A1_529.TextType)
end
function BBIfDamageHasTags(A0_533, A1_534, A2_535)
  if IfDamageHasTags(A1_534.RequiredTags, A1_534.ExcludedTags) then
    ExecuteBuildingBlocksDefault(A2_535, A0_533)
    A0_533.LastIfSucceeded = true
  else
    A0_533.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfDamageHasTags")
function BBIfDamageHasProperty(A0_536, A1_537, A2_538)
  if IfDamageHasProperty(A1_537.Property, A1_537.Reverse) then
    ExecuteBuildingBlocksDefault(A2_538, A0_536)
    A0_536.LastIfSucceeded = true
  else
    A0_536.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfDamageHasProperty")
function BBGetGold(A0_539, A1_540)
  GetTable(A0_539, A1_540.DestVarTable, true)[A1_540.DestVar] = BBLuaGetGold(A0_539, A1_540)
end
function BBGetTotalGold(A0_541, A1_542)
  GetTable(A0_541, A1_542.DestVarTable, true)[A1_542.DestVar] = BBLuaGetTotalGold(A0_541, A1_542)
end
MakeOtherIfFunctions("BBIfRunningNpcScript")
MakeOtherIfFunctions("BBIfNotRunningNpcScript")
function BBTeleportToPosition(A0_543, A1_544)
  if A0_543.CharVars ~= nil then
    A0_543.CharVars.TeleportTargetPosition = GetTable(A0_543, A1_544.PositionVarTable)[A1_544.PositionVar]
  end
  SpellBuffAdd(A0_543[A1_544.OwnerVar], A0_543[A1_544.OwnerVar], "TeleportMarker", 0, 1, 25000, A0_543.NextBuffVars)
  BBTeleportToPositionHelper(A0_543, A1_544)
end
function BBTeleportToPoint(A0_545, A1_546)
  if A1_546.XVar ~= nil and GetTable(A0_545, A1_546.XVarTable, true) ~= nil then
    Xloc = GetTable(A0_545, A1_546.XVarTable, true)[A1_546.XVar]
  else
    Xloc = A1_546.X
  end
  if A1_546.YVar ~= nil and GetTable(A0_545, A1_546.YVarTable, true) ~= nil then
    Yloc = GetTable(A0_545, A1_546.YVarTable, true)[A1_546.YVar]
  else
    Yloc = A1_546.Y
  end
  if A1_546.ZVar ~= nil and GetTable(A0_545, A1_546.ZVarTable, true) ~= nil then
    Zloc = GetTable(A0_545, A1_546.ZVarTable, true)[A1_546.ZVar]
  else
    Zloc = A1_546.Z
  end
  A1_546.OwnerVar, A0_545.position = A1_546.OwnerVar, Make3DPoint(Xloc, Yloc, Zloc)
  A1_546.PositionVar = "position"
  BBTeleportToPosition(A0_545, A1_546)
end
function BBSpellEffectCreate_EasyBeam(A0_547, A1_548)
  A1_548.TimeoutInFOW = 999999
  A1_548.BindFlexToOwnerPAR = false
  A1_548.Flags = 0
  A1_548.FollowsGroundTilt = false
  A1_548.FacesTarget = false
  A1_548.HideFromSpectator = false
  A1_548.SendIfOnScreenOrDiscard = false
  A1_548.PersistsThroughReconnect = true
  A1_548.FOWVisibilityRadius = 10
  A1_548.Scale = 1
  A1_548.BindObjectVar = A1_548.BindObject1Var
  A1_548.EffectID2Var = A1_548.OtherTeamEffectIDVar
  A1_548.TargetObjectVar = A1_548.BindObject2Var
  A1_548.FOWTeamOverrideVar = A1_548.FOWTeamVar
  A1_548.BoneName = A1_548.BindObject1BoneName
  A1_548.TargetBoneName = A1_548.BindObject2BoneName
  A1_548.EffectName = A1_548.EffectParticleFile
  A1_548.EffectNameForOtherTeam = A1_548.OtherTeamParticleFile
  BBSpellEffectCreate(A0_547, A1_548)
end
function BBSpellEffectCreate_EasyHit(A0_549, A1_550)
  A1_550.TimeoutInFOW = 999999
  A1_550.BindFlexToOwnerPAR = false
  A1_550.Flags = 0
  A1_550.FollowsGroundTilt = false
  A1_550.FacesTarget = false
  A1_550.HideFromSpectator = false
  A1_550.SendIfOnScreenOrDiscard = true
  A1_550.PersistsThroughReconnect = false
  A1_550.FOWVisibilityRadius = 10
  A1_550.Scale = 1
  A1_550.FOWTeamOverrideVar = A1_550.FOWTeamVar
  A1_550.EffectName = A1_550.ParticleFile
  A1_550.EffectNameForOtherTeam = A1_550.ParticleFileForOtherTeam
  A1_550.BoneName = A1_550.BindObjectBoneName
  BBSpellEffectCreate(A0_549, A1_550)
end
function BBSealSpellSlotsWithTag(A0_551, A1_552)
  local L2_553, L3_554, L4_555, L5_556, L6_557, L7_558, L8_559, L9_560, L10_561, L11_562, L12_563
  L3_554 = A1_552.TargetVar
  if L3_554 ~= nil then
    L3_554 = A1_552.TargetVar
    L2_553 = A0_551[L3_554]
  else
    L2_553 = A0_551.Target
  end
  L3_554 = {
    L4_555,
    L5_556,
    L6_557
  }
  L4_555.maxSlot = 3
  L4_555.spellbook = L5_556
  L4_555.stype = L5_556
  L5_556.maxSlot = 6
  L5_556.spellbook = L6_557
  L5_556.stype = L6_557
  L6_557.maxSlot = 1
  L7_558 = SPELLBOOK_SUMMONER
  L6_557.spellbook = L7_558
  L7_558 = SpellSlots
  L6_557.stype = L7_558
  for L7_558, L8_559 in L4_555(L5_556) do
    A1_552.SpellbookType = L9_560
    A1_552.SlotType = L9_560
    for L12_563 = 0, L8_559.maxSlot do
      if HasSpellTag(L2_553, L12_563, A1_552.SpellbookType, A1_552.SlotType, A1_552.SpellTag) ~= A1_552.InvertResult then
        A1_552.SpellSlot = L12_563
        BBSealSpellSlot(A0_551, A1_552)
      end
    end
  end
end
function BBReincarnateHero(A0_564, A1_565)
  ReincarnateNonDeadHero(GetTable(A0_564, A1_565.TargetTable, false)[A1_565.TargetVar])
end
function BBGetPAROrHealth(A0_566, A1_567)
  GetTable(A0_566, A1_567.DestVarTable, true)[A1_567.DestVar] = A1_567.Function(A0_566[A1_567.OwnerVar], A1_567.PARType)
end
function BBSetSpellCastRange(A0_568, A1_569)
  local L2_570
  L2_570 = GetParam
  L2_570 = L2_570("NewRange", A0_568, A1_569)
  SetSpellCastRange(L2_570)
end
function BBGetTime(A0_571, A1_572)
  GetTable(A0_571, A1_572.DestVarTable, true)[A1_572.DestVar] = GetTime()
end
function BBDistanceBetweenObjects(A0_573, A1_574)
  local L2_575, L3_576
  L2_575 = A1_574.ObjectVar1
  L2_575 = A0_573[L2_575]
  L3_576 = A1_574.ObjectVar2
  L3_576 = A0_573[L3_576]
  GetTable(A0_573, A1_574.DestVarTable, true)[A1_574.DestVar] = DistanceBetweenObjectBounds(L2_575, L3_576)
end
function BBDistanceBetweenObjectAndPoint(A0_577, A1_578)
  local L2_579, L3_580, L4_581
  L2_579 = A1_578.ObjectVar
  L2_579 = A0_577[L2_579]
  L3_580 = GetTable
  L4_581 = A0_577
  L3_580 = L3_580(L4_581, A1_578.PointVarTable, true)
  L4_581 = A1_578.PointVar
  L4_581 = L3_580[L4_581]
  GetTable(A0_577, A1_578.DestVarTable, true)[A1_578.DestVar] = DistanceBetweenObjectCenterAndPoint(L2_579, L4_581)
end
function BBDistanceBetweenPoints(A0_582, A1_583)
  local L2_584, L3_585
  L2_584 = GetParam
  L3_585 = "Point1"
  L2_584 = L2_584(L3_585, A0_582, A1_583)
  L3_585 = GetParam
  L3_585 = L3_585("Point2", A0_582, A1_583)
  GetTable(A0_582, A1_583.DestVarTable, true)[A1_583.DestVar] = DistanceBetweenPoints(L2_584, L3_585)
end
function BBDistanceBetweenPointsXZ(A0_586, A1_587)
  local L2_588, L3_589
  L2_588 = GetParam
  L3_589 = "Point1"
  L2_588 = L2_588(L3_589, A0_586, A1_587)
  L3_589 = GetParam
  L3_589 = L3_589("Point2", A0_586, A1_587)
  GetTable(A0_586, A1_587.DestVarTable, true)[A1_587.DestVar] = DistanceBetweenPointsXZ(L2_588, L3_589)
end
OBJECT_BOUNDARY = 0
OBJECT_CENTER = 1
function BBIfDistanceBetween(A0_590, A1_591, A2_592)
  local L3_593, L4_594, L5_595, L6_596, L7_597, L8_598
  L5_595 = 0
  L6_596 = nil
  L7_597 = A1_591.ObjectDistanceType
  L8_598 = A1_591.ObjectVar1
  L3_593 = A0_590[L8_598]
  L8_598 = A1_591.ObjectVar2
  L4_594 = A0_590[L8_598]
  if nil == L4_594 then
    L8_598 = A1_591.Point2Var
    if nil ~= L8_598 then
      L8_598 = GetTable
      L8_598 = L8_598(A0_590, A1_591.Point2VarTable, true)
      L4_594 = L8_598[A1_591.Point2Var]
      L5_595 = L5_595 + 1
    end
  end
  if nil == L3_593 then
    L8_598 = A1_591.Point1Var
    if nil ~= L8_598 then
      L8_598 = GetTable
      L8_598 = L8_598(A0_590, A1_591.Point1VarTable, true)
      L3_593 = L8_598[A1_591.Point1Var]
      L5_595 = L5_595 + 1
      if 1 == L5_595 then
        L3_593, L4_594 = L4_594, L3_593
      end
    end
  end
  if nil ~= L7_597 then
    if 0 == L5_595 then
      L8_598 = OBJECT_CENTER
      if L8_598 == L7_597 then
        L6_596 = IfDistanceBetweenObjectCentersLessThan
      else
        L8_598 = OBJECT_BOUNDARY
        if L8_598 == L7_597 then
          L6_596 = IfDistanceBetweenObjectBoundsLessThan
        else
          L8_598 = A1_591.OwnerVar
          L8_598 = A0_590[L8_598]
          Say(L8_598, "invalid object distance type", 0)
        end
      end
    elseif 1 == L5_595 then
      L8_598 = OBJECT_CENTER
      if L8_598 == L7_597 then
        L6_596 = IfDistanceBetweenObjectCenterAndPointLessThan
      else
        L8_598 = OBJECT_BOUNDARY
        if L8_598 == L7_597 then
          L6_596 = IfDistanceBetweenObjectBoundAndPointLessThan
        else
          L8_598 = A1_591.OwnerVar
          L8_598 = A0_590[L8_598]
          Say(L8_598, "invalid object distance type", 0)
        end
      end
    else
      L6_596 = IfDistanceBetweenPointsLessThan
    end
  end
  L8_598 = A1_591.Distance
  if A1_591.DistanceVar ~= nil and GetTable(A0_590, A1_591.DistanceVarTable, true) ~= nil then
    L8_598 = L8_598 + GetTable(A0_590, A1_591.DistanceVarTable, true)[A1_591.DistanceVar]
  end
  if L3_593 ~= nil and L4_594 ~= nil and L6_596 ~= nil and L8_598 ~= nil then
    if not L6_596(L3_593, L4_594, L8_598) then
      ExecuteBuildingBlocksDefault(A2_592, A0_590)
      A0_590.LastIfSucceeded = true
    else
      A0_590.LastIfSucceeded = false
    end
  else
    A0_590.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfDistanceBetween")
function BBGetBuffCountFromCaster(A0_599, A1_600)
  local L2_601, L3_602
  L2_601 = A1_600.TargetVar
  L2_601 = A0_599[L2_601]
  L3_602 = A1_600.CasterVar
  L3_602 = A0_599[L3_602]
  GetTable(A0_599, A1_600.DestVarTable, true)[A1_600.DestVar] = SpellBuffCount(L2_601, A1_600.BuffName, L3_602)
end
function BBGetBuffCountFromAll(A0_603, A1_604)
  local L2_605
  L2_605 = A1_604.TargetVar
  L2_605 = A0_603[L2_605]
  GetTable(A0_603, A1_604.DestVarTable, true)[A1_604.DestVar] = SpellBuffCount(L2_605, A1_604.BuffName, caster)
end
function BBGetStringHash(A0_606, A1_607)
  local L2_608
  L2_608 = GetParam
  L2_608 = L2_608("String", A0_606, A1_607)
  GetTable(A0_606, A1_607.DestVarTable, false)[A1_607.DestVar] = FNVHash(L2_608)
end
function BBSetScaleSkinCoef(A0_609, A1_610)
  local L2_611, L3_612
  L2_611 = GetTable
  L3_612 = A0_609
  L2_611 = L2_611(L3_612, A1_610.ScaleVarTable, false)
  L3_612 = nil
  if A1_610.OwnerVar ~= nil then
    L3_612 = A0_609[A1_610.OwnerVar]
  else
    L3_612 = A0_609.Owner
  end
  if A1_610.ScaleVar ~= nil and A1_610.ScaleVarTable ~= nil then
    SetScaleSkinCoef(L2_611[A1_610.ScaleVar], L3_612)
  else
    SetScaleSkinCoef(A1_610.Scale, L3_612)
  end
end
MakeOtherIfFunctions("BBIfMissileIDIsAlive")
function BBBreakSpellShields(A0_613, A1_614)
  SpellBuffAdd(A0_613[A1_614.TargetVar], A0_613[A1_614.TargetVar], "SpellShieldMarker", 0, 1, 37037, A0_613.NextBuffVars)
end
function BBSpellBuffRemoveStacks(A0_615, A1_616, A2_617)
  local L3_618, L4_619
  L3_618 = A1_616.TargetVar
  L3_618 = A0_615[L3_618]
  L4_619 = A1_616.NumStacks
  if GetParam("NumStacks", A0_615, A1_616) == 0 then
    L4_619 = SpellBuffCount(L3_618, A1_616.BuffName, caster)
  else
    L4_619 = GetParam("NumStacks", A0_615, A1_616)
  end
  while L4_619 > 0 do
    SpellBuffRemove(L3_618, A1_616.BuffName, A0_615[A1_616.AttackerVar])
    L4_619 = L4_619 - 1
  end
end
function BBSetShowHealthBarToChampion(A0_620, A1_621)
  local L2_622, L3_623
  L2_622 = GetParam
  L3_623 = "Unit"
  L2_622 = L2_622(L3_623, A0_620, A1_621)
  unit = L2_622
  L2_622 = unit
  if L2_622 == nil then
    L2_622 = ReportError
    L3_623 = "Could not resolve Unit param"
    L2_622(L3_623)
    return
  end
  L2_622 = true
  L3_623 = GetParam
  L3_623 = L3_623("ChampionToShowTo", A0_620, A1_621)
  if L3_623 == nil then
    L2_622 = false
    L3_623 = GetParam("ChampionToShowToByFlag", A0_620, A1_621)
  end
  if L3_623 == nil then
    ReportError("Could not resolve ChampionToShowTo param")
    return
  end
  SetShowHealthBarToChampion(unit, A1_621.Show, L3_623, L2_622, A1_621.ApplyToSpectator)
end
function BBGetVectorLength(A0_624, A1_625)
  if GetParam("Vector", A0_624, A1_625) ~= nil then
    GetTable(A0_624, A1_625.DestVarTable, false)[A1_625.DestVar] = math.sqrt(GetParam("Vector", A0_624, A1_625).x * GetParam("Vector", A0_624, A1_625).x + GetParam("Vector", A0_624, A1_625).y * GetParam("Vector", A0_624, A1_625).y + GetParam("Vector", A0_624, A1_625).z * GetParam("Vector", A0_624, A1_625).z)
  end
end
function BBIfEmoteIs(A0_626, A1_627, A2_628)
  if A0_626.EmoteId == A1_627.EmoteId then
    ExecuteBuildingBlocksDefault(A2_628, A0_626)
    A0_626.LastIfSucceeded = true
  else
    A0_626.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfEmoteIs")
function BBIfEmoteIsNot(A0_629, A1_630, A2_631)
  if A0_629.EmoteId ~= A1_630.EmoteId then
    ExecuteBuildingBlocksDefault(A2_631, A0_629)
    A0_629.LastIfSucceeded = true
  else
    A0_629.LastIfSucceeded = false
  end
end
MakeOtherIfFunctions("BBIfEmoteIsNot")
function BBElseIfHasLearnedSpellSlot(A0_632, A1_633, A2_634)
  if A0_632.LastIfSucceeded == false then
    BBIfHasLearnedSpellSlot(A0_632, A1_633, A2_634)
  end
end
function BBAndIfHasLearnedSpellSlot(A0_635, A1_636, A2_637)
  if A0_635.LastIfSucceeded == true then
    BBIfHasLearnedSpellSlot(A0_635, A1_636, A2_637)
  end
end
function BBOrIfHasLearnedSpellSlot(A0_638, A1_639, A2_640)
  if A0_638.LastIfSucceeded == true then
    ExecuteBuildingBlocksDefault(A2_640, A0_638)
    A0_638.LastIfSucceeded = true
  else
    BBIfHasLearnedSpellSlot(A0_638, A1_639, A2_640)
  end
end
function BBConcatenateStrings(A0_641, A1_642)
  local L2_643, L3_644, L4_645, L5_646
  L2_643 = GetTable
  L3_644 = A0_641
  L4_645 = A1_642.String1VarTable
  L5_646 = false
  L2_643 = L2_643(L3_644, L4_645, L5_646)
  L3_644 = A1_642.String1Var
  L3_644 = L2_643[L3_644]
  L4_645 = GetTable
  L5_646 = A0_641
  L4_645 = L4_645(L5_646, A1_642.String2VarTable, false)
  L5_646 = A1_642.String2Var
  L5_646 = L4_645[L5_646]
  GetTable(A0_641, A1_642.ResultVarTable, false)[A1_642.ResultVar] = L3_644 .. L5_646
end
function BBEncaseInParantheses(A0_647, A1_648)
  local L2_649, L3_650
  L2_649 = GetTable
  L3_650 = A0_647
  L2_649 = L2_649(L3_650, A1_648.VariableVarTable, false)
  L3_650 = A1_648.VariableVar
  L3_650 = L2_649[L3_650]
  GetTable(A0_647, A1_648.ResultVarTable, false)[A1_648.ResultVar] = "(" .. L3_650 .. ")"
end
function BBIncreaseMinionKills(A0_651, A1_652)
  BBGetMinionKills(A0_651, A1_652)
  A0_651.MinionKillSource = GetParam("MinionKillTarget")
  A0_651.MinionKills = A0_651.MinionsKilled + GetParam("MinionKills", A0_651, A1_652)
  BBSetMinionKills(A0_651, A1_652)
end
function BBForcePreload(A0_653, A1_654)
end
function BBIfSelectedQueuePositionEquals(A0_655, A1_656, A2_657)
  if GetParam("CompareWith", A0_655, A1_656) == A1_656.SelectedQueuePosition then
    ExecuteBuildingBlocksDefault(A2_657, A0_655)
    A0_655.LastIfSucceeded = true
  else
    A0_655.LastIfSucceeded = false
  end
end
function BBSLIME_SetNexusesTargetable_PROTOTYPE(A0_658, A1_659)
  local L2_660
  L2_660 = GetHQ
  L2_660 = L2_660(TEAM_ORDER)
  SetInvulnerable(L2_660, false)
  SetTargetable(L2_660, true)
  L2_660 = GetHQ(TEAM_CHAOS)
  SetInvulnerable(L2_660, false)
  SetTargetable(L2_660, true)
end
function BBSLIME_SetNexusesUntargetable_PROTOTYPE(A0_661, A1_662)
  local L2_663
  L2_663 = GetHQ
  L2_663 = L2_663(TEAM_ORDER)
  SetInvulnerable(L2_663, true)
  SetTargetable(L2_663, false)
  L2_663 = GetHQ(TEAM_CHAOS)
  SetInvulnerable(L2_663, true)
  SetTargetable(L2_663, false)
end
