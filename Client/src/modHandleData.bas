Attribute VB_Name = "modHandleData"
Option Explicit

' ******************************************
' ** Parses and handles String packets    **
' ******************************************
Public Function GetAddress(FunAddr As Long) As Long
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    GetAddress = FunAddr
    Exit Function
    
' Error handler
errorhandler:
    HandleError "GetAddress", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Function

Public Sub InitMessages()
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    HandleDataSub(SAlertMsg) = GetAddress(AddressOf HandleAlertMsg)
    HandleDataSub(SLoginOk) = GetAddress(AddressOf HandleLoginOk)
    HandleDataSub(SNewCharClasses) = GetAddress(AddressOf HandleNewCharClasses)
    HandleDataSub(SInGame) = GetAddress(AddressOf HandleInGame)
    HandleDataSub(SPlayerInv) = GetAddress(AddressOf HandlePlayerInv)
    HandleDataSub(SPlayerInvUpdate) = GetAddress(AddressOf HandlePlayerInvUpdate)
    HandleDataSub(SPlayerWornEq) = GetAddress(AddressOf HandlePlayerWornEq)
    HandleDataSub(SPlayerHP) = GetAddress(AddressOf HandlePlayerHP)
    HandleDataSub(SPlayerMP) = GetAddress(AddressOf HandlePlayerMP)
    HandleDataSub(SPlayerStats) = GetAddress(AddressOf HandlePlayerStats)
    HandleDataSub(SPlayerPoints) = GetAddress(AddressOf HandlePlayerPoints)
    HandleDataSub(SPlayerLevel) = GetAddress(AddressOf HandlePlayerLevel)
    HandleDataSub(SPlayerGuild) = GetAddress(AddressOf HandlePlayerGuild)
    HandleDataSub(SPlayerSprite) = GetAddress(AddressOf HandlePlayerSprite)
    HandleDataSub(SPlayerTitles) = GetAddress(AddressOf HandlePlayerTitles)
    HandleDataSub(SPlayerStatus) = GetAddress(AddressOf HandlePlayerStatus)
    HandleDataSub(SPlayerPK) = GetAddress(AddressOf HandlePlayerPK)
    HandleDataSub(SPlayerData) = GetAddress(AddressOf HandlePlayerData)
    HandleDataSub(SPlayerMove) = GetAddress(AddressOf HandlePlayerMove)
    HandleDataSub(SPlayerWarp) = GetAddress(AddressOf HandlePlayerWarp)
    HandleDataSub(SNPCMove) = GetAddress(AddressOf HandleNPCMove)
    HandleDataSub(SPlayerDir) = GetAddress(AddressOf HandlePlayerDir)
    HandleDataSub(SNPCDir) = GetAddress(AddressOf HandleNPCDir)
    HandleDataSub(SAttack) = GetAddress(AddressOf HandleAttack)
    HandleDataSub(SNPCAttack) = GetAddress(AddressOf HandleNPCAttack)
    HandleDataSub(SCheckForMap) = GetAddress(AddressOf HandleCheckForMap)
    HandleDataSub(SMapData) = GetAddress(AddressOf HandleMapData)
    HandleDataSub(SMapItemData) = GetAddress(AddressOf HandleMapItemData)
    HandleDataSub(SMapNPCData) = GetAddress(AddressOf HandleMapNPCData)
    HandleDataSub(SMapNPCTarget) = GetAddress(AddressOf HandleMapNPCTarget)
    HandleDataSub(SMapDone) = GetAddress(AddressOf HandleMapDone)
    HandleDataSub(SGlobalMsg) = GetAddress(AddressOf HandleGlobalMsg)
    HandleDataSub(SAdminMsg) = GetAddress(AddressOf HandleAdminMsg)
    HandleDataSub(SPlayerMsg) = GetAddress(AddressOf HandlePlayerMsg)
    HandleDataSub(SMapMsg) = GetAddress(AddressOf HandleMapMsg)
    HandleDataSub(SSpawnItem) = GetAddress(AddressOf HandleSpawnItem)
    HandleDataSub(SItemEditor) = GetAddress(AddressOf HandleItemEditor)
    HandleDataSub(SUpdateItem) = GetAddress(AddressOf HandleUpdateItem)
    HandleDataSub(SSpawnNPC) = GetAddress(AddressOf HandleSpawnNPC)
    HandleDataSub(SNPCDead) = GetAddress(AddressOf HandleNPCDead)
    HandleDataSub(SNPCEditor) = GetAddress(AddressOf HandleNPCEditor)
    HandleDataSub(SUpdateNPC) = GetAddress(AddressOf HandleUpdateNPC)
    HandleDataSub(SEditMap) = GetAddress(AddressOf HandleEditMap)
    HandleDataSub(SEditEvent) = GetAddress(AddressOf HandleEventEditor)
    HandleDataSub(SShopEditor) = GetAddress(AddressOf HandleShopEditor)
    HandleDataSub(SUpdateShop) = GetAddress(AddressOf HandleUpdateShop)
    HandleDataSub(SSpellEditor) = GetAddress(AddressOf HandleSpellEditor)
    HandleDataSub(SUpdateSpell) = GetAddress(AddressOf HandleUpdateSpell)
    HandleDataSub(SSpells) = GetAddress(AddressOf HandleSpells)
    HandleDataSub(SSpell) = GetAddress(AddressOf HandleSpell)
    HandleDataSub(SLeft) = GetAddress(AddressOf HandleLeft)
    HandleDataSub(SResourceCache) = GetAddress(AddressOf HandleResourceCache)
    HandleDataSub(SResourceEditor) = GetAddress(AddressOf HandleResourceEditor)
    HandleDataSub(SUpdateResource) = GetAddress(AddressOf HandleUpdateResource)
    HandleDataSub(SSendPing) = GetAddress(AddressOf HandleSendPing)
    HandleDataSub(SActionMsg) = GetAddress(AddressOf HandleActionMsg)
    HandleDataSub(SPlayerEXP) = GetAddress(AddressOf HandlePlayerExp)
    HandleDataSub(SBlood) = GetAddress(AddressOf HandleBlood)
    HandleDataSub(SAnimationEditor) = GetAddress(AddressOf HandleAnimationEditor)
    HandleDataSub(SUpdateAnimation) = GetAddress(AddressOf HandleUpdateAnimation)
    HandleDataSub(SAnimation) = GetAddress(AddressOf HandleAnimation)
    HandleDataSub(SMapNPCVitals) = GetAddress(AddressOf HandleMapNPCVitals)
    HandleDataSub(SSpellCooldown) = GetAddress(AddressOf HandleSpellCooldown)
    HandleDataSub(SClearSpellBuffer) = GetAddress(AddressOf HandleClearSpellBuffer)
    HandleDataSub(SSayMsg) = GetAddress(AddressOf HandleSayMsg)
    HandleDataSub(SOpenShop) = GetAddress(AddressOf HandleOpenShop)
    HandleDataSub(SResetShopAction) = GetAddress(AddressOf HandleResetShopAction)
    HandleDataSub(SStunned) = GetAddress(AddressOf HandleStunned)
    HandleDataSub(SMapWornEq) = GetAddress(AddressOf HandleMapWornEq)
    HandleDataSub(sbank) = GetAddress(AddressOf HandleBank)
    HandleDataSub(STrade) = GetAddress(AddressOf HandleOpenTrade)
    HandleDataSub(SCloseTrade) = GetAddress(AddressOf HandleCloseTrade)
    HandleDataSub(STradeUpdate) = GetAddress(AddressOf HandleTradeUpdate)
    HandleDataSub(STradeStatus) = GetAddress(AddressOf HandleTradeStatus)
    HandleDataSub(STradeRequest) = GetAddress(AddressOf HandleTradeRequest)
    HandleDataSub(SPartyInvite) = GetAddress(AddressOf HandlePartyInvite)
    HandleDataSub(SPartyUpdate) = GetAddress(AddressOf HandlePartyUpdate)
    HandleDataSub(SPartyVitals) = GetAddress(AddressOf HandlePartyVitals)
    HandleDataSub(STarget) = GetAddress(AddressOf HandlePlayerTarget)
    HandleDataSub(SHotbar) = GetAddress(AddressOf HandleHotbar)
    HandleDataSub(SGuildMembers) = GetAddress(AddressOf HandleGuildMembers)
    HandleDataSub(SGuildInvite) = GetAddress(AddressOf HandleGuildInvite)
    HandleDataSub(SMapReport) = GetAddress(AddressOf HandleMapReport)
    HandleDataSub(SNPCSpellBuffer) = GetAddress(AddressOf HandleNPCSpellBuffer)
    HandleDataSub(SCheckpoint) = GetAddress(AddressOf HandleCheckpoint)
    HandleDataSub(SUpdateLogs) = GetAddress(AddressOf HandleUpdateLogs)
    HandleDataSub(SFriendsList) = GetAddress(AddressOf HandleFriendsList)
    HandleDataSub(SFoesList) = GetAddress(AddressOf HandleFoesList)
    HandleDataSub(SHighIndex) = GetAddress(AddressOf HandlePlayer_HighIndex)
    HandleDataSub(SEntitySound) = GetAddress(AddressOf HandleEntitySound)
    HandleDataSub(SSendNews) = GetAddress(AddressOf HandleNews)
    HandleDataSub(SSound) = GetAddress(AddressOf HandleSound)
    HandleDataSub(SBanEditor) = GetAddress(AddressOf HandleBanEditor)
    HandleDataSub(SUpdateBan) = GetAddress(AddressOf HandleUpdateBan)
    HandleDataSub(STitleEditor) = GetAddress(AddressOf HandleTitleEditor)
    HandleDataSub(SUpdateTitle) = GetAddress(AddressOf HandleUpdateTitle)
    HandleDataSub(SMoralEditor) = GetAddress(AddressOf HandleMoralEditor)
    HandleDataSub(SUpdateMoral) = GetAddress(AddressOf HandleUpdateMoral)
    HandleDataSub(SClassEditor) = GetAddress(AddressOf HandleClassEditor)
    HandleDataSub(SUpdateClass) = GetAddress(AddressOf HandleUpdateClass)
    HandleDataSub(SCloseClient) = GetAddress(AddressOf HandleCloseClient)
    HandleDataSub(SLeaveGame) = GetAddress(AddressOf HandleLeaveGame)
    HandleDataSub(SEmoticonEditor) = GetAddress(AddressOf HandleEmoticonEditor)
    HandleDataSub(SUpdateEmoticon) = GetAddress(AddressOf HandleUpdateEmoticon)
    HandleDataSub(SCheckEmoticon) = GetAddress(AddressOf HandleCheckEmoticon)
    
    HandleDataSub(SSpawnEvent) = GetAddress(AddressOf HandleSpawnEventPage)
    HandleDataSub(SEventMove) = GetAddress(AddressOf HandleEventMove)
    HandleDataSub(SEventDir) = GetAddress(AddressOf HandleEventDir)
    HandleDataSub(SEventChat) = GetAddress(AddressOf HandleEventChat)
    
    HandleDataSub(SEventStart) = GetAddress(AddressOf HandleEventStart)
    HandleDataSub(SEventEnd) = GetAddress(AddressOf HandleEventEnd)
    
    HandleDataSub(SPlayBGM) = GetAddress(AddressOf HandlePlayBGM)
    HandleDataSub(SPlaySound) = GetAddress(AddressOf HandlePlaySound)
    HandleDataSub(SFadeoutBGM) = GetAddress(AddressOf HandleFadeoutBGM)
    HandleDataSub(SStopSound) = GetAddress(AddressOf HandleStopSound)
    HandleDataSub(SSwitchesAndVariables) = GetAddress(AddressOf HandleSwitchesAndVariables)
    
    HandleDataSub(SMapEventData) = GetAddress(AddressOf HandleMapEventData)
    
    HandleDataSub(SChatBubble) = GetAddress(AddressOf HandleChatBubble)
    
    HandleDataSub(SSpecialEffect) = GetAddress(AddressOf HandleSpecialEffect)
    'Character Editor
    HandleDataSub(SPlayersOnline) = GetAddress(AddressOf HandlePlayersOnline)
    HandleDataSub(SAllCharacters) = GetAddress(AddressOf HandleAllCharacters)
    HandleDataSub(SExtendedPlayerData) = GetAddress(AddressOf HandleExtendedPlayerData)
    HandleDataSub(SAccessVerificator) = GetAddress(AddressOf HandleAccessVerificator)
    
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "InitMessages", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleData(ByRef data() As Byte)
    Dim buffer As clsBuffer
    Dim msgType As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    msgType = buffer.ReadLong

    If msgType < 0 Then DestroyGame

    If msgType >= SMSG_COUNT Then DestroyGame
    
    CallWindowProc HandleDataSub(msgType), 1, buffer.ReadBytes(buffer.Length), 0, 0
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleAlertMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim msg As String
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    msg = buffer.ReadString
    Set buffer = Nothing
    
    frmLoad.Visible = False
    
    If InGame Then
        frmMain.Visible = False
    End If
    
    Call AlertMsg(msg)
    
    If InGame Then
        LogoutGame
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAlertMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleLoginOk(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ' Now we can receive game data
    MyIndex = buffer.ReadLong
    
    ' Player high Index
    Player_HighIndex = buffer.ReadLong
    
    Set buffer = Nothing
    frmLoad.Visible = True
    Call SetStatus("Receiving game data...")
    
' Error handler
    Exit Sub
errorhandler:
    HandleError "HandleLoginOk", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
    Exit Sub
End Sub

Sub HandleNewCharClasses(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    UpdateCharacterMenu
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNewCharClasses", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleInGame(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    InGame = True
    Call GameInit
    Call GameLoop
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleInGame", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandlePlayerInv(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim I As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    n = 1

    For I = 1 To MAX_INV
        Call SetPlayerInvItemNum(MyIndex, I, buffer.ReadLong)
        Call SetPlayerInvItemValue(MyIndex, I, buffer.ReadLong)
        Call SetPlayerInvItemDur(MyIndex, I, buffer.ReadInteger)
        Call SetPlayerInvItemBind(MyIndex, I, buffer.ReadByte)
        n = n + 2
    Next
    
    ' Changes to inventory, need to clear any drop menu
    frmMain.picCurrency.Visible = False
    frmMain.txtCurrency.text = vbNullString
    TmpCurrencyItem = 0
    CurrencyMenu = 0 ' Clear
    If FormVisible("frmItemSpawner") Then
        If FormVisible("frmItemSpawner") Then
            frmItemSpawner.updateFreeSlots
        End If
    End If
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerInv", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandlePlayerInvUpdate(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    n = buffer.ReadByte
    
    SetGameFocus
    
    Call SetPlayerInvItemNum(MyIndex, n, buffer.ReadLong)
    Call SetPlayerInvItemValue(MyIndex, n, buffer.ReadLong)
    Call SetPlayerInvItemDur(MyIndex, n, buffer.ReadInteger)
    Call SetPlayerInvItemBind(MyIndex, n, buffer.ReadByte)
    Set buffer = Nothing
    
    ' Changes, clear drop menu
    frmMain.picCurrency.Visible = False
    frmMain.txtCurrency.text = vbNullString
    frmItemSpawner.updateFreeSlots
    TmpCurrencyItem = 0
    CurrencyMenu = 0 ' Clear
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerInvUpdate", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandlePlayerWornEq(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ' Item number
    For I = 1 To Equipment.Equipment_Count - 1
        Call SetPlayerEquipment(MyIndex, buffer.ReadLong, I)
    Next
    
    ' Durability
    For I = 1 To Equipment.Equipment_Count - 1
        Call SetPlayerEquipmentDur(MyIndex, buffer.ReadInteger, I)
    Next
    Set buffer = Nothing
   
    If Index = MyIndex Then
        ' Changes to inventory, need to clear any drop menu
        frmMain.picCurrency.Visible = False
        frmMain.txtCurrency.text = vbNullString
        TmpCurrencyItem = 0
        CurrencyMenu = 0 ' Clear
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerWornEq", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleMapWornEq(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim playerNum As Long
    Dim I As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    playerNum = buffer.ReadLong
    
    ' Item number
    For I = 1 To Equipment.Equipment_Count - 1
        Call SetPlayerEquipment(playerNum, buffer.ReadLong, I)
    Next
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapWornEq", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerHP(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    Player(Index).MaxVital(Vitals.HP) = buffer.ReadLong
    
    Call SetPlayerVital(Index, Vitals.HP, buffer.ReadLong)

    If Index = MyIndex Then
        If HPBarInit = False Then
            frmMain.imgHPBar.Width = ((GetPlayerVital(MyIndex, Vitals.HP) / HPBar_Width) / (GetPlayerMaxVital(MyIndex, Vitals.HP) / HPBar_Width)) * HPBar_Width
            HPBarInit = True
        End If
        OldHPBarWidth = frmMain.imgHPBar.Width
        NewHPBarWidth = ((GetPlayerVital(MyIndex, Vitals.HP) / HPBar_Width) / (GetPlayerMaxVital(MyIndex, Vitals.HP) / HPBar_Width)) * HPBar_Width
        
        If GetPlayerMaxVital(MyIndex, Vitals.HP) > 0 Then
            frmMain.lblHP.Caption = GetPlayerVital(MyIndex, Vitals.HP) & "/" & GetPlayerMaxVital(MyIndex, Vitals.HP)
        End If
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerHP", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerMP(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    Player(Index).MaxVital(Vitals.MP) = buffer.ReadLong
    
    Call SetPlayerVital(Index, Vitals.MP, buffer.ReadLong)

    If Index = MyIndex Then
        If MPBarInit = False Then
            frmMain.imgMPBar.Width = ((GetPlayerVital(MyIndex, Vitals.MP) / MPBar_Width) / (GetPlayerMaxVital(MyIndex, Vitals.MP) / MPBar_Width)) * MPBar_Width
            MPBarInit = True
        End If
        OldMPBarWidth = frmMain.imgMPBar.Width
        NewMPBarWidth = ((GetPlayerVital(MyIndex, Vitals.MP) / MPBar_Width) / (GetPlayerMaxVital(MyIndex, Vitals.MP) / MPBar_Width)) * MPBar_Width
        
        If GetPlayerMaxVital(MyIndex, Vitals.MP) > 0 Then
            frmMain.lblMP.Caption = GetPlayerVital(MyIndex, Vitals.MP) & "/" & GetPlayerMaxVital(MyIndex, Vitals.MP)
        End If
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerMP", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerStats(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong

    For I = 1 To Stats.Stat_Count - 1
        SetPlayerStat Index, I, buffer.ReadInteger
        If Index = MyIndex Then
            If GetPlayerStat(Index, I) < 1 Then
                frmMain.lblCharStat(I).Caption = 0
            Else
                frmMain.lblCharStat(I).Caption = GetPlayerStat(Index, I)
            End If
        End If
    Next
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerStats", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerPoints(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    SetPlayerPOINTS Index, buffer.ReadInteger
    
    If Index = MyIndex Then
        frmMain.lblPoints.Caption = GetPlayerPOINTS(Index)
        If GetPlayerPOINTS(Index) > 0 Then
            For I = 1 To Stats.Stat_Count - 1
                If GetPlayerRawStat(Index, I) < MAX_STAT Then
                    frmMain.lblTrainStat(I).Visible = True
                Else
                    frmMain.lblTrainStat(I).Visible = False
                End If
            Next
        Else
            For I = 1 To Stats.Stat_Count - 1
                frmMain.lblTrainStat(I).Visible = False
            Next
        End If
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerPoints", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerLevel(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    SetPlayerLevel Index, buffer.ReadByte
    
    ' Set the character windows
    If Index = MyIndex Then
        frmMain.lblCharName = GetPlayerName(MyIndex)
        frmMain.lblCharLevel = "Lv: " & GetPlayerLevel(MyIndex)
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerLevel", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub
    
Private Sub HandlePlayerData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long, X As Long
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    
    Player(I).Face = buffer.ReadInteger
    Call SetPlayerName(I, buffer.ReadString)
    Call SetPlayerGender(I, buffer.ReadByte)
    Call SetPlayerClass(I, buffer.ReadByte)
    Call SetPlayerLevel(I, buffer.ReadByte)
    Call SetPlayerPOINTS(I, buffer.ReadInteger)
    Call SetPlayerSprite(I, buffer.ReadInteger)
    Call SetPlayerMap(I, buffer.ReadInteger)
    Call SetPlayerX(I, buffer.ReadByte)
    Call SetPlayerY(I, buffer.ReadByte)
    Call SetPlayerDir(I, buffer.ReadByte)
    Call SetPlayerAccess(I, buffer.ReadByte)
    Call SetPlayerPK(I, buffer.ReadByte)
    
    ' Guild
    Player(I).Guild = buffer.ReadString
    Player(I).GuildAcc = buffer.ReadByte

    ' Stats
    For X = 1 To Stats.Stat_Count - 1
        SetPlayerStat I, X, buffer.ReadInteger
    Next
    
    ' Amount of titles
    Player(I).AmountOfTitles = buffer.ReadByte
    
    ' Player titles
    For X = 1 To Player(I).AmountOfTitles
        Player(I).Title(X) = buffer.ReadByte
    Next
    
    ' Current title
    Player(I).CurTitle = buffer.ReadByte
    
    ' Status
    Player(I).Status = buffer.ReadString
    
    ' Check if the player is the client player
    If I = MyIndex Then
        ' Update the form guild boxes
        UpdateGuildPanel
        
        ' Reset directions
        DirUp = False
        DirDown = False
        DirLeft = False
        DirRight = False
        
        ' Set the character windows
        frmMain.lblCharName = GetPlayerName(MyIndex)
        frmMain.lblCharLevel = "Lv: " & GetPlayerLevel(MyIndex)
        frmMain.lblPoints = GetPlayerPOINTS(MyIndex)
        
        ' Set stats on form
        For X = 1 To Stats.Stat_Count - 1
            If GetPlayerStat(MyIndex, X) < 1 Then
                frmMain.lblCharStat(X).Caption = 0
            Else
                frmMain.lblCharStat(X).Caption = GetPlayerStat(MyIndex, X)
            End If
        Next
        
        ' Set points on form
        frmMain.lblPoints.Caption = GetPlayerPOINTS(MyIndex)
        
        ' Set training label visiblity depending on points
        If GetPlayerPOINTS(MyIndex) > 0 Then
            For X = 1 To Stats.Stat_Count - 1
                If GetPlayerRawStat(MyIndex, X) < MAX_STAT Then
                    frmMain.lblTrainStat(X).Visible = True
                Else
                    frmMain.lblTrainStat(X).Visible = False
                End If
            Next
        Else
            For X = 1 To Stats.Stat_Count - 1
                frmMain.lblTrainStat(X).Visible = False
            Next
        End If
        
        ' Hide admin panel if visible and access is 0
        If FormVisible("frmAdmin") Then
            If frmAdmin.Visible And Player(MyIndex).Access < STAFF_MODERATOR Then
                Unload frmAdmin
            End If
        End If
        UpdatePlayerTitles
    End If
    
    ' Make sure they aren't walking
    With TempPlayer(I)
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerGuild(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    
    ' Guild
    Player(Index).Guild = buffer.ReadString
    Player(Index).GuildAcc = buffer.ReadByte
    
    If Index = MyIndex Then
        ' Update the form guild boxes
        UpdateGuildPanel
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerGuild", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerSprite(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    Player(Index).Sprite = buffer.ReadInteger
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerSprite", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerTitles(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Byte
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    
    ' Amount of titles
    Player(Index).AmountOfTitles = buffer.ReadByte
    
    ' Player titles
    For I = 1 To Player(Index).AmountOfTitles
        Player(Index).Title(I) = buffer.ReadByte
    Next
    
    ' Current title
    Player(Index).CurTitle = buffer.ReadByte
    
    Set buffer = Nothing
    
    If Index = MyIndex Then
        UpdatePlayerTitles
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerTitles", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerStatus(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    
    Player(Index).Status = buffer.ReadString
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerStatus", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerPK(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    
    Player(Index).PK = buffer.ReadByte
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerPK", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerMove(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim X As Byte
    Dim Y As Byte
    Dim oldx As Long, oldy As Long
    Dim distanceX As Long, distanceY As Long
    Dim Dir As Byte
    Dim n As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    X = buffer.ReadByte
    Y = buffer.ReadByte
    oldx = GetPlayerX(I)
    oldy = GetPlayerY(I)
    Dir = buffer.ReadByte
    n = buffer.ReadByte
    
    distanceX = (X - oldx)
    distanceY = (Y - oldy)
    
    Call SetPlayerX(I, X)
    Call SetPlayerY(I, Y)
    Call SetPlayerDir(I, Dir)
    
    ' Let the client know we can move.
    IsWaitingForMove = False
    
    TempPlayer(I).Moving = n
    TempPlayer(I).xOffset = distanceX * PIC_X * -1
    TempPlayer(I).yOffset = distanceY * PIC_Y * -1
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerMove", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerWarp(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim X As Byte
    Dim Y As Byte
    Dim Dir As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    X = buffer.ReadByte
    Y = buffer.ReadByte
    Dir = buffer.ReadByte
    
    Call SetPlayerX(I, X)
    Call SetPlayerY(I, Y)
    Call SetPlayerDir(I, Dir)

    ' Make sure they aren't walking
    With TempPlayer(I)
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    
    ' Let the client know we can move.
    IsWaitingForMove = False
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerWarp", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCMove(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim MapNPCNum As Long
    Dim X As Byte
    Dim Y As Byte
    Dim Dir As Byte
    Dim Movement As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    MapNPCNum = buffer.ReadLong
    X = buffer.ReadByte
    Y = buffer.ReadByte
    Dir = buffer.ReadByte
    Movement = buffer.ReadByte

    With MapNPC(MapNPCNum)
        .X = X
        .Y = Y
        MiniMapNPC(MapNPCNum).X = X * 4
        MiniMapNPC(MapNPCNum).Y = Y * 4
        .Dir = Dir
        .xOffset = 0
        .yOffset = 0
        .Moving = Movement

        Select Case .Dir
            Case DIR_UP
                .yOffset = PIC_Y
            Case DIR_DOWN
                .yOffset = PIC_Y * -1
            Case DIR_LEFT
                .xOffset = PIC_X
            Case DIR_RIGHT
                .xOffset = PIC_X * -1
        End Select
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNPCMove", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerDir(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim Dir As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    Dir = buffer.ReadByte
    
    Call SetPlayerDir(I, Dir)

    With TempPlayer(I)
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerDir", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCDir(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim Dir As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    Dir = buffer.ReadByte

    With MapNPC(I)
        .Dir = Dir
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNPCDir", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleAttack(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    
    ' Set player to attacking
    TempPlayer(I).Attacking = 1
    TempPlayer(I).AttackTimer = timeGetTime
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAttack", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCAttack(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
    
    ' Set player to attacking
    MapNPC(I).Attacking = 1
    MapNPC(I).AttackTimer = timeGetTime
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNPCAttack", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleCheckForMap(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim X As Integer
    Dim Y As Integer
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ' Check if we get a map from someone else and if we were editing a map cancel it out
    If InMapEditor Then
        ClearAttributeFrames
        LeaveMapEditorMode False
    End If
    
    ' Erase all players except self
    For I = 1 To Player_HighIndex
        If Not I = MyIndex Then
            Call SetPlayerMap(I, 0)
        End If
    Next

    ' Erase all temporary tile values
    Call ClearMapNPCs
    Call ClearMapItems
    Call ClearMap
    
    ' Clear the action messages
    For I = 1 To Action_HighIndex
        Call ClearActionMsg(I, False)
    Next
    
    Action_HighIndex = 0
    
    ' Clear the blood
    For I = 1 To Blood_HighIndex
        Call ClearBlood(I, False)
    Next
    
    Blood_HighIndex = 0
    
    ' Clear the chat bubbles
    For I = 1 To ChatBubble_HighIndex
        Call ClearChatBubble(I, False)
    Next
    
    ChatBubble_HighIndex = 0
    
    Map.CurrentEvents = 0
    ReDim Map.MapEvents(0)
    
    ' Get MapNum
    X = buffer.ReadInteger
    
    ' Get revision
    Y = buffer.ReadInteger
    
    Audio.CacheNewMapSounds
    InitAutotiles
    
    ' Request new map
    SendNeedMap
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleCheckForMap", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleMapData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim X As Long
    Dim Y As Long
    Dim I As Long, Z As Long, w As Long
    Dim buffer As clsBuffer
    Dim MapNum As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    
    buffer.WriteBytes data()

    MapNum = buffer.ReadLong
    Map.name = buffer.ReadString
    Map.Music = buffer.ReadString
    Map.BGS = buffer.ReadString
    Map.Revision = buffer.ReadLong
    Map.Moral = buffer.ReadByte
    Map.Up = buffer.ReadLong
    Map.Down = buffer.ReadLong
    Map.Left = buffer.ReadLong
    Map.Right = buffer.ReadLong
    Map.BootMap = buffer.ReadLong
    Map.BootX = buffer.ReadByte
    Map.BootY = buffer.ReadByte
    
    Map.Weather = buffer.ReadLong
    Map.WeatherIntensity = buffer.ReadLong
    
    Map.Fog = buffer.ReadLong
    Map.FogSpeed = buffer.ReadLong
    Map.FogOpacity = buffer.ReadLong
    
    Map.Panorama = buffer.ReadLong
    
    Map.Red = buffer.ReadLong
    Map.Green = buffer.ReadLong
    Map.Blue = buffer.ReadLong
    Map.Alpha = buffer.ReadLong
    
    Map.MaxX = buffer.ReadByte
    Map.MaxY = buffer.ReadByte
    
    ReDim Map.Tile(0 To Map.MaxX, 0 To Map.MaxY)

    Map.NPC_HighIndex = buffer.ReadByte
    
    For X = 0 To Map.MaxX
        For Y = 0 To Map.MaxY
            For I = 1 To MapLayer.Layer_Count - 1
                Map.Tile(X, Y).Layer(I).X = buffer.ReadLong
                Map.Tile(X, Y).Layer(I).Y = buffer.ReadLong
                Map.Tile(X, Y).Layer(I).Tileset = buffer.ReadLong
            Next
            
            For Z = 1 To MapLayer.Layer_Count - 1
                Map.Tile(X, Y).Autotile(Z) = buffer.ReadLong
            Next
            
            Map.Tile(X, Y).Type = buffer.ReadByte
            Map.Tile(X, Y).Data1 = buffer.ReadLong
            Map.Tile(X, Y).Data2 = buffer.ReadLong
            Map.Tile(X, Y).Data3 = buffer.ReadLong
            Map.Tile(X, Y).Data4 = buffer.ReadString
            Map.Tile(X, Y).DirBlock = buffer.ReadByte
        Next
    Next

    For X = 1 To MAX_MAP_NPCS
        Map.NPC(X) = buffer.ReadLong
        Map.NPCSpawnType(X) = buffer.ReadLong
        n = n + 1
    Next
    
    InitAutotiles
    
    Set buffer = Nothing
    
    Audio.CacheNewMapSounds
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapItemData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    For I = 1 To MAX_MAP_ITEMS
        With MapItem(I)
            .PlayerName = buffer.ReadString
            .num = buffer.ReadLong
            .Value = buffer.ReadLong
            .Durability = buffer.ReadInteger
            .X = buffer.ReadByte
            .Y = buffer.ReadByte
        End With
    Next
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapItemData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapNPCData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long, X As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    For I = 1 To MAX_MAP_NPCS
        With MapNPC(I)
            .num = buffer.ReadLong
            .X = buffer.ReadLong
            .Y = buffer.ReadLong
            .Dir = buffer.ReadLong
            
            For X = 1 To Vitals.Vital_Count - 1
                .Vital(X) = buffer.ReadLong
            Next
        End With
    Next
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapNPCData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapNPCTarget(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim MapNPCNum As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    MapNPCNum = buffer.ReadByte

    With MapNPC(MapNPCNum)
        .Target = buffer.ReadByte
        .TargetType = buffer.ReadByte
    End With
    
    ' Check for battle music
    Call CheckForBattleMusic(MapNPCNum)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapNPCData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapDone()
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    ' Load tilesets that we need
    LoadTilesets
    
    ' Play the music
    PlayMapMusic
    
    ' Re-position the map name
    Call UpdateDrawMapName

    For I = 1 To MAX_BYTE
        Call ClearAnimInstance(I)
    Next
    
    InitAutotiles
    redrawMapCache = True
    
    CurrentWeather = Map.Weather
    CurrentWeatherIntensity = Map.WeatherIntensity
    CurrentFog = Map.Fog
    CurrentFogSpeed = Map.FogSpeed
    CurrentFogOpacity = Map.FogOpacity
    CurrentTintR = Map.Red
    CurrentTintG = Map.Green
    CurrentTintB = Map.Blue
    CurrentTintA = Map.Alpha

    GettingMap = False
    CanMoveNow = True
    MouseX = -1
    MouseY = -1
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapDone", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleGlobalMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim msg As String
    Dim Color As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    msg = buffer.ReadString
    Color = buffer.ReadLong
    Call AddText(CheckMessage(msg), Color)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleGlobalMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim msg As String
    Dim Color As Byte
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    msg = buffer.ReadString
    Color = buffer.ReadByte
    
    ' Prevent ascii characters
    Dim Size As Long
    Size = Len(msg)
    For I = 1 To Size
        ' limit the ASCII
        If AscW(Mid$(msg, I, 1)) < 32 Or AscW(Mid$(msg, I, 1)) > 126 Then
            ' limit the extended ASCII
            If AscW(Mid$(msg, I, 1)) < 128 Or AscW(Mid$(msg, I, 1)) > 168 Then
                ' limit the extended ASCII
                If AscW(Mid$(msg, I, 1)) < 224 Or AscW(Mid$(msg, I, 1)) > 253 Then
                    Mid$(msg, I, 1) = ""
                End If
            End If
        End If
    Next
    
    Call AddText(CheckMessage(msg), Color)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayerMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim msg As String
    Dim Color As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    msg = buffer.ReadString
    Color = buffer.ReadByte
    Call AddText(CheckMessage(msg), Color)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleAdminMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim msg As String
    Dim Color As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    msg = buffer.ReadString
    Color = buffer.ReadByte
    Call AddText(CheckMessage(msg), Color)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAdminMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpawnItem(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong

    With MapItem(n)
        .PlayerName = buffer.ReadString
        .num = buffer.ReadLong
        .Value = buffer.ReadLong
        .Durability = buffer.ReadInteger
        .X = buffer.ReadLong
        .Y = buffer.ReadLong
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpawnItem", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleItemEditor()
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_Item
        Editor = EDITOR_ITEM
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_ITEMS
            .lstIndex.AddItem I & ": " & Trim$(Item(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        ItemEditorInit

        If adminMin Then
            frmEditor_Item.Move frmMain.Left + frmMain.Width - frmEditor_Item.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_ITEM
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleItemEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleAnimationEditor()
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_Animation
        Editor = EDITOR_ANIMATION
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_ANIMATIONS
            .lstIndex.AddItem I & ": " & Trim$(Animation(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        AnimationEditorInit

        If adminMin Then
            frmEditor_Animation.Move frmMain.Left + frmMain.Width - frmEditor_Animation.Width, frmMain.Top
        End If
    End With
    
    frmAdmin.ShowEyeFor EDITOR_ANIMATION
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAnimationEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateItem(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim ItemSize As Long
    Dim ItemData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the item
    ItemSize = LenB(Item(n))
    ReDim ItemData(ItemSize - 1)
    ItemData = buffer.ReadBytes(ItemSize)
    CopyMemory ByVal VarPtr(Item(n)), ByVal VarPtr(ItemData(0)), ItemSize
    Set buffer = Nothing

    ' Changes to inventory, need to clear any drop menu
    frmMain.picCurrency.Visible = False
    frmMain.txtCurrency.text = vbNullString
    TmpCurrencyItem = 0
    CurrencyMenu = 0 ' Clear
    
    If FormVisible("frmItemSpawner") Then
        If Item(n).Type = frmItemSpawner.tabItems.SelectedItem.Index - 2 Then
            frmItemSpawner.updatingItem = True
            frmItemSpawner.tabItems_Click
        End If
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateItem", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateAnimation(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim AnimationSize As Long
    Dim AnimationData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Animation
    AnimationSize = LenB(Animation(n))
    ReDim AnimationData(AnimationSize - 1)
    AnimationData = buffer.ReadBytes(AnimationSize)
    CopyMemory ByVal VarPtr(Animation(n)), ByVal VarPtr(AnimationData(0)), AnimationSize
    Set buffer = Nothing
    Exit Sub

' Error handler
errorhandler:
    HandleError "HandleUpdateAnimation", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpawnNPC(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong

    With MapNPC(n)
        .num = buffer.ReadLong
        .X = buffer.ReadLong
        .Y = buffer.ReadLong
        .Dir = buffer.ReadLong

        ' Client use only
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpawnNPC", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCDead(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    Call ClearMapNPC(n)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNPCDead", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCEditor()

    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_NPC
        Editor = EDITOR_NPC
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_NPCS
            .lstIndex.AddItem I & ": " & Trim$(NPC(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        NPCEditorInit

        If adminMin Then
            frmEditor_NPC.Move frmMain.Left + frmMain.Width - frmEditor_NPC.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_NPC
    Exit Sub

    ' Error handler
errorhandler:
    HandleError "HandleNPCEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateNPC(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim NPCSize As Long
    Dim NPCData() As Byte
    Dim I As Long
    Dim name As String
    Dim Letter As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    n = buffer.ReadLong
    
    NPCSize = LenB(NPC(n))
    ReDim NPCData(NPCSize - 1)
    NPCData = buffer.ReadBytes(NPCSize)
    CopyMemory ByVal VarPtr(NPC(n)), ByVal VarPtr(NPCData(0)), NPCSize
    
    Set buffer = Nothing
    
    If n = MAX_NPCS Then
        For I = 1 To MAX_NPCS
            If LenB(NPC(I)) = 0 Then
                NPC(I).name = vbNullString
                NPC(I).Title = vbNullString
                NPC(I).AttackSay = vbNullString
            End If
        Next
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateNPC", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleResourceEditor()

    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_Resource
        Editor = EDITOR_RESOURCE
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_RESOURCES
            .lstIndex.AddItem I & ": " & Trim$(Resource(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        ResourceEditorInit

        If adminMin Then
            frmEditor_Resource.Move frmMain.Left + frmMain.Width - frmEditor_Resource.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_RESOURCE
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleResourceEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateResource(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim ResourceNum As Long
    Dim buffer As clsBuffer
    Dim ResourceSize As Long
    Dim ResourceData() As Byte
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ResourceNum = buffer.ReadLong
    
    ResourceSize = LenB(Resource(ResourceNum))
    ReDim ResourceData(ResourceSize - 1)
    ResourceData = buffer.ReadBytes(ResourceSize)
    
    ClearResource ResourceNum
    
    CopyMemory ByVal VarPtr(Resource(ResourceNum)), ByVal VarPtr(ResourceData(0)), ResourceSize
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateResource", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEditMap()
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    ' We're in the map editor
    InMapEditor = True
    
    Call ToggleGUI(False)
    Call frmMain.ToggleChatLock(True)
    
    ' Show the form
    MapEditorMode True
    frmEditor_Map.Visible = True
    Call MapEditorInit
    
    If FormVisible("frmMapPreview") Then
        frmEditor_Map.Move frmMain.Left - frmEditor_Map.Width - 80, frmMain.Top + 75 + 145 + frmMapPreview.Height
    Else
        frmEditor_Map.Move frmMain.Left - frmEditor_Map.Width - 80, frmMain.Top + 75
    End If

    frmAdmin.ShowEyeFor EDITOR_MAP
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEditMap", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventEditor()
    Dim buffer As clsBuffer
    Dim EventNum As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    Set buffer = New clsBuffer
    EventNum = buffer.ReadLong
    
    Call EventEditorInit(EventNum, True)
    Editor = EDITOR_EVENTS
    frmAdmin.ShowEyeFor EDITOR_EVENTS
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleShopEditor()

    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_Shop
        Editor = EDITOR_SHOP
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_SHOPS
            .lstIndex.AddItem I & ": " & Trim$(Shop(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        ShopEditorInit

        If adminMin Then
            frmEditor_Shop.Move frmMain.Left + frmMain.Width - frmEditor_Shop.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_SHOP
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleShopEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateShop(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim ShopSize As Long
    Dim ShopData() As Byte
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    n = buffer.ReadLong
    ShopSize = LenB(Shop(n))
    ReDim ShopData(ShopSize - 1)
    ShopData = buffer.ReadBytes(ShopSize)
    CopyMemory ByVal VarPtr(Shop(n)), ByVal VarPtr(ShopData(0)), ShopSize
    Set buffer = Nothing
    
    ' Update the shop combo box in the map editor if they are in it
    If InMapEditor Then
        MapEditorInitShop
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateShop", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpellEditor()

    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    With frmEditor_Spell
        Editor = EDITOR_SPELL
        .lstIndex.Clear

        ' Add the names
        For I = 1 To MAX_SPELLS
            .lstIndex.AddItem I & ": " & Trim$(Spell(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        SpellEditorInit
    
        If adminMin Then
            frmEditor_Spell.Move frmMain.Left + frmMain.Width - frmEditor_Spell.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_SPELL
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleSpellEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateSpell(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim SpellNum As Long
    Dim buffer As clsBuffer
    Dim SpellSize As Long
    Dim SpellData() As Byte
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    SpellNum = buffer.ReadLong
    
    SpellSize = LenB(Spell(SpellNum))
    ReDim SpellData(SpellSize - 1)
    SpellData = buffer.ReadBytes(SpellSize)
    CopyMemory ByVal VarPtr(Spell(SpellNum)), ByVal VarPtr(SpellData(0)), SpellSize
    Set buffer = Nothing
    
    ' Refresh the spell
    Call UpdateSpells
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateSpell", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleSpells(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    For I = 1 To MAX_PLAYER_SPELLS
        PlayerSpells(I) = buffer.ReadLong
    Next
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpells", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleSpell(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer
    Dim SpellSlot As Byte, SpellNum As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    SpellSlot = buffer.ReadByte
    SpellNum = buffer.ReadLong
    
    PlayerSpells(SpellSlot) = SpellNum
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpells", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleLeft(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    Call ClearPlayer(buffer.ReadLong)
    Set buffer = Nothing
    
' Error handler
    Exit Sub
errorhandler:
    HandleError "HandleLeft", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
    Exit Sub
End Sub

Private Sub HandleResourceCache(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    ' If in map editor, we cache it ourselves
    If InMapEditor Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    Resource_Index = buffer.ReadLong
    Resources_Init = False

    If Resource_Index > 0 Then
        ReDim Preserve MapResource(0 To Resource_Index)

        For I = 0 To Resource_Index
            MapResource(I).ResourceState = buffer.ReadByte
            MapResource(I).X = buffer.ReadInteger
            MapResource(I).Y = buffer.ReadInteger
        Next

        Resources_Init = True
    Else
        ReDim MapResource(0 To 1)
    End If

    Set buffer = Nothing
    Exit Sub
        
' Error handler
errorhandler:
    HandleError "HandleResourceCache", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSendPing(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    PingEnd = timeGetTime
    Ping = PingEnd - PingStart
    Call SetPing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSendPing", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleActionMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim X As Long, Y As Long, Message As String, Color As Long, TmpType As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Message = buffer.ReadString
    Color = buffer.ReadLong
    TmpType = buffer.ReadLong
    X = buffer.ReadLong
    Y = buffer.ReadLong

    Set buffer = Nothing
    
    CreateActionMsg Message, Color, TmpType, X, Y
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleActionMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerExp(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    Dim TNL As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Index = buffer.ReadLong
    
    ' Make sure their not the max level
    If Not GetPlayerLevel(Index) = MAX_LEVEL Then
        Call SetPlayerExp(Index, buffer.ReadLong)
    ElseIf GetPlayerExp(Index) > 0 And GetPlayerLevel(Index) = MAX_LEVEL Then
        Call SetPlayerExp(Index, 0)
    End If
    
    TNL = buffer.ReadLong
    
    If Index = MyIndex Then
        ' Exp bar
        If Not GetPlayerLevel(MyIndex) = MAX_LEVEL Then
            If EXPBarInit = False Then
                frmMain.imgEXPBar.Width = ((GetPlayerExp(MyIndex) / EXPBar_Width) / (TNL / EXPBar_Width)) * EXPBar_Width
                EXPBarInit = True
            End If
            
            OldEXPBarWidth = frmMain.imgEXPBar.Width
            NewEXPBarWidth = ((GetPlayerExp(MyIndex) / EXPBar_Width) / (TNL / EXPBar_Width)) * EXPBar_Width
            frmMain.lblExp.Visible = True
            frmMain.lblExp.Caption = GetPlayerExp(Index) & "/" & TNL
        Else
            frmMain.imgEXPBar.Width = EXPBar_Width
            frmMain.lblExp.Visible = False
            frmMain.lblExp.Caption = ""
        End If
    End If
End Sub

Private Sub HandleBlood(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim X As Long, Y As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    X = buffer.ReadLong
    Y = buffer.ReadLong
    Set buffer = Nothing
    
    Call CreateBlood(X, Y)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleBlood", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleAnimation(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    AnimationIndex = AnimationIndex + 1
    If AnimationIndex >= MAX_ANIMATIONS Then AnimationIndex = 1
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    With AnimInstance(AnimationIndex)
        .Animation = buffer.ReadLong
        .X = buffer.ReadLong
        .Y = buffer.ReadLong
        .LockType = buffer.ReadByte
        .LockIndex = buffer.ReadLong
        .Used(0) = True
        .Used(1) = True
        
        If Not .Animation = 1 Then
            ' Play the sound if we've got one
            PlaySoundEntity .X, .Y, SoundEntity.seAnimation, .Animation
        End If
    End With
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAnimation", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapNPCVitals(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim MapNPCNum As Byte, I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    MapNPCNum = buffer.ReadByte
    For I = 1 To Vitals.Vital_Count - 1
        MapNPC(MapNPCNum).Vital(I) = buffer.ReadLong
    Next
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapNPCVitals", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpellCooldown(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Slot As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Slot = buffer.ReadByte
    SpellCD(Slot) = buffer.ReadLong
    Set buffer = Nothing
    Exit Sub

' Error handler
errorhandler:
    HandleError "HandleSpellCooldown", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleClearSpellBuffer(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    SpellBuffer = 0
    SpellBufferTimer = 0
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleClearSpellBuffer", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSayMsg(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Access As Long
    Dim name As String
    Dim Message As String
    Dim Color As Long
    Dim Header As String
    Dim PK As Long
    Dim SayColor As Long
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    name = buffer.ReadString
    Access = buffer.ReadLong
    PK = buffer.ReadLong
    Message = CheckMessage(buffer.ReadString)
    Header = buffer.ReadString
    SayColor = buffer.ReadLong
    
    ' Prevent ascii characters
    Dim Size As Long
    Size = Len(Message)
    For I = 1 To Size
        ' limit the ASCII
        If AscW(Mid$(Message, I, 1)) < 32 Or AscW(Mid$(Message, I, 1)) > 126 Then
            ' limit the extended ASCII
            If AscW(Mid$(Message, I, 1)) < 128 Or AscW(Mid$(Message, I, 1)) > 168 Then
                ' limit the extended ASCII
                If AscW(Mid$(Message, I, 1)) < 224 Or AscW(Mid$(Message, I, 1)) > 253 Then
                    Mid$(Message, I, 1) = ""
                End If
            End If
        End If
    Next
    
    ' Check access level
    If PK = NO Then
        Select Case Access
            Case 0
                Color = QBColor(15)
            Case 1
                Color = QBColor(3)
            Case 2
                Color = QBColor(2)
            Case 3
                Color = QBColor(BrightBlue)
            Case 4
                Color = QBColor(Yellow)
            Case 5
                Color = RGB(255, 165, 0)
        End Select
    Else
        Color = QBColor(BrightRed)
    End If
    
    frmMain.txtChat.SelStart = Len(frmMain.txtChat.text)
    frmMain.txtChat.SelColor = Color
    frmMain.txtChat.SelText = vbNewLine & Header & name & ": "
    
    If SayColor < Orange Then
        frmMain.txtChat.SelColor = QBColor(SayColor)
    Else
        frmMain.txtChat.SelColor = SayColor
    End If
    
    frmMain.txtChat.SelText = Message
    frmMain.txtChat.SelStart = Len(frmMain.txtChat.text) - 1
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSayMsg", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleOpenShop(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim ShopNum As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ShopNum = buffer.ReadLong
    
    Set buffer = Nothing
    
    OpenShop ShopNum
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleOpenShop", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleResetShopAction(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    ShopAction = 0
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleResetShopAction", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleStunned(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    StunDuration = buffer.ReadLong
    
    Set buffer = Nothing
    
' Error handler
    Exit Sub
errorhandler:
    HandleError "HandleStunned", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
    Exit Sub
End Sub

Private Sub HandleBank(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    For I = 1 To MAX_BANK
        Bank.Item(I).num = buffer.ReadLong
        Bank.Item(I).Value = buffer.ReadLong
    Next
    
    InBank = True
    frmMain.picBank.Visible = True
    frmMain.picChatbox.Visible = False
    frmMain.picBank.ZOrder (0)
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleBank", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleOpenTrade(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    InTrade = buffer.ReadLong
    frmMain.picTrade.Visible = True
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleOpenTrade", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleCloseTrade(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    InTrade = 0
    frmMain.picTrade.Visible = False
    frmMain.lblTradeStatus.Caption = vbNullString
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleCloseTrade", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleTradeUpdate(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim DataType As Byte
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    DataType = buffer.ReadByte
    
    If DataType = 0 Then ' Ours
        For I = 1 To MAX_INV
            TradeYourOffer(I).num = buffer.ReadLong
            TradeYourOffer(I).Value = buffer.ReadLong
        Next
        
        frmMain.lblYourWorth.Caption = buffer.ReadLong & " " & Trim$(Item(1).name)
    ElseIf DataType = 1 Then ' Theirs
        For I = 1 To MAX_INV
            TradeTheirOffer(I).num = buffer.ReadLong
            TradeTheirOffer(I).Value = buffer.ReadLong
        Next
        
        frmMain.lblTheirWorth.Caption = buffer.ReadLong & " " & Trim$(Item(1).name)
    End If
    
    Set buffer = Nothing
    
' Error handler
    Exit Sub
errorhandler:
    HandleError "HandleTradeUpdate", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
    Exit Sub
End Sub

Private Sub HandleTradeStatus(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim TradeStatus As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    TradeStatus = buffer.ReadByte
    
    Set buffer = Nothing
    
    Select Case TradeStatus
        Case 0 ' Clear
            frmMain.lblTradeStatus.Caption = vbNullString
        Case 1 ' They've accepted
            frmMain.lblTradeStatus.Caption = "Other player has accepted."
        Case 2 ' You've accepted
            frmMain.lblTradeStatus.Caption = "Waiting for other player to accept."
    End Select
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleTradeStatus", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapReport(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    With frmMapReport
        .lstMaps.Clear
        
        For I = 1 To MAX_MAPS
            .lstMaps.AddItem I & ": " & buffer.ReadString
        Next
        
        .lstMaps.ListIndex = 0
        .Show
    End With
   
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapReport", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayerTarget(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    MyTarget = buffer.ReadByte
    MyTargetType = buffer.ReadByte
    Set buffer = Nothing
End Sub

Private Sub HandleHotbar(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
        
    For I = 1 To MAX_HOTBAR
        Hotbar(I).Slot = buffer.ReadByte
        Hotbar(I).sType = buffer.ReadByte
    Next
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleHotbar", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleTradeRequest(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim theName As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    theName = buffer.ReadString
    
    Dialogue "Trade Request", theName & " has requested to trade with you. Would you like to accept?", DIALOGUE_TYPE_TRADE, True
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleTradeRequest", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePartyInvite(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim name As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    name = buffer.ReadString
    
    Dialogue "Party Invitation", name & " has invited you to a party. Would you like to join?", DIALOGUE_TYPE_PARTY, True
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePartyInvite", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleGuildInvite(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim name As String, Guild As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    name = buffer.ReadString
    Guild = buffer.ReadString
    
    Dialogue "Guild Invitation", name & " has invited you to join the guild " & Guild & "!", DIALOGUE_TYPE_GUILD, True
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleGuildInvite", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePartyUpdate(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, I As Long, InParty As Byte
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    InParty = buffer.ReadByte
    
    ' Exit out if we're not in a party
    If InParty = 0 Then
        Call ZeroMemory(ByVal VarPtr(Party), LenB(Party))
        ' Reset the labels
        For I = 1 To MAX_PARTY_MEMBERS
            frmMain.lblPartyMember(I).Caption = vbNullString
            frmMain.imgPartyHealth(I).Visible = False
            frmMain.imgPartySpirit(I).Visible = False
            Party.num = 0
        Next
        Exit Sub
    End If
    
    ' Carry on otherwise
    For I = 1 To MAX_PARTY_MEMBERS
        Party.Member(I) = buffer.ReadLong
        If Party.Member(I) > 0 Then
            frmMain.lblPartyMember(I).Caption = Trim$(GetPlayerName(Party.Member(I)))
            frmMain.imgPartyHealth(I).Visible = True
            frmMain.imgPartySpirit(I).Visible = True
        Else
            frmMain.lblPartyMember(I).Caption = vbNullString
            frmMain.imgPartyHealth(I).Visible = False
            frmMain.imgPartySpirit(I).Visible = False
        End If
    Next
    Party.MemberCount = buffer.ReadLong
    Party.num = buffer.ReadLong
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePartyUpdate", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePartyVitals(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim playerNum As Long, PartyIndex As Long
    Dim buffer As clsBuffer, I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ' Which player?
    playerNum = buffer.ReadLong
    
    ' Set vitals
    For I = 1 To Vitals.Vital_Count - 1
        Player(playerNum).MaxVital(I) = buffer.ReadLong
        Player(playerNum).Vital(I) = buffer.ReadLong
    Next
    
    ' Find the party number
    For I = 1 To MAX_PARTY_MEMBERS
        If Party.Member(I) = playerNum Then
            PartyIndex = I
        End If
    Next
    
    ' Exit out if wrong data
    If PartyIndex <= 0 Or PartyIndex > MAX_PARTY_MEMBERS Then Exit Sub
    
    ' Hp bar
    frmMain.imgPartyHealth(PartyIndex).Width = ((GetPlayerVital(playerNum, Vitals.HP) / Party_HPWidth) / (GetPlayerMaxVital(playerNum, Vitals.HP) / Party_HPWidth)) * Party_HPWidth
    
    ' Mana bar
    frmMain.imgPartySpirit(PartyIndex).Width = ((GetPlayerVital(playerNum, Vitals.MP) / Party_MPWidth) / (GetPlayerMaxVital(playerNum, Vitals.MP) / Party_MPWidth)) * Party_MPWidth
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePartyVitals", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpawnEventPage(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim id As Long, I As Long, Z As Long, X As Long, Y As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    id = buffer.ReadLong
    
    If id > Map.CurrentEvents Then
        Map.CurrentEvents = id
        ReDim Preserve Map.MapEvents(Map.CurrentEvents)
    End If

    With Map.MapEvents(id)
        .name = buffer.ReadString
        .Dir = buffer.ReadLong
        .ShowDir = .Dir
        .GraphicNum = buffer.ReadLong
        .GraphicType = buffer.ReadLong
        .GraphicX = buffer.ReadLong
        .GraphicX2 = buffer.ReadLong
        .GraphicY = buffer.ReadLong
        .GraphicY2 = buffer.ReadLong
        .MovementSpeed = buffer.ReadLong
        .Moving = 0
        .X = buffer.ReadLong
        .Y = buffer.ReadLong
        .xOffset = 0
        .yOffset = 0
        .Position = buffer.ReadLong
        .Visible = buffer.ReadLong
        .WalkAnim = buffer.ReadLong
        .DirFix = buffer.ReadLong
        .WalkThrough = buffer.ReadLong
        .ShowName = buffer.ReadLong
        .Trigger = buffer.ReadByte
    End With
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpawnEventPage", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventMove(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim id As Long
    Dim X As Long
    Dim Y As Long
    Dim Dir As Long, ShowDir As Long
    Dim Movement As Long, MovementSpeed As Long
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    id = buffer.ReadLong
    X = buffer.ReadLong
    Y = buffer.ReadLong
    Dir = buffer.ReadLong
    ShowDir = buffer.ReadLong
    MovementSpeed = buffer.ReadLong
    
    If id > Map.CurrentEvents Then Exit Sub

    With Map.MapEvents(id)
        .X = X
        .Y = Y
        .Dir = Dir
        .xOffset = 0
        .yOffset = 0
        .Moving = 1
        .ShowDir = ShowDir
        .MovementSpeed = MovementSpeed
        
        Select Case Dir
            Case DIR_UP
                .yOffset = PIC_Y
            Case DIR_DOWN
                .yOffset = PIC_Y * -1
            Case DIR_LEFT
                .xOffset = PIC_X
            Case DIR_RIGHT
                .xOffset = PIC_X * -1
        End Select

    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventMove", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventDir(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim Dir As Byte
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    I = buffer.ReadLong
    Dir = buffer.ReadLong
    
    If I > Map.CurrentEvents Then Exit Sub

    With Map.MapEvents(I)
        .Dir = Dir
        .ShowDir = Dir
        .xOffset = 0
        .yOffset = 0
        .Moving = 0
    End With
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventDir", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventChat(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim Dir As Byte
    Dim buffer As clsBuffer
    Dim Choices As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    frmMain.picEventChat.Visible = True
    frmMain.picEventChat.ZOrder (0)
    EventReplyID = buffer.ReadLong
    EventReplyPage = buffer.ReadLong
    frmMain.lblEventChat.Caption = buffer.ReadString
    frmMain.picEventChat.Visible = True
    frmMain.lblEventChat.Visible = True
    Choices = buffer.ReadLong
    
    InEvent = True
    
    For I = 1 To 4
        frmMain.lblChoices(I).Visible = False
    Next
    
    frmMain.lblEventChatContinue.Visible = False
    
    If Choices = 0 Then
        frmMain.lblEventChatContinue.Visible = True
    Else
        For I = 1 To Choices
            frmMain.lblChoices(I).Visible = True
            frmMain.lblChoices(I).Caption = buffer.ReadString
        Next
    End If
    
    AnotherChat = buffer.ReadLong
    EventFace = buffer.ReadLong
    
    If EventFace = 0 Then
        frmMain.picChatFace.Visible = False
        frmMain.lblEventChat.Left = 12
        frmMain.lblEventChat.Width = 453
    Else
        frmMain.picChatFace.Visible = True
        frmMain.lblEventChat.Left = 112
        frmMain.lblEventChat.Width = 353
    End If
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventChat", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventStart(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    InEvent = True
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventStart", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEventEnd(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    InEvent = False
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEventEnd", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayBGM(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    str = buffer.ReadString
    
    Audio.StopMusic
    Audio.PlayMusic str
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayBGM", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlaySound(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    str = buffer.ReadString

    Audio.PlaySound str, -1, -1
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlaySound", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleFadeoutBGM(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Audio.StopMusic
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleFadeoutBGM", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleStopSound(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String, I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Audio.StopMapSounds
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleFadeoutBGM", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSwitchesAndVariables(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String, I As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    For I = 1 To MAX_SWITCHES
        Switches(I) = buffer.ReadString
    Next
    
    For I = 1 To MAX_VARIABLES
        Variables(I) = buffer.ReadString
    Next
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSwitchesAndVariables", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMapEventData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim str As String, I As Long, X As Long, Y As Long, Z As Long, w As Long

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ' Event data
    Map.EventCount = buffer.ReadLong
        
    If Map.EventCount > 0 Then
        ReDim Map.events(0 To Map.EventCount)
        For I = 1 To Map.EventCount
            With Map.events(I)
                .name = buffer.ReadString
                .Global = buffer.ReadLong
                .X = buffer.ReadLong
                .Y = buffer.ReadLong
                .PageCount = buffer.ReadLong
            End With
            If Map.events(I).PageCount > 0 Then
                ReDim Map.events(I).Pages(0 To Map.events(I).PageCount)
                Dim PageCount As Long
                PageCount = Map.events(I).PageCount
                For X = 1 To PageCount
                    With Map.events(I).Pages(X)
                        .chkVariable = buffer.ReadLong
                        .VariableIndex = buffer.ReadLong
                        .VariableCondition = buffer.ReadLong
                        .VariableCompare = buffer.ReadLong
                            
                        .chkSwitch = buffer.ReadLong
                        .SwitchIndex = buffer.ReadLong
                        .SwitchCompare = buffer.ReadLong
                            
                        .chkHasItem = buffer.ReadLong
                        .HasItemIndex = buffer.ReadLong
                            
                        .chkSelfSwitch = buffer.ReadLong
                        .SelfSwitchIndex = buffer.ReadLong
                        .SelfSwitchCompare = buffer.ReadLong
                            
                        .GraphicType = buffer.ReadLong
                        .Graphic = buffer.ReadLong
                        .GraphicX = buffer.ReadLong
                        .GraphicY = buffer.ReadLong
                        .GraphicX2 = buffer.ReadLong
                        .GraphicY2 = buffer.ReadLong
                            
                        .MoveType = buffer.ReadLong
                        .MoveSpeed = buffer.ReadLong
                        .MoveFreq = buffer.ReadLong
                            
                        .MoveRouteCount = buffer.ReadLong
                        
                        .IgnoreMoveRoute = buffer.ReadLong
                        .RepeatMoveRoute = buffer.ReadLong
                            
                        If .MoveRouteCount > 0 Then
                            ReDim Map.events(I).Pages(X).MoveRoute(0 To .MoveRouteCount)
                            For Y = 1 To .MoveRouteCount
                                .MoveRoute(Y).Index = buffer.ReadLong
                                .MoveRoute(Y).Data1 = buffer.ReadLong
                                .MoveRoute(Y).Data2 = buffer.ReadLong
                                .MoveRoute(Y).Data3 = buffer.ReadLong
                                .MoveRoute(Y).Data4 = buffer.ReadLong
                                .MoveRoute(Y).Data5 = buffer.ReadLong
                                .MoveRoute(Y).Data6 = buffer.ReadLong
                            Next
                        End If
                            
                        .WalkAnim = buffer.ReadLong
                        .DirFix = buffer.ReadLong
                        .WalkThrough = buffer.ReadLong
                        .ShowName = buffer.ReadLong
                        .Trigger = buffer.ReadLong
                        .CommandListCount = buffer.ReadLong
                            
                        .Position = buffer.ReadLong
                    End With
                        
                    If Map.events(I).Pages(X).CommandListCount > 0 Then
                        ReDim Map.events(I).Pages(X).CommandList(0 To Map.events(I).Pages(X).CommandListCount)
                        Dim CommandListCount As Long
                        CommandListCount = Map.events(I).Pages(X).CommandListCount
                        For Y = 1 To CommandListCount
                            Map.events(I).Pages(X).CommandList(Y).CommandCount = buffer.ReadLong
                            Map.events(I).Pages(X).CommandList(Y).ParentList = buffer.ReadLong
                            If Map.events(I).Pages(X).CommandList(Y).CommandCount > 0 Then
                                ReDim Map.events(I).Pages(X).CommandList(Y).Commands(1 To Map.events(I).Pages(X).CommandList(Y).CommandCount)
                                Dim CommandCount As Long
                                CommandCount = Map.events(I).Pages(X).CommandList(Y).CommandCount
                                For Z = 1 To CommandCount
                                    With Map.events(I).Pages(X).CommandList(Y).Commands(Z)
                                        .Index = buffer.ReadLong
                                        .Text1 = buffer.ReadString
                                        .Text2 = buffer.ReadString
                                        .Text3 = buffer.ReadString
                                        .Text4 = buffer.ReadString
                                        .Text5 = buffer.ReadString
                                        .Data1 = buffer.ReadLong
                                        .Data2 = buffer.ReadLong
                                        .Data3 = buffer.ReadLong
                                        .Data4 = buffer.ReadLong
                                        .Data5 = buffer.ReadLong
                                        .Data6 = buffer.ReadLong
                                        .ConditionalBranch.CommandList = buffer.ReadLong
                                        .ConditionalBranch.Condition = buffer.ReadLong
                                        .ConditionalBranch.Data1 = buffer.ReadLong
                                        .ConditionalBranch.Data2 = buffer.ReadLong
                                        .ConditionalBranch.Data3 = buffer.ReadLong
                                        .ConditionalBranch.ElseCommandList = buffer.ReadLong
                                        .MoveRouteCount = buffer.ReadLong
                                        If .MoveRouteCount > 0 Then
                                            ReDim Preserve .MoveRoute(.MoveRouteCount)
                                            For w = 1 To .MoveRouteCount
                                                .MoveRoute(w).Index = buffer.ReadLong
                                                .MoveRoute(w).Data1 = buffer.ReadLong
                                                .MoveRoute(w).Data2 = buffer.ReadLong
                                                .MoveRoute(w).Data3 = buffer.ReadLong
                                                .MoveRoute(w).Data4 = buffer.ReadLong
                                                .MoveRoute(w).Data5 = buffer.ReadLong
                                                .MoveRoute(w).Data6 = buffer.ReadLong
                                            Next
                                        End If
                                    End With
                                Next
                            End If
                        Next
                    End If
                Next
            End If
        Next
    End If
    
    
    ' End event data
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleMapEventData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleChatBubble(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, TargetType As Long, Target As Long, Message As String, colour As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Target = buffer.ReadLong
    TargetType = buffer.ReadLong
    Message = buffer.ReadString
    colour = buffer.ReadLong
    
    CreateChatBubble Target, TargetType, Message, colour
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleChatBubble", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

'Character Editor
Private Sub HandlePlayersOnline(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, playersOnline As String, Length As Long, I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    playersOnline = buffer.ReadString
    
    If frmCharEditor.Visible = True Then
        Length = UBound(charList)
        For I = 0 To Length
            If InStr(playersOnline, charList(I, 0)) Then
                charList(I, 1) = "Online"
            End If
        Next

        frmCharEditor.ResetCharList
    End If
    If refreshingAdminList And FormVisible("frmAdmin") Then
        refreshingAdminList = False
        g_playersOnline = Split(playersOnline, ",")
        frmAdmin.UpdatePlayersOnline
        frmAdmin.selectMyself
    End If

    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpecialEffect", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

'Character Editor
Private Sub HandleAllCharacters(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, temp As String, allCharacters() As String, Length As Long, I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    temp = buffer.ReadString
    allCharacters = Split(temp, ",")
    
    Length = UBound(allCharacters)
    ReDim charList(0 To Length, 1)
    For I = 0 To Length
            charList(I, 0) = allCharacters(I)
            charList(I, 1) = "Offline"
    Next
    frmCharEditor.Visible = True
    SendRequestPlayersOnline
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpecialEffect", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleAccessVerificator(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Success As Byte, Message As String, CurrentAccess As Byte, PlayerName As String, realMessage As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    If FormVisible("frmAdmin") Then
    
        Set buffer = New clsBuffer
        buffer.WriteBytes data()
        
        Success = buffer.ReadByte
        Message = buffer.ReadString
        CurrentAccess = buffer.ReadByte
        
        PlayerName = Split(Message, ":")(1)
        realMessage = Split(Message, ":")(0)
        
        frmAdmin.VerifyAccess PlayerName, Success, realMessage, CurrentAccess
    End If
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleAccessVerificator", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

' Character Editor
Private Sub HandleExtendedPlayerData(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()

    Dim PlayerSize As Long, testSize As Long
    Dim PlayerData() As Byte
    
    PlayerSize = LenB(requestedPlayer)
    ReDim plaData(PlayerSize - 1)
    PlayerData = buffer.ReadBytes(PlayerSize)
    CopyMemory ByVal VarPtr(requestedPlayer), ByVal VarPtr(PlayerData(0)), PlayerSize
    frmCharEditor.fetchPlayerData
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleExtendedPlayerData", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSpecialEffect(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, effectType As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    effectType = buffer.ReadLong
    
    Select Case effectType
        Case EFFECT_TYPE_FADEIN
            FadeType = 1
            FadeAmount = 0
        Case EFFECT_TYPE_FADEOUT
            FadeType = 0
            FadeAmount = 255
        Case EFFECT_TYPE_FLASH
            FlashTimer = timeGetTime + 150
        Case EFFECT_TYPE_FOG
            CurrentFog = buffer.ReadLong
            CurrentFogSpeed = buffer.ReadLong
            CurrentFogOpacity = buffer.ReadLong
        Case EFFECT_TYPE_WEATHER
            CurrentWeather = buffer.ReadLong
            CurrentWeatherIntensity = buffer.ReadLong
        Case EFFECT_TYPE_TINT
            CurrentTintR = buffer.ReadLong
            CurrentTintG = buffer.ReadLong
            CurrentTintB = buffer.ReadLong
            CurrentTintA = buffer.ReadLong
    End Select
    
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSpecialEffect", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleGuildMembers(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim MemberName() As String
    Dim I As Long
    Dim PlayerCount As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    PlayerCount = buffer.ReadLong
    frmMain.lstGuild.Clear
    
    If PlayerCount > 0 Then
        ReDim MemberName(1 To PlayerCount)
    
        For I = 1 To PlayerCount
            MemberName(I) = buffer.ReadString
        Next
        
        For I = 1 To UBound(MemberName)
            frmMain.lstGuild.AddItem MemberName(I)
        Next
    End If
    
    If frmMain.lstGuild.ListCount > 0 Then
        frmMain.lstGuild.Enabled = True
    Else
        frmMain.lstGuild.Enabled = False
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleGuildMembers", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNPCSpellBuffer(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim MapNPCNum As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    MapNPCNum = buffer.ReadLong
    MapNPC(MapNPCNum).SpellBuffer = buffer.ReadLong
    MapNPC(MapNPCNum).SpellBufferTimer = timeGetTime
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNPCSpellBuffer", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleCheckpoint(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Player(MyIndex).name = buffer.ReadLong
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleCheckpoint", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub HandleUpdateLogs(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim LogSize As Long
    Dim LogData() As Byte
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    LogSize = LenB(Log)
    ReDim LogData(LogSize - 1)
    LogData = buffer.ReadBytes(LogSize)
    CopyMemory ByVal VarPtr(Log), ByVal VarPtr(LogData(0)), LogSize
    Set buffer = Nothing
    
    ' Update the Log
    Call AddLog(Trim$(Log.msg), Trim$(Log.file))
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateLogs", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleFriendsList(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim FriendsName As String
    Dim AmountOfFriends As Byte
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    AmountOfFriends = buffer.ReadByte
    
    ' Clear lstbox so it can be updated correctly.
    frmMain.lstFriends.Clear
    
    ' Prevents an error and clears your friends list when you have no friends
    If AmountOfFriends = 0 Then Exit Sub
   
    ' Adds Friends Name to the List
    For I = 1 To AmountOfFriends
        FriendsName = buffer.ReadString
        frmMain.lstFriends.AddItem buffer.ReadString
        Player(MyIndex).Friends(I).name = FriendsName
    Next
    
    If frmMain.lstFriends.ListCount > 0 Then
        frmMain.lstFriends.Enabled = True
    Else
        frmMain.lstFriends.Enabled = False
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleFriendsList", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Sub HandleFoesList(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim FoesName As String
    Dim AmountOfFoes As Byte
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    AmountOfFoes = buffer.ReadByte
    
    ' Clear lstbox so it can be updated correctly.
    frmMain.lstFoes.Clear
    
    ' Prevents an error and clears your Foes list when you have no Foes
    If AmountOfFoes = 0 Then Exit Sub
   
    ' Adds Foes Name to the List
    For I = 1 To AmountOfFoes
        FoesName = buffer.ReadString
        frmMain.lstFoes.AddItem buffer.ReadString
        Player(MyIndex).Foes(I).name = FoesName
    Next
    
    If frmMain.lstFoes.ListCount > 0 Then
        frmMain.lstFoes.Enabled = True
    Else
        frmMain.lstFoes.Enabled = True
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleFoesList", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandlePlayer_HighIndex(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Player_HighIndex = buffer.ReadLong
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandlePlayer_HighIndex", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEntitySound(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim X As Long, Y As Long, EntityType As Long, EntityNum As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    X = buffer.ReadLong
    Y = buffer.ReadLong
    EntityType = buffer.ReadLong
    EntityNum = buffer.ReadLong

    PlaySoundEntity X, Y, EntityType, EntityNum
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleEntitySound", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleNews(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    frmMenu.lblNews.Caption = buffer.ReadString
    Set buffer = Nothing
    StopTimer = False
    
    frmMenu.lblServerStatus.Caption = "Online"
    frmMenu.lblServerStatus.ForeColor = vbGreen
    frmMenu.lblServerStatus.Visible = True
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleNews", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleSound(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Sound As String
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    Sound = buffer.ReadString
    Audio.PlaySound Sound
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleSound", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleBanEditor(ByVal Index As Long, _
                            ByRef data() As Byte, _
                            ByVal StartAddr As Long, _
                            ByVal ExtraVar As Long)

    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    With frmEditor_Ban
        Editor = EDITOR_BAN
        .lstIndex.Clear
        .ZOrder (0)
        
        ' Add the names
        For I = 1 To MAX_BANS
            .lstIndex.AddItem I & ": " & Trim$(Ban(I).PlayerName)
        Next

        .Show
        .lstIndex.ListIndex = 0
        BanEditorInit
        
        If adminMin Then
            frmEditor_Ban.Move frmMain.Left + frmMain.Width - frmEditor_Ban.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_BAN
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleBanEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateBan(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim BanSize As Long
    Dim BanData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Ban
    BanSize = LenB(Ban(n))
    ReDim BanData(BanSize - 1)
    BanData = buffer.ReadBytes(BanSize)
    CopyMemory ByVal VarPtr(Ban(n)), ByVal VarPtr(BanData(0)), BanSize
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateBan", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateTitle(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim TitleSize As Long
    Dim TitleData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Title
    TitleSize = LenB(Title(n))
    ReDim TitleData(TitleSize - 1)
    TitleData = buffer.ReadBytes(TitleSize)
    CopyMemory ByVal VarPtr(Title(n)), ByVal VarPtr(TitleData(0)), TitleSize
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateTitle", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleTitleEditor(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    With frmEditor_Title
        Editor = EDITOR_TITLE
        .lstIndex.Clear
        .ZOrder (0)
        
        ' Add the names
        For I = 1 To MAX_TITLES
            .lstIndex.AddItem I & ": " & Trim$(Title(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        TitleEditorInit
    
        If adminMin Then
            frmEditor_Title.Move frmMain.Left + frmMain.Width - frmEditor_Title.Width, frmMain.Top
        End If
    End With
    
    frmAdmin.ShowEyeFor EDITOR_TITLE
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleTitleEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateMoral(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim MoralSize As Long
    Dim MoralData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Moral
    MoralSize = LenB(Moral(n))
    ReDim MoralData(MoralSize - 1)
    MoralData = buffer.ReadBytes(MoralSize)
    CopyMemory ByVal VarPtr(Moral(n)), ByVal VarPtr(MoralData(0)), MoralSize
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateMoral", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleMoralEditor(ByVal Index As Long, _
                              ByRef data() As Byte, _
                              ByVal StartAddr As Long, _
                              ByVal ExtraVar As Long)

    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    With frmEditor_Moral
        Editor = EDITOR_MORAL
        .lstIndex.Clear
        .ZOrder (0)
        
        ' Add the names
        For I = 1 To MAX_MORALS
            .lstIndex.AddItem I & ": " & Trim$(Moral(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        MoralEditorInit

        If adminMin Then
            frmEditor_Moral.Move frmMain.Left + frmMain.Width - frmEditor_Moral.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_MORAL
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleMoralEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleClassEditor(ByVal Index As Long, _
                              ByRef data() As Byte, _
                              ByVal StartAddr As Long, _
                              ByVal ExtraVar As Long)

    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    With frmEditor_Class
        Editor = EDITOR_CLASS
        .lstIndex.Clear
        .ZOrder (0)
        
        ' Add the names
        For I = 1 To MAX_CLASSES
            .lstIndex.AddItem I & ": " & Trim$(Class(I).name)
        Next

        .Show
        .lstIndex.ListIndex = 0
        ClassEditorInit

        If adminMin Then
            frmEditor_Class.Move frmMain.Left + frmMain.Width - frmEditor_Class.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_CLASS
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleClassEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleCloseClient(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    AlertMsg ("You can't have multiple clients open at once!")
    DestroyGame
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleCloseClient", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateClass(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim ClassSize As Long
    Dim ClassData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Class
    ClassSize = LenB(Class(n))
    ReDim ClassData(ClassSize - 1)
    ClassData = buffer.ReadBytes(ClassSize)
    CopyMemory ByVal VarPtr(Class(n)), ByVal VarPtr(ClassData(0)), ClassSize
    Set buffer = Nothing
    
    ' Update lists
    If FormVisible("frmEditor_Spell") Then
        SpellClassListInit
    End If
    
    If frmMenu.picCharacter.Visible Then
        UpdateCharacterMenu
    End If
    
    If FormVisible("frmEditor_Item") Then
        ItemClassReqListInit
    End If
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateClass", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleLeaveGame(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim ThePlayer As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    ThePlayer = buffer.ReadLong
    Set buffer = Nothing
    
    Call ClearPlayer(ThePlayer)
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleLeaveGame", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub SendCastSpell(ByVal SpellSlot As Byte)
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    
    buffer.WriteLong CCastSpell
    buffer.WriteLong SpellSlot
    SendData buffer.ToArray()
    Set buffer = Nothing
    
    SpellBuffer = SpellSlot
    SpellBufferTimer = timeGetTime
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "SendCastSpell", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub SendNeedMap()
    Dim buffer As clsBuffer
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    
    buffer.WriteLong CNeedMap
    SendData buffer.ToArray()
    Set buffer = Nothing

    InitBattleMusic = False
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "SendNeedMap", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub UpdateCharacterMenu()
    Dim I As Long, n As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    ' Used for if the player is creating a new character
    frmMenu.Visible = True
    frmLoad.Visible = False
    ClearMenuPictures
    
    frmMenu.picCharacter.Visible = True
    
    ' Reset menu buttons
    CurButton_Menu = 2
    MenuButton(2).State = 2
    Call RenderButton_Menu(2)
    ResetMenuButtons
    
    frmMenu.txtCUser.SetFocus
    frmMenu.cmbClass.Clear
    
    n = 1
    
    For I = 1 To MAX_CLASSES
        If Class(I).Locked = 0 And Not Trim$(Class(I).name) = vbNullString Then
            frmMenu.cmbClass.AddItem Trim$(Class(I).name)
            ClassSelection(n) = I
            n = n + 1
        End If
    Next
    
    If frmMenu.cmbClass.ListCount = 0 Then
        frmMenu.cmbClass.AddItem "None"
        ClassSelection(n) = 1
    End If
    
    frmMenu.cmbClass.ListIndex = 0
    Menu_DrawCharacter
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "UpdateCharacterMenu", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleEmoticonEditor(ByVal Index As Long, _
                                 ByRef data() As Byte, _
                                 ByVal StartAddr As Long, _
                                 ByVal ExtraVar As Long)

    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    With frmEditor_Emoticon
        Editor = EDITOR_EMOTICON
        .lstIndex.Clear
        .ZOrder (0)
        
        ' Add the names
        For I = 1 To MAX_EMOTICONS
            .lstIndex.AddItem I & ": " & Trim$(Emoticon(I).Command)
        Next

        .Show
        .lstIndex.ListIndex = 0
        EmoticonEditorInit

        If adminMin Then
            frmEditor_Emoticon.Move frmMain.Left + frmMain.Width - frmEditor_Emoticon.Width, frmMain.Top
        End If
    End With

    frmAdmin.ShowEyeFor EDITOR_EMOTICON
    Exit Sub
    
    ' Error handler
errorhandler:
    HandleError "HandleEmoticonEditor", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleUpdateEmoticon(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim EmoticonSize As Long
    Dim EmoticonData() As Byte

    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler
    
    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    n = buffer.ReadLong
    
    ' Update the Emoticon
    EmoticonSize = LenB(Emoticon(n))
    ReDim EmoticonData(EmoticonSize - 1)
    EmoticonData = buffer.ReadBytes(EmoticonSize)
    CopyMemory ByVal VarPtr(Emoticon(n)), ByVal VarPtr(EmoticonData(0)), EmoticonSize
    Set buffer = Nothing
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleUpdateEmoticon", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Private Sub HandleCheckEmoticon(ByVal Index As Long, ByRef data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' If debug mode, handle error then exit out
    If Options.Debug = 1 Then On Error GoTo errorhandler

    Set buffer = New clsBuffer
    buffer.WriteBytes data()
    
    I = buffer.ReadLong
        
    TempPlayer(I).EmoticonNum = Emoticon(buffer.ReadLong).Pic
    TempPlayer(I).EmoticonTimer = timeGetTime + 2000
    Exit Sub
    
' Error handler
errorhandler:
    HandleError "HandleCheckEmoticon", "modHandleData", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub
