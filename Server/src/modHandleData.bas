Attribute VB_Name = "modHandleData"
Option Explicit

Private Function GetAddress(FunAddr As Long) As Long
    GetAddress = FunAddr
End Function

Public Sub InitMessages()
    HandleDataSub(CNewAccount) = GetAddress(AddressOf HandleNewAccount)
    HandleDataSub(CDelAccount) = GetAddress(AddressOf HandleDelAccount)
    HandleDataSub(CLogin) = GetAddress(AddressOf HandleLogin)
    HandleDataSub(CAddChar) = GetAddress(AddressOf HandleAddChar)
    HandleDataSub(CUseChar) = GetAddress(AddressOf HandleUseChar)
    HandleDataSub(CSayMsg) = GetAddress(AddressOf HandleSayMsg)
    HandleDataSub(CEmoteMsg) = GetAddress(AddressOf HandleEmoteMsg)
    HandleDataSub(CGlobalMsg) = GetAddress(AddressOf HandleGlobalMsg)
    HandleDataSub(CAdminMsg) = GetAddress(AddressOf HandleAdminMsg)
    HandleDataSub(CPrivateMsg) = GetAddress(AddressOf HandlePrivateMsg)
    HandleDataSub(CPlayerMove) = GetAddress(AddressOf HandlePlayerMove)
    HandleDataSub(CPlayerDir) = GetAddress(AddressOf HandlePlayerDir)
    HandleDataSub(CUseItem) = GetAddress(AddressOf HandleUseItem)
    HandleDataSub(CAttack) = GetAddress(AddressOf HandleAttack)
    HandleDataSub(CWarpMeTo) = GetAddress(AddressOf HandleWarpMeTo)
    HandleDataSub(CWarpToMe) = GetAddress(AddressOf HandleWarpToMe)
    HandleDataSub(CWarpTo) = GetAddress(AddressOf HandleWarpTo)
    HandleDataSub(CSetSprite) = GetAddress(AddressOf HandleSetSprite)
    HandleDataSub(CSetPlayerSprite) = GetAddress(AddressOf HandleSetPlayerSprite)
    HandleDataSub(CRequestNewMap) = GetAddress(AddressOf HandleRequestNewMap)
    HandleDataSub(CMapData) = GetAddress(AddressOf HandleMapData)
    HandleDataSub(CNeedMap) = GetAddress(AddressOf HandleNeedMap)
    HandleDataSub(CMapGetItem) = GetAddress(AddressOf HandleMapGetItem)
    HandleDataSub(CMapDropItem) = GetAddress(AddressOf HandleMapDropItem)
    HandleDataSub(CMapRespawn) = GetAddress(AddressOf HandleMapRespawn)
    HandleDataSub(CMapReport) = GetAddress(AddressOf HandleMapReport)
    HandleDataSub(COpenMaps) = GetAddress(AddressOf HandleOpenMaps)
    HandleDataSub(CKickPlayer) = GetAddress(AddressOf HandleKickPlayer)
    HandleDataSub(CMutePlayer) = GetAddress(AddressOf HandleMutePlayer)
    HandleDataSub(CBanPlayer) = GetAddress(AddressOf HandleBanPlayer)
    HandleDataSub(CRequestPlayerData) = GetAddress(AddressOf HandleRequestPlayerData)
    HandleDataSub(CRequestPlayerStats) = GetAddress(AddressOf HandleRequestPlayerStats)
    HandleDataSub(CRequestBans) = GetAddress(AddressOf HandleRequestBans)
    HandleDataSub(CRequestSpellCooldown) = GetAddress(AddressOf HandleRequestSpellCooldown)
    HandleDataSub(CRequestEditMap) = GetAddress(AddressOf HandleRequestEditMap)
    HandleDataSub(CRequestEditEvent) = GetAddress(AddressOf HandleRequestEditEvent)
    HandleDataSub(CRequestEditItem) = GetAddress(AddressOf HandleRequestEditItem)
    HandleDataSub(CSaveItem) = GetAddress(AddressOf HandleSaveItem)
    HandleDataSub(CRequestEditNPC) = GetAddress(AddressOf HandleRequestEditNPC)
    HandleDataSub(CSaveNPC) = GetAddress(AddressOf HandleSaveNPC)
    HandleDataSub(CRequestEditShop) = GetAddress(AddressOf HandleRequestEditShop)
    HandleDataSub(CSaveShop) = GetAddress(AddressOf HandleSaveShop)
    HandleDataSub(CRequestEditSpell) = GetAddress(AddressOf HandleRequestEditSpell)
    HandleDataSub(CSaveSpell) = GetAddress(AddressOf HandleSaveSpell)
    HandleDataSub(CSetAccess) = GetAddress(AddressOf HandleSetAccess)
    HandleDataSub(CWhosOnline) = GetAddress(AddressOf HandleWhosOnline)
    HandleDataSub(CSetMOTD) = GetAddress(AddressOf HandleSetMOTD)
    HandleDataSub(CSetSMotd) = GetAddress(AddressOf HandleSetSMotd)
    HandleDataSub(CSetGMotd) = GetAddress(AddressOf HandleSetGMotd)
    HandleDataSub(CSearch) = GetAddress(AddressOf HandleSearch)
    HandleDataSub(CSpells) = GetAddress(AddressOf HandleSpells)
    HandleDataSub(CCastSpell) = GetAddress(AddressOf HandleCastSpell)
    HandleDataSub(CLeaveGame) = GetAddress(AddressOf HandleLeaveGame)
    HandleDataSub(CSwapInvSlots) = GetAddress(AddressOf HandleSwapInvSlots)
    HandleDataSub(CSwapSpellSlots) = GetAddress(AddressOf HandleSwapSpellSlots)
    HandleDataSub(CSwapHotbarSlots) = GetAddress(AddressOf HandleSwapHotbarSlots)
    HandleDataSub(CRequestEditResource) = GetAddress(AddressOf HandleRequestEditResource)
    HandleDataSub(CSaveResource) = GetAddress(AddressOf HandleSaveResource)
    HandleDataSub(CCheckPing) = GetAddress(AddressOf HandleCheckPing)
    HandleDataSub(CUnequip) = GetAddress(AddressOf HandleUnequip)
    HandleDataSub(CRequestItems) = GetAddress(AddressOf HandleRequestItems)
    HandleDataSub(CRequestNPCs) = GetAddress(AddressOf HandleRequestNPCs)
    HandleDataSub(CRequestResources) = GetAddress(AddressOf HandleRequestResources)
    HandleDataSub(CSpawnItem) = GetAddress(AddressOf HandleSpawnItem)
    HandleDataSub(CUseStatPoint) = GetAddress(AddressOf HandleUseStatPoint)
    HandleDataSub(CRequestEditAnimation) = GetAddress(AddressOf HandleRequestEditAnimation)
    HandleDataSub(CSaveAnimation) = GetAddress(AddressOf HandleSaveAnimation)
    HandleDataSub(CRequestAnimations) = GetAddress(AddressOf HandleRequestAnimations)
    HandleDataSub(CRequestSpells) = GetAddress(AddressOf HandleRequestSpells)
    HandleDataSub(CRequestShops) = GetAddress(AddressOf HandleRequestShops)
    HandleDataSub(CRequestLevelUp) = GetAddress(AddressOf HandleRequestLevelUp)
    HandleDataSub(CForgetSpell) = GetAddress(AddressOf HandleForgetSpell)
    HandleDataSub(CCloseShop) = GetAddress(AddressOf HandleCloseShop)
    HandleDataSub(CBuyItem) = GetAddress(AddressOf HandleBuyItem)
    HandleDataSub(CSellItem) = GetAddress(AddressOf HandleSellItem)
    HandleDataSub(CSwapBankSlots) = GetAddress(AddressOf HandleSwapBankSlots)
    HandleDataSub(CDepositItem) = GetAddress(AddressOf HandleDepositItem)
    HandleDataSub(CWithdrawItem) = GetAddress(AddressOf HandleWithdrawItem)
    HandleDataSub(CCloseBank) = GetAddress(AddressOf HandleCloseBank)
    HandleDataSub(CAdminWarp) = GetAddress(AddressOf HandleAdminWarp)
    HandleDataSub(CFixItem) = GetAddress(AddressOf HandleFixItem)
    HandleDataSub(CTradeRequest) = GetAddress(AddressOf HandleTradeRequest)
    HandleDataSub(CAcceptTrade) = GetAddress(AddressOf HandleAcceptTrade)
    HandleDataSub(CDeclineTrade) = GetAddress(AddressOf HandleDeclineTrade)
    HandleDataSub(CTradeItem) = GetAddress(AddressOf HandleTradeItem)
    HandleDataSub(CUntradeItem) = GetAddress(AddressOf HandleUntradeItem)
    HandleDataSub(CCanTrade) = GetAddress(AddressOf HandleCanTrade)
    HandleDataSub(CHotbarChange) = GetAddress(AddressOf HandleHotbarChange)
    HandleDataSub(CAcceptTradeRequest) = GetAddress(AddressOf HandleAcceptTradeRequest)
    HandleDataSub(CDeclineTradeRequest) = GetAddress(AddressOf HandleDeclineTradeRequest)
    HandleDataSub(CPartyRequest) = GetAddress(AddressOf HandlePartyRequest)
    HandleDataSub(CAcceptParty) = GetAddress(AddressOf HandleAcceptParty)
    HandleDataSub(CDeclineParty) = GetAddress(AddressOf HandleDeclineParty)
    HandleDataSub(CPartyLeave) = GetAddress(AddressOf HandlePartyLeave)
    HandleDataSub(CPartyMsg) = GetAddress(AddressOf HandlePartyMsg)
    HandleDataSub(CGuildCreate) = GetAddress(AddressOf HandleGuildCreate)
    HandleDataSub(CGuildChangeAccess) = GetAddress(AddressOf HandleGuildChangeAccess)
    HandleDataSub(CGuildInvite) = GetAddress(AddressOf HandleGuildInvite)
    HandleDataSub(CAcceptGuild) = GetAddress(AddressOf HandleAcceptGuild)
    HandleDataSub(CDeclineGuild) = GetAddress(AddressOf HandleDeclineGuild)
    HandleDataSub(CGuildRemove) = GetAddress(AddressOf HandleGuildRemove)
    HandleDataSub(CGuildDisband) = GetAddress(AddressOf HandleGuildDisband)
    HandleDataSub(CGuildMsg) = GetAddress(AddressOf HandleGuildMsg)
    HandleDataSub(CBreakSpell) = GetAddress(AddressOf HandleBreakSpell)
    HandleDataSub(CAddFriend) = GetAddress(AddressOf HandleAddFriend)
    HandleDataSub(CRemoveFriend) = GetAddress(AddressOf HandleRemoveFriend)
    HandleDataSub(CFriendsList) = GetAddress(AddressOf HandleUpdateFriendsList)
    HandleDataSub(CAddFoe) = GetAddress(AddressOf HandleAddFoe)
    HandleDataSub(CRemoveFoe) = GetAddress(AddressOf HandleRemoveFoe)
    HandleDataSub(CFoesList) = GetAddress(AddressOf HandleUpdateFoesList)
    HandleDataSub(CUpdateData) = GetAddress(AddressOf HandleUpdateData)
    HandleDataSub(CSaveBan) = GetAddress(AddressOf HandleSaveBan)
    HandleDataSub(CRequestEditBans) = GetAddress(AddressOf HandleBanEditor)
    HandleDataSub(CSetTitle) = GetAddress(AddressOf HandleSetTitle)
    HandleDataSub(CRequestEditTitles) = GetAddress(AddressOf HandleTitleEditor)
    HandleDataSub(CSaveTitle) = GetAddress(AddressOf HandleSaveTitle)
    HandleDataSub(CRequestTitles) = GetAddress(AddressOf HandleRequestTitles)
    HandleDataSub(CChangeStatus) = GetAddress(AddressOf HandleChangeStatus)
    HandleDataSub(CRequestEditMorals) = GetAddress(AddressOf HandleMoralEditor)
    HandleDataSub(CSaveMoral) = GetAddress(AddressOf HandleSaveMoral)
    HandleDataSub(CRequestMorals) = GetAddress(AddressOf HandleRequestMorals)
    HandleDataSub(CRequestEditClasses) = GetAddress(AddressOf HandleClassEditor)
    HandleDataSub(CSaveClass) = GetAddress(AddressOf HandleSaveClass)
    HandleDataSub(CRequestClasses) = GetAddress(AddressOf HandleRequestClasses)
    HandleDataSub(CDestoryItem) = GetAddress(AddressOf HandleDestroyItem)
    HandleDataSub(CRequestEditEmoticons) = GetAddress(AddressOf HandleEmoticonEditor)
    HandleDataSub(CSaveEmoticon) = GetAddress(AddressOf HandleSaveEmoticon)
    HandleDataSub(CRequestEmoticons) = GetAddress(AddressOf HandleRequestEmoticons)
    HandleDataSub(CCheckEmoticon) = GetAddress(AddressOf HandleCheckEmoticon)
    
    HandleDataSub(CEventChatReply) = GetAddress(AddressOf HandleEventChatReply)
    HandleDataSub(CEvent) = GetAddress(AddressOf HandleEvent)
    HandleDataSub(CRequestSwitchesAndVariables) = GetAddress(AddressOf HandleRequestSwitchesAndVariables)
    HandleDataSub(CSwitchesAndVariables) = GetAddress(AddressOf HandleSwitchesAndVariables)
    
    ' Character Editor
    HandleDataSub(CRequestAllCharacters) = GetAddress(AddressOf HandleRequestAllCharacters)
    HandleDataSub(CRequestPlayersOnline) = GetAddress(AddressOf HandleRequestPlayersOnline)
    HandleDataSub(CRequestExtendedPlayerData) = GetAddress(AddressOf HandleRequestExtendedPlayerData)
    HandleDataSub(CCharacterUpdate) = GetAddress(AddressOf HandleCharacterUpdate)
    
    HandleDataSub(CTarget) = GetAddress(AddressOf HandleTarget)
    
    'Quests
    HandleDataSub(CRequestEditQuests) = GetAddress(AddressOf HandleRequestEditQuests)
    HandleDataSub(CSaveQuest) = GetAddress(AddressOf HandleSaveQuest)
    HandleDataSub(CQuitQuest) = GetAddress(AddressOf HandleQuitQuest)
    HandleDataSub(CAcceptQuest) = GetAddress(AddressOf HandleQuestAccept)
    HandleDataSub(CRequestQuests) = GetAddress(AddressOf HandleRequestQuests)
End Sub

' Will handle the packet data
Sub HandleData(ByVal Index As Long, ByRef Data() As Byte)
    Dim buffer As clsBuffer
    Dim MsgType As Long

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    MsgType = buffer.ReadLong
    
    If MsgType < 0 Then Exit Sub
    If MsgType >= CMSG_COUNT Then Exit Sub

    CallWindowProc HandleDataSub(MsgType), Index, buffer.ReadBytes(buffer.Length), 0, 0
End Sub

Sub HandleRequestQuests(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendQuests Index
End Sub

Sub HandleQuestAccept(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
Dim buffer As clsBuffer
Dim QuestID As Long
    Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        QuestID = buffer.ReadLong
    Set buffer = Nothing
    
    If QuestID < 1 Or QuestID > MAX_QUESTS Then Exit Sub
    
    'set the player questid to this quest, and set the cli/greeter to the first one in the quest
    Call SetPlayerQuestCLIID(Index, QuestID, 1)
    Call SetPlayerQuestTaskID(Index, QuestID, 2)
    Call SendPlayerData(Index)
    
    'Start processing the tasks of the quest.
    Call HandleQuestTask(Index, QuestID, GetPlayerQuestCLIID(Index, QuestID), GetPlayerQuestTaskID(Index, QuestID), False)
End Sub

Sub HandleQuitQuest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
Dim buffer As clsBuffer
Dim QuestNum As Long
    Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        QuestNum = buffer.ReadLong
    Set buffer = Nothing
    
    If QuestNum > 0 Then
        Call SetPlayerQuestCLIID(Index, QuestNum, 0)
        Call SetPlayerQuestTaskID(Index, QuestNum, 0)
        Call SetPlayerQuestAmount(Index, QuestNum, 0)
        Call SendPlayerData(Index)
    End If
End Sub

' :::::::::::::::::::::::
' :: Save quest packet ::
' :::::::::::::::::::::::
Sub HandleSaveQuest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
Dim buffer As clsBuffer
Dim I As Long, II As Long
Dim QuestNum As Long
    Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        QuestNum = buffer.ReadLong
        With Quest(QuestNum)
        
            .Name = buffer.ReadString
            .Description = buffer.ReadString
            .CanBeRetaken = buffer.ReadLong
            .Max_CLI = buffer.ReadLong
            
            If .Max_CLI > 0 Then
                ReDim .CLI(1 To .Max_CLI)
                
                For I = 1 To .Max_CLI
                    .CLI(I).ItemIndex = buffer.ReadLong
                    .CLI(I).isNPC = buffer.ReadLong
                    .CLI(I).Max_Actions = buffer.ReadLong
                    
                    If .CLI(I).Max_Actions > 0 Then
                        ReDim Preserve .CLI(I).Action(1 To .CLI(I).Max_Actions)
                        
                        For II = 1 To .CLI(I).Max_Actions
                            .CLI(I).Action(II).TextHolder = buffer.ReadString
                            .CLI(I).Action(II).ActionID = buffer.ReadLong
                            .CLI(I).Action(II).Amount = buffer.ReadLong
                            .CLI(I).Action(II).MainData = buffer.ReadLong
                            .CLI(I).Action(II).QuadData = buffer.ReadLong
                            .CLI(I).Action(II).SecondaryData = buffer.ReadLong
                            .CLI(I).Action(II).TertiaryData = buffer.ReadLong
                        Next II
                    End If
                Next I
            End If
            
            .Requirements.AccessReq = buffer.ReadLong
            .Requirements.ClassReq = buffer.ReadLong
            .Requirements.GenderReq = buffer.ReadLong
            .Requirements.LevelReq = buffer.ReadLong
            .Requirements.SkillLevelReq = buffer.ReadLong
            .Requirements.SkillReq = buffer.ReadLong
            
            For I = 1 To Stats.Stat_count - 1
                .Requirements.Stat_Req(I) = buffer.ReadLong
            Next I
        
        End With
        
        Call SaveQuest(QuestNum)
    
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::::::::::::
' :: Request edit quest packet ::
' :::::::::::::::::::::::::::::::
Sub HandleRequestEditQuests(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim EventNum As Long
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteLong SEditQuest
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

Private Sub HandleNewAccount(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim Password As String
    Dim HDSerial As String
    Dim I As Long
    Dim n As Long

    ' Clear out old data
    If IsLoggedIn(Index) Then Call ClearAccount(Index)
    
    If Not IsPlaying(Index) Then
        ' Make sure the server isn't being shutdown or restarted
        If IsShuttingDown Then
            Call AlertMsg(Index, "Server is either rebooting or being shutdown.")
            Exit Sub
        End If
        
        Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        
        HDSerial = buffer.ReadString
        
        ' Check for ban
        If IsBanned(Index, HDSerial) Then Exit Sub

        ' Check version
        If Not App.Major = buffer.ReadLong Or Not App.Minor = buffer.ReadLong Or Not App.Revision = buffer.ReadLong Then
            Call AlertMsg(Index, "Version outdated, please visit " & Options.Website & " for more information on new releases and run the updater.")
            Exit Sub
        End If

        ' Get the data
        Name = buffer.ReadString
        Password = buffer.ReadString

        ' Prevent hacking
        If Len(Trim$(Name)) < 3 Or Len(Trim$(Name)) > NAME_LENGTH Then Exit Sub
        If Len(Trim$(Password)) < 3 Or Len(Trim$(Password)) > NAME_LENGTH Then Exit Sub
        
        ' Prevent hacking
        For I = 1 To Len(Name)
            n = AscW(Mid$(Name, I, 1))
            If Not IsNameLegal(n) Then
                Call AlertMsg(Index, "Invalid name, only letters, numbers, spaces, and _ are allowed.")
                Exit Sub
            End If
        Next
        
        For I = 1 To Len(Password)
            n = AscW(Mid$(Password, I, 1))
            If Not IsNameLegal(n) Then
                Call AlertMsg(Index, "Invalid password, only letters, numbers, spaces, and _ are allowed.")
                Exit Sub
            End If
        Next

        ' Check to see if account already exists
        If Not AccountExist(Name) Then
            Call AddAccount(Index, Name, Password)
            Call TextAdd("Account " & Name & " has been created.")
            Call AddLog("Account " & Name & " has been created.", "Player")
            
            ' Load the player
            Call LoadAccount(Index, Name)
            
            ' Check if character data has been created
            If Len(Trim$(Account(Index).Chars(GetPlayerChar(Index)).Name)) > 0 Then
                ' We have a character
                HandleUseChar Index
            Else
                If Not IsPlaying(Index) Then
                    Call SendNewCharClasses(Index)
                End If
            End If
                    
            ' Show the player up on the socket status
            Call AddLog(GetPlayerLogin(Index) & " has logged in from " & GetPlayerIP(Index) & ".", "Player")
            Call TextAdd(GetPlayerLogin(Index) & " has logged in from " & GetPlayerIP(Index) & ".")
        Else
            Call AlertMsg(Index, "That account name is already in use!")
        End If
        Set buffer = Nothing
    End If
End Sub

' :::::::::::::::::::::::::::
' :: Delete account packet ::
' :::::::::::::::::::::::::::
Private Sub HandleDelAccount(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim Password As String
    Dim HDSerial As String
    Dim I As Long
    
    ' Clear out old data
    If IsLoggedIn(Index) Then Call ClearAccount(Index)

    If Not IsPlaying(Index) Then
        Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        
        HDSerial = buffer.ReadString
        
        ' Check for ban
        If IsBanned(Index, HDSerial) Then Exit Sub
        
        ' Check version
        If Not App.Major = buffer.ReadLong Or Not App.Minor = buffer.ReadLong Or Not App.Revision = buffer.ReadLong Then
            Call AlertMsg(Index, "Version outdated, please visit " & Options.Website & " for more information on new releases and run the updater.")
            Exit Sub
        End If
        
        ' Get the data
        Name = buffer.ReadString
        Password = buffer.ReadString

        ' Prevent hacking
        If Len(Trim$(Name)) < 3 Or Len(Trim$(Name)) > NAME_LENGTH Then Exit Sub
        If Len(Trim$(Password)) < 3 Or Len(Trim$(Password)) > NAME_LENGTH Then Exit Sub
        
        If Not AccountExist(Name) Then
            Call AlertMsg(Index, "That account name does not exist.")
            Exit Sub
        End If

        If Not PasswordOK(Name, Password) Then
            Call AlertMsg(Index, "Incorrect password.")
            Exit Sub
        End If

        ' Load the player
        Call LoadAccount(Index, Name)
        
        ' Check for ban
        If IsBanned(Index, GetPlayerHDSerial(Index)) Then Exit Sub
        
        ' Delete names from master name file
        If Len(Trim$(Account(Index).Chars(GetPlayerChar(Index)).Name)) > 0 Then
            Call DeleteName(Account(Index).Chars(GetPlayerChar(Index)).Name)
        End If

        Call ClearAccount(Index)
        
        ' Everything went ok
        Call Kill(App.path & "\data\Accounts\" & Trim$(Name) & ".bin")
        Call AddLog("Account " & Trim$(Name) & " has been deleted.", "Player")
        Call AlertMsg(Index, "Your account has been deleted.")
        
        Set buffer = Nothing
    End If
End Sub

' ::::::::::::::::::
' :: Login packet ::
' ::::::::::::::::::
Private Sub HandleLogin(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim Password As String
    Dim I As Long
    Dim n As Long
    Dim HDSerial As String

    ' Clear out old data
    If IsLoggedIn(Index) Then Call ClearAccount(Index)

    If Not IsPlaying(Index) Then
        ' Make sure the server isn't being shutdown or restarted
        If IsShuttingDown Then
            Call AlertMsg(Index, "Server is either rebooting or shutting down.")
            Exit Sub
        End If
        
        Set buffer = New clsBuffer
        buffer.WriteBytes Data()

        HDSerial = buffer.ReadString
        
        ' Check for ban
        If IsBanned(Index, HDSerial) Then Exit Sub

        ' Check version
        If Not App.Major = buffer.ReadLong Or Not App.Minor = buffer.ReadLong Or Not App.Revision = buffer.ReadLong Then
            Call AlertMsg(Index, "Version outdated, please visit " & Options.Website & " for more information on new releases and run the updater.")
            Exit Sub
        End If
        
        ' Get the data
        Name = Trim$(buffer.ReadString)
        Password = Trim$(buffer.ReadString)
        
        ' Prevent hacking
        If Len(Trim$(Name)) < 3 Or Len(Trim$(Name)) > NAME_LENGTH Then Exit Sub
        If Len(Trim$(Password)) < 3 Or Len(Trim$(Password)) > NAME_LENGTH Then Exit Sub
        
        If Not AccountExist(Name) Then
            Call AlertMsg(Index, "That account name does not exist.")
            Exit Sub
        End If

        If Not PasswordOK(Name, Password) Then
            Call AlertMsg(Index, "Incorrect password.")
            Exit Sub
        End If

        If IsMultiAccounts(Name) Then
            Call AlertMsg(Index, "Multiple account logins are not authorized.")
            Exit Sub
        End If
        
        ' Load the player
        Call LoadAccount(Index, Name)
        
        TempPlayer(Index).HDSerial = HDSerial
        
        ' Check if character data has been created
        If Len(GetPlayerName(Index)) > 0 Then
            ' Load character
            HandleUseChar Index
        Else
            If Not IsPlaying(Index) Then
                Call SendNewCharClasses(Index)
            End If
        End If
        
        ' Show the player up on the socket status
        Call AddLog(GetPlayerLogin(Index) & " has logged in from " & GetPlayerIP(Index) & ".", "Player")
        Call TextAdd(GetPlayerLogin(Index) & " has logged in from " & GetPlayerIP(Index) & ".")
        
        Set buffer = Nothing
    End If
End Sub

' ::::::::::::::::::::::::::
' :: Add character packet ::
' ::::::::::::::::::::::::::
Private Sub HandleAddChar(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim Password As String
    Dim Gender As Byte
    Dim ClassNum As Byte
    Dim I As Long
    Dim n As Long

    If Not IsPlaying(Index) Then
        ' Make sure the server isn't being shutdown or restarted
        If IsShuttingDown Then
            Call AlertMsg(Index, "Server is either rebooting or being shutdown.")
            Exit Sub
        End If
        
        Set buffer = New clsBuffer
        buffer.WriteBytes Data()
        
        Name = buffer.ReadString
        Gender = buffer.ReadByte
        ClassNum = buffer.ReadByte
        
        ' Prevent hacking
        If Len(Trim$(Name)) < 3 Or Len(Trim$(Name)) > NAME_LENGTH Then Exit Sub

        ' Prevent hacking
        For I = 1 To Len(Name)
            n = AscW(Mid$(Name, I, 1))
            
            If Not IsNameLegal(n) Then
                Call AlertMsg(Index, "Invalid name, only letters, numbers, spaces, and _ are allowed.")
                Exit Sub
            End If
        Next

        ' Prevent hacking
        If (Gender < GENDER_MALE) Or (Gender > GENDER_FEMALE) Then Exit Sub
        If ClassNum < 1 Or ClassNum > MAX_CLASSES Then Exit Sub
        If Class(ClassNum).Locked = 1 Then Exit Sub
        If Trim$(Class(ClassNum).Name) = vbNullString And Not ClassNum = 1 Then Exit Sub

        ' Check if char already exists in slot
        If CharExist(Index) Then
            Call AlertMsg(Index, "Character already exists!")
            Exit Sub
        End If

        ' Check if name is already in use
        If FindChar(Name) Then
            Call AlertMsg(Index, "That name is already in use!")
            Exit Sub
        End If

        ' Everything went ok, add the character
        Call AddChar(Index, Name, Gender, ClassNum)
        Call AddLog("Character " & Name & " added to " & GetPlayerLogin(Index) & "'s account.", "Player")
        
        ' Log them in
        HandleUseChar Index
        
        Set buffer = Nothing
    End If
End Sub

' ::::::::::::::::::::
' :: Social packets ::
' ::::::::::::::::::::
Private Sub HandleSayMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Msg As String
    Dim LogMsg As String
    Dim I As Long
    Dim buffer As clsBuffer
    Dim MapNum As Integer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    MapNum = GetPlayerMap(Index)
    Msg = buffer.ReadString
    Set buffer = Nothing
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    LogMsg = GetPlayerName(Index) & ": " & Msg

    ' Add the logs
    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            If GetPlayerMap(I) = GetPlayerMap(Index) Then
                Call SendLogs(I, LogMsg, "Map")
            End If
        End If
    Next
    
    Call AddLog("Map #" & GetPlayerMap(Index) & ": " & GetPlayerName(Index) & " says, '" & Msg & "'", "Player")
    Call SayMsg_Map(MapNum, Index, Msg, White)
    Call SendChatBubble(GetPlayerMap(Index), Index, TARGET_TYPE_PLAYER, Msg, White)
End Sub

Private Sub HandleEmoteMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Msg As String
    Dim LogMsg As String
    Dim I As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Msg = buffer.ReadString
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    LogMsg = GetPlayerName(Index) & " " & Right$(Msg, Len(Msg) - 1)

    ' Add the logs
    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            If GetPlayerMap(I) = GetPlayerMap(Index) Then
                Call SendLogs(I, LogMsg, "Map")
            End If
        End If
    Next

    Call AddLog("Map #" & GetPlayerMap(Index) & ": " & GetPlayerName(Index) & " " & Msg, "Player")
    Call MapMsg(GetPlayerMap(Index), GetPlayerName(Index) & " " & Msg, EmoteColor)
    
    Set buffer = Nothing
End Sub

Private Sub HandleGlobalMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Msg As String
    Dim LogMsg As String
    Dim s As String
    Dim I As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Msg = buffer.ReadString
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    LogMsg = GetPlayerName(Index) & ": " & Msg
    
    ' Add the logs
    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            Call SendLogs(I, LogMsg, "Global")
        End If
    Next

    s = "[Global] " & GetPlayerName(Index) & ": " & Msg
    
    Call SayMsg_Global(Index, Msg, White)
    Call AddLog(s, "Player")
    Call TextAdd(s)
    
    Set buffer = Nothing
End Sub

Private Sub HandlePrivateMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Msg As String
    Dim MsgTo As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    MsgTo = FindPlayer(buffer.ReadString)
    Msg = buffer.ReadString
    
    If Msg = vbNullString Then Exit Sub
    
    ' Check if they are trying to talk to themselves
    If MsgTo <> Index Then
        If MsgTo > 0 Then
            ' Can't invite if the player is a foe
            If IsAFoe(Index, MsgTo) = True Then Exit Sub
            
            ' Add server log
            Call AddLog(GetPlayerName(Index) & " whispers " & GetPlayerName(MsgTo) & ", '" & Msg & "'", "Player")
            
            ' Send the messages
            Call PlayerMsg(MsgTo, "[Private] " & GetPlayerName(Index) & " whispers you, '" & Msg & "'", Pink)
            Call PlayerMsg(Index, "[Private] You whisper " & GetPlayerName(MsgTo) & ", '" & Msg & "'", Pink)
        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
        End If
    Else
        Call PlayerMsg(Index, "You can't message yourself.", BrightRed)
    End If
    
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::::::::::
' :: Moving character packet ::
' :::::::::::::::::::::::::::::
Sub HandlePlayerMove(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Dir As Byte, I As Long
    Dim Movement As Byte
    Dim buffer As clsBuffer
    Dim TmpX As Integer, TmpY As Integer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    Dir = buffer.ReadByte
    Movement = buffer.ReadByte
    TmpX = buffer.ReadInteger
    TmpY = buffer.ReadInteger
    Set buffer = Nothing

    Call PlayerMove(Index, Dir, Movement)
End Sub

' :::::::::::::::::::::::::::::
' :: Moving character packet ::
' :::::::::::::::::::::::::::::
Sub HandlePlayerDir(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Dir As Byte
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    If TempPlayer(Index).GettingMap = YES Then Exit Sub

    Dir = buffer.ReadLong
    Set buffer = Nothing

    ' Prevent hacking
    If Dir < DIR_UP Or Dir > DIR_RIGHT Then Exit Sub

    Call SetPlayerDir(Index, Dir)
    Set buffer = New clsBuffer
    buffer.WriteLong SPlayerDir
    buffer.WriteLong Index
    buffer.WriteByte GetPlayerDir(Index)
    SendDataToMapBut Index, GetPlayerMap(Index), buffer.ToArray()
End Sub

' :::::::::::::::::::::
' :: Use item packet ::
' :::::::::::::::::::::
Sub HandleUseItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim InvNum As Byte
    Dim InvItem As Integer
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    InvNum = buffer.ReadByte
    Set buffer = Nothing

    ' Check for subscript out of range
    If InvNum < 1 Or InvNum > MAX_INV Then Exit Sub
    
    InvItem = GetPlayerInvItemNum(Index, InvNum)
            
    UseItem Index, InvNum
End Sub

' ::::::::::::::::::::::::::
' :: Player attack packet ::
' ::::::::::::::::::::::::::
Sub HandleAttack(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim n As Long
    Dim Damage As Long
    Dim TempIndex As Long
    Dim MapNum As Integer, DirReq As Long, ChatNPC As Long
    Dim X As Long, Y As Long
    Dim WeaponSlot As Long
    
    ' Can't attack while casting
    If TempPlayer(Index).SpellBuffer.Spell > 0 Then Exit Sub
    
    ' Can't attack while stunned
    If TempPlayer(Index).StunDuration > 0 Then Exit Sub

    ' Send this packet so they can see the person attacking
    Call SendAttack(Index)
    
    ' Try to attack a player
    For I = 1 To Player_HighIndex
        TempIndex = I
    
        ' Make sure we dont try to attack ourselves
        If Not TempIndex = Index Then
            TryPlayerAttackPlayer Index, I
        End If
    Next
    
    ' Try to attack a npc
    For I = 1 To Map(GetPlayerMap(Index)).NPC_HighIndex
        TryPlayerAttackNPC Index, I
    Next
    
    ' Check if we've got a remote chat tile
    MapNum = GetPlayerMap(Index)
    X = GetPlayerX(Index)
    Y = GetPlayerY(Index)

    Select Case GetPlayerDir(Index)
        Case DIR_UP
            If GetPlayerY(Index) = 0 Then Exit Sub
            X = GetPlayerX(Index)
            Y = GetPlayerY(Index) - 1
        Case DIR_DOWN
            If GetPlayerY(Index) = Map(MapNum).MaxY Then Exit Sub
            X = GetPlayerX(Index)
            Y = GetPlayerY(Index) + 1
        Case DIR_LEFT
            If GetPlayerX(Index) = 0 Then Exit Sub
            X = GetPlayerX(Index) - 1
            Y = GetPlayerY(Index)
        Case DIR_RIGHT
            If GetPlayerX(Index) = Map(MapNum).MaxX Then Exit Sub
            X = GetPlayerX(Index) + 1
            Y = GetPlayerY(Index)
    End Select
    
    ' Check trade skills
    CheckResource Index, X, Y
End Sub

' ::::::::::::::::::::::
' :: Use stats packet ::
' ::::::::::::::::::::::
Sub HandleUseStatPoint(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim PointType As Byte
    Dim buffer As clsBuffer
    Dim sMes As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    PointType = buffer.ReadByte
    Set buffer = Nothing

    ' Prevent hacking
    If (PointType < 0) Or (PointType > Stats.Stat_count) Then Exit Sub

    ' Make sure they have points
    If GetPlayerPoints(Index) < 1 Then Exit Sub
    
    ' Make sure they're not maxed
    If GetPlayerRawStat(Index, PointType) >= MAX_STAT Then
        PlayerMsg Index, "You can't spend any more points on that stat!", BrightRed
        Exit Sub
    End If
    
    ' Take away a stat point
    Call SetPlayerPoints(Index, GetPlayerPoints(Index) - 1)

    ' Add the stat
    Select Case PointType
        Case Stats.Strength
            Call SetPlayerStat(Index, Stats.Strength, GetPlayerRawStat(Index, Stats.Strength) + 1)
            sMes = "Strength"
        Case Stats.Endurance
            Call SetPlayerStat(Index, Stats.Endurance, GetPlayerRawStat(Index, Stats.Endurance) + 1)
            sMes = "Endurance"
        Case Stats.Intelligence
            Call SetPlayerStat(Index, Stats.Intelligence, GetPlayerRawStat(Index, Stats.Intelligence) + 1)
            sMes = "Intelligence"
        Case Stats.Agility
            Call SetPlayerStat(Index, Stats.Agility, GetPlayerRawStat(Index, Stats.Agility) + 1)
            sMes = "Agility"
        Case Stats.Spirit
            Call SetPlayerStat(Index, Stats.Spirit, GetPlayerRawStat(Index, Stats.Spirit) + 1)
            sMes = "Spirit"
    End Select
    
    ' Send the message
    SendActionMsg GetPlayerMap(Index), "+1 " & sMes, White, 1, (GetPlayerX(Index) * 32), (GetPlayerY(Index) * 32)

    ' Send the update
    Call SendPlayerStats(Index)
    Call SendPlayerPoints(Index)
End Sub

' ::::::::::::::::::::::::::::::::
' :: Player info request packet ::
' ::::::::::::::::::::::::::::::::
Sub HandlePlayerInfoRequest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Name As String
    Dim I As Long
    Dim n As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    Name = buffer.ReadString
    
    Set buffer = Nothing
    
    I = FindPlayer(Name)
End Sub

' :::::::::::::::::::::::
' :: Warp me to packet ::
' :::::::::::::::::::::::
Sub HandleWarpMeTo(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    ' The player
    n = FindPlayer(buffer.ReadString)
    
    Set buffer = Nothing

    If n <> Index Then
        If n > 0 Then
            Call PlayerWarp(Index, GetPlayerMap(n), GetPlayerX(n), GetPlayerY(n))
            Call PlayerMsg(n, GetPlayerName(Index) & " has warped to you.", BrightBlue)
            Call PlayerMsg(Index, "You have been warped to " & GetPlayerName(n) & ".", BrightBlue)
            Call AddLog(GetPlayerName(Index) & " has warped to " & GetPlayerName(n) & ", map #" & GetPlayerMap(n) & ".", "Staff")
        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
        End If

    Else
        Call PlayerMsg(Index, "You can't warp to yourself!", BrightRed)
    End If

End Sub

' :::::::::::::::::::::::
' :: Warp to me packet ::
' :::::::::::::::::::::::
Sub HandleWarpToMe(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    ' The player
    n = FindPlayer(buffer.ReadString)
    
    Set buffer = Nothing

    If n <> Index Then
        If n > 0 Then
            Call PlayerWarp(n, GetPlayerMap(Index), GetPlayerX(Index), GetPlayerY(Index))
            Call PlayerMsg(n, "You have been summoned by " & GetPlayerName(Index) & ".", BrightBlue)
            Call PlayerMsg(Index, GetPlayerName(n) & " has been summoned.", BrightBlue)
            Call AddLog(GetPlayerName(Index) & " has warped " & GetPlayerName(n) & " to self, map #" & GetPlayerMap(Index) & ".", "Staff")
        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
        End If

    Else
        Call PlayerMsg(Index, "You can't warp to yourself!", BrightRed)
    End If
End Sub

' ::::::::::::::::::::::::
' :: Warp to map packet ::
' ::::::::::::::::::::::::
Sub HandleWarpTo(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    ' The map
    n = buffer.ReadInteger
    Set buffer = Nothing

    ' Prevent hacking
    If n < 1 Or n > MAX_MAPS Then Exit Sub

    Call PlayerWarp(Index, n, GetPlayerX(Index), GetPlayerY(Index))
    Call PlayerMsg(Index, "You have been warped to map #" & n, BrightBlue)
    Call AddLog(GetPlayerName(Index) & " warped to map #" & n & ".", "Staff")
End Sub

' :::::::::::::::::::::::
' :: Set sprite packet ::
' :::::::::::::::::::::::
Sub HandleSetSprite(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim SpriteNum As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    ' Sprite
    SpriteNum = buffer.ReadLong
    
    Set buffer = Nothing
    
    Call SetPlayerSprite(Index, SpriteNum)
    Call SendPlayerSprite(Index)
End Sub

Sub HandleSetPlayerSprite(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim SpriteNum As Long, Name As String
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub

    ' Sprite
    SpriteNum = buffer.ReadLong
    
    ' Player
    Name = buffer.ReadString
    
    Set buffer = Nothing
    
    If Not IsPlaying(FindPlayer(Name)) Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    Call SetPlayerSprite(FindPlayer(Name), SpriteNum)
    Call SendPlayerSprite(FindPlayer(Name))
End Sub

' ::::::::::::::::::::::::::::::::::
' :: Player request for a new map ::
' ::::::::::::::::::::::::::::::::::
Sub HandleRequestNewMap(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim Dir As Byte
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    Dir = buffer.ReadLong
    Set buffer = Nothing

    Call PlayerMove(Index, Dir, 1)
End Sub

' :::::::::::::::::::::
' :: Map data packet ::
' :::::::::::::::::::::
Sub HandleMapData(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
   Dim I As Long
    Dim MapNum As Long
    Dim X As Long
    Dim Y As Long, z As Long, w As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    MapNum = buffer.ReadLong
    I = Map(MapNum).Revision + 1
    Call ClearMap(MapNum)
    
    Map(MapNum).Name = buffer.ReadString
    Map(MapNum).Music = buffer.ReadString
    Map(MapNum).BGS = buffer.ReadString
    Map(MapNum).Revision = I
    Map(MapNum).Moral = buffer.ReadByte
    Map(MapNum).Up = buffer.ReadLong
    Map(MapNum).Down = buffer.ReadLong
    Map(MapNum).Left = buffer.ReadLong
    Map(MapNum).Right = buffer.ReadLong
    Map(MapNum).BootMap = buffer.ReadLong
    Map(MapNum).BootX = buffer.ReadByte
    Map(MapNum).BootY = buffer.ReadByte
    
    Map(MapNum).Weather = buffer.ReadLong
    Map(MapNum).WeatherIntensity = buffer.ReadLong
    
    Map(MapNum).Fog = buffer.ReadLong
    Map(MapNum).FogSpeed = buffer.ReadLong
    Map(MapNum).FogOpacity = buffer.ReadLong
    
    Map(MapNum).Panorama = buffer.ReadLong
    
    Map(MapNum).Red = buffer.ReadLong
    Map(MapNum).Green = buffer.ReadLong
    Map(MapNum).Blue = buffer.ReadLong
    Map(MapNum).Alpha = buffer.ReadLong
    
    Map(MapNum).MaxX = buffer.ReadByte
    Map(MapNum).MaxY = buffer.ReadByte
    
    ReDim Map(MapNum).Tile(0 To Map(MapNum).MaxX, 0 To Map(MapNum).MaxY)

    Map(MapNum).NPC_HighIndex = buffer.ReadByte
    
    For X = 0 To Map(MapNum).MaxX
        For Y = 0 To Map(MapNum).MaxY
            For I = 1 To MapLayer.Layer_Count - 1
                Map(MapNum).Tile(X, Y).Layer(I).X = buffer.ReadLong
                Map(MapNum).Tile(X, Y).Layer(I).Y = buffer.ReadLong
                Map(MapNum).Tile(X, Y).Layer(I).Tileset = buffer.ReadLong
            Next
            
            For z = 1 To MapLayer.Layer_Count - 1
                Map(MapNum).Tile(X, Y).Autotile(z) = buffer.ReadLong
            Next
            
            Map(MapNum).Tile(X, Y).Type = buffer.ReadByte
            Map(MapNum).Tile(X, Y).Data1 = buffer.ReadLong
            Map(MapNum).Tile(X, Y).Data2 = buffer.ReadLong
            Map(MapNum).Tile(X, Y).Data3 = buffer.ReadLong
            Map(MapNum).Tile(X, Y).Data4 = buffer.ReadString
            Map(MapNum).Tile(X, Y).DirBlock = buffer.ReadByte
        Next
    Next

    For X = 1 To MAX_MAP_NPCS
        Map(MapNum).NPC(X) = buffer.ReadLong
        Map(MapNum).NPCSpawnType(X) = buffer.ReadLong
        Call ClearMapNPC(X, MapNum)
    Next
    
    ' Event data
    Map(MapNum).EventCount = buffer.ReadLong
        
    If Map(MapNum).EventCount > 0 Then
        ReDim Map(MapNum).Events(0 To Map(MapNum).EventCount)
        For I = 1 To Map(MapNum).EventCount
            With Map(MapNum).Events(I)
                .Name = buffer.ReadString
                .Global = buffer.ReadLong
                .X = buffer.ReadLong
                .Y = buffer.ReadLong
                .PageCount = buffer.ReadLong
            End With
            
            If Map(MapNum).Events(I).PageCount > 0 Then
                ReDim Map(MapNum).Events(I).Pages(0 To Map(MapNum).Events(I).PageCount)
                For X = 1 To Map(MapNum).Events(I).PageCount
                    With Map(MapNum).Events(I).Pages(X)
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
                            ReDim Map(MapNum).Events(I).Pages(X).MoveRoute(0 To .MoveRouteCount)
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
                        
                    If Map(MapNum).Events(I).Pages(X).CommandListCount > 0 Then
                        ReDim Map(MapNum).Events(I).Pages(X).CommandList(0 To Map(MapNum).Events(I).Pages(X).CommandListCount)
                        For Y = 1 To Map(MapNum).Events(I).Pages(X).CommandListCount
                            Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount = buffer.ReadLong
                            Map(MapNum).Events(I).Pages(X).CommandList(Y).ParentList = buffer.ReadLong
                            If Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount > 0 Then
                                ReDim Map(MapNum).Events(I).Pages(X).CommandList(Y).Commands(1 To Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount)
                                For z = 1 To Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount
                                    With Map(MapNum).Events(I).Pages(X).CommandList(Y).Commands(z)
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
    
    Call SendMapNPCsToMap(MapNum)
    Call SpawnMapNPCs(MapNum)
    Call SpawnGlobalEvents(MapNum)
    
    For I = 1 To Player_HighIndex
        If Account(I).Chars(GetPlayerChar(I)).Map = MapNum Then
            SpawnMapEventsFor I, MapNum
        End If
    Next

    ' Save the map
    Call SaveMap(MapNum)
    Call MapCache_Create(MapNum)
    Call CacheResources(MapNum)

    ' Refresh map for everyone online
    For I = 1 To Player_HighIndex
        If IsPlaying(I) And GetPlayerMap(I) = MapNum Then
            Call PlayerWarp(I, MapNum, GetPlayerX(I), GetPlayerY(I), True)
        End If
    Next I
    
    Call CacheMapBlocks(MapNum)

    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::::::::
' :: Need map yes/no packet ::
' ::::::::::::::::::::::::::::
Sub HandleNeedMap(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long
    
    ' Send the map
    Call SendMap(Index, GetPlayerMap(Index))

    Call SendMapItemsTo(Index, GetPlayerMap(Index))
    Call SendMapNPCsTo(Index, GetPlayerMap(Index))
    Call SpawnMapEventsFor(Index, GetPlayerMap(Index))
    Call SendJoinMap(Index)

    ' Send Resource cache
    For I = 0 To ResourceCache(GetPlayerMap(Index)).Resource_Count
        SendResourceCacheTo Index, I
    Next

    TempPlayer(Index).GettingMap = NO
    Set buffer = New clsBuffer
    buffer.WriteLong SMapDone
    SendDataTo Index, buffer.ToArray()
End Sub

' :::::::::::::::::::::::::::::::::::::::::::::::
' :: Player trying to pick up something packet ::
' :::::::::::::::::::::::::::::::::::::::::::::::
Sub HandleMapGetItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Call PlayerMapGetItem(Index, buffer.ReadByte)
End Sub

' ::::::::::::::::::::::::::::::::::::::::::::
' :: Player trying to drop something packet ::
' ::::::::::::::::::::::::::::::::::::::::::::
Sub HandleMapDropItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim InvNum As Byte
    Dim Amount As Long
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    
    buffer.WriteBytes Data()
    InvNum = buffer.ReadByte
    Amount = buffer.ReadLong
    Set buffer = Nothing

    ' Prevent hacking
    If InvNum < 1 Or InvNum > MAX_INV Or IsPlaying(Index) = False Then Exit Sub

    ' Check the player isn't doing something
    If TempPlayer(Index).InBank Or TempPlayer(Index).InShop Or TempPlayer(Index).InTrade > 0 Then Exit Sub
    
    If GetPlayerInvItemNum(Index, InvNum) < 1 Or GetPlayerInvItemNum(Index, InvNum) > MAX_ITEMS Then Exit Sub
    
    If Item(GetPlayerInvItemNum(Index, InvNum)).Stackable = 1 Then
        If GetPlayerInvItemValue(Index, InvNum) < Amount Then Amount = GetPlayerInvItemValue(Index, InvNum)
        If Amount < 1 Or Amount > GetPlayerInvItemValue(Index, InvNum) Then Exit Sub
    Else
        If Not Amount = 0 Then Exit Sub
    End If
    
    ' Check if the item is binded
    If GetPlayerInvItemBind(Index, InvNum) = 1 Then Exit Sub

    ' Check if on a map that forbids dropping items
    If Moral(Map(GetPlayerMap(Index)).Moral).CanDropItem = 0 Then
        Call PlayerMsg(Index, "You can't drop items here!", BrightRed)
        Exit Sub
    End If
    
    ' Everything worked out fine
    Call PlayerMapDropItem(Index, InvNum, Amount)
End Sub

' ::::::::::::::::::::::::
' :: Respawn map packet ::
' ::::::::::::::::::::::::
Sub HandleMapRespawn(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    ' Clear out it all
    For I = 1 To MAX_MAP_ITEMS
        Call SpawnItemSlot(I, 0, 0, 0, GetPlayerMap(Index), MapItem(GetPlayerMap(Index), I).X, MapItem(GetPlayerMap(Index), I).Y)
        Call ClearMapItem(I, GetPlayerMap(Index))
    Next

    ' Respawn
    Call SpawnMapItems(GetPlayerMap(Index))

    ' Respawn NPCs
    For I = 1 To MAX_MAP_NPCS
        Call SpawnNPC(I, GetPlayerMap(Index))
    Next

    CacheResources GetPlayerMap(Index)
    Call PlayerMsg(Index, "Map respawned.", BrightBlue)
    Call AddLog(GetPlayerName(Index) & " has respawned map #" & GetPlayerMap(Index), "Staff")
End Sub

' :::::::::::::::::::::::
' :: Map Report packet ::
' :::::::::::::::::::::::
Sub HandleMapReport(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub
   
    Set buffer = New clsBuffer
    buffer.WriteLong SMapReport
   
    For I = 1 To MAX_MAPS
        buffer.WriteString Trim$(Map(I).Name)
    Next
   
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

Sub HandleOpenMaps(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim s As String
    Dim I As Long
    Dim tMapStart As Long
    Dim tMapEnd As Long
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub
    
    s = "Open Maps: "
    tMapStart = 1
    tMapEnd = 1

    For I = 1 To MAX_MAPS

        If Len(Trim$(Map(I).Name)) = 0 Then
            tMapEnd = tMapEnd + 1
        Else
            If tMapEnd - tMapStart > 0 Then
                s = s & Trim$(CStr(tMapStart)) & "-" & Trim$(CStr(tMapEnd - 1)) & ", "
            End If

            tMapStart = I + 1
            tMapEnd = I + 1
        End If
    Next
    
    s = s & Trim$(CStr(tMapStart)) & "-" & Trim$(CStr(tMapEnd - 1)) & ", "
    s = Mid$(s, 1, Len(s) - 2)
    s = s & "."
    Call PlayerMsg(Index, s, Brown)
End Sub

' ::::::::::::::::::::::::
' :: Kick player packet ::
' ::::::::::::::::::::::::
Sub HandleKickPlayer(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MODERATOR Then Exit Sub

    ' The player Index
    n = FindPlayer(buffer.ReadString)
    Set buffer = Nothing

    If Not n = Index Then
        If n > 0 Then
            If GetPlayerAccess(n) < GetPlayerAccess(Index) Then
                Call GlobalMsg(GetPlayerName(n) & " has been kicked from " & Options.Name & " by " & GetPlayerName(Index) & "!", White)
                Call AddLog(GetPlayerName(Index) & " has kicked " & GetPlayerName(n) & ".", "Staff")
                Call AlertMsg(n, "You have been kicked by " & GetPlayerName(Index) & "!")
                Call LeftGame(Index)
            Else
                Call PlayerMsg(Index, "They are a higher or same access admin as you!", BrightRed)
            End If

        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
        End If

    Else
        Call PlayerMsg(Index, "You can't kick yourself!", BrightRed)
    End If
End Sub

' ::::::::::::::::::::::::
' :: Mute Player packet ::
' ::::::::::::::::::::::::
Sub HandleMutePlayer(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim n As Long, Name As String
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MODERATOR Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    
    If Name = vbNullString Then Exit Sub
    
    n = FindPlayer(Name)

    ' Prevent subscript out of range
    If n < 1 Or n > Player_HighIndex Or Not IsPlaying(n) Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    If n = Index Then
        Call PlayerMsg(Index, "You can't mute yourself!", BrightRed)
        Exit Sub
    End If
    
    Call PlayerMsg(n, "You have been muted by " & GetPlayerName(Index) & "!", BrightRed)
    Account(Index).Chars(GetPlayerChar(Index)).Status = "Muted"
    Call SendPlayerStatus(Index)
End Sub

Public Sub LoadBans()
    Dim I As Long

    CheckBans
    
    For I = 1 To MAX_BANS
        Call LoadBan(I)
    Next
End Sub

Public Sub LoadBan(Index As Long)
    Dim F As Long
    Dim filename  As String

    
    F = FreeFile
    filename = App.path & "\data\bans\" & Index & ".dat"
    
    Open filename For Binary As #F
        Get #F, , Ban(Index)
    Close #F
End Sub

Private Sub CheckBans()
    Dim I As Long

    For I = 1 To MAX_BANS
        If Not FileExist("\data\bans\ban" & I & ".dat") Then
            SaveBan I
        End If
    Next
End Sub

' :::::::::::::::::::::::
' :: Ban player packet ::
' :::::::::::::::::::::::
Sub HandleBanPlayer(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim Reason As String
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub

    ' The player Index
    n = FindPlayer(buffer.ReadString)
    Reason = buffer.ReadString
    
    Set buffer = Nothing

    If n <> Index Then
        If n > 0 Then
            If GetPlayerAccess(n) < GetPlayerAccess(Index) Then
                Call BanIndex(n, Index, Reason)
            Else
                Call PlayerMsg(Index, "That is a higher or same access admin then you!", White)
            End If
        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
        End If
    Else
        Call PlayerMsg(Index, "You can't ban yourself!", BrightRed)
    End If
End Sub

' :::::::::::::::::::::::::::::
' :: Request edit map oacket ::
' :::::::::::::::::::::::::::::
Sub HandleRequestEditMap(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MAPPER Then Exit Sub

    SendMapEventData (Index)
    
    Set buffer = New clsBuffer
    buffer.WriteLong SEditMap
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::::::::::::
' :: Request edit event packet ::
' :::::::::::::::::::::::::::::::
Sub HandleRequestEditEvent(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim EventNum As Long
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    ' TODO Add common event sending
    ' EventNum = ???
    
    Set buffer = New clsBuffer
    buffer.WriteLong SEditEvent
    buffer.WriteLong EventNum
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::::::::::
' :: Request edit item packet ::
' ::::::::::::::::::::::::::::::
Sub HandleRequestEditItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteLong SItemEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::
' :: Save item packet ::
' ::::::::::::::::::::::
Sub HandleSaveItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim ItemSize As Long
    Dim ItemData() As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_ITEMS Then Exit Sub

    ' Update the item
    ItemSize = LenB(Item(n))
    ReDim ItemData(ItemSize - 1)
    ItemData = buffer.ReadBytes(ItemSize)
    CopyMemory ByVal VarPtr(Item(n)), ByVal VarPtr(ItemData(0)), ItemSize
    Set buffer = Nothing
    
    ' Save It
    Call SendUpdateItemToAll(n)
    Call UpdateAllPlayerItems(n)
    Call UpdateAllPlayerEquipmentItems
    Call SaveItem(n)
    Call AddLog(GetPlayerName(Index) & " saved Item #" & n & ".", "Staff")
End Sub

' :::::::::::::::::::::::::::::::::::
' :: Request edit animation packet ::
' :::::::::::::::::::::::::::::::::::
Sub HandleRequestEditAnimation(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteLong SAnimationEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::::::::
' :: Save animation packet ::
' :::::::::::::::::::::::::::
Sub HandleSaveAnimation(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim AnimationSize As Long
    Dim AnimationData() As Byte
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_ANIMATIONS Then Exit Sub

    ' Update the Animation
    AnimationSize = LenB(Animation(n))
    ReDim AnimationData(AnimationSize - 1)
    AnimationData = buffer.ReadBytes(AnimationSize)
    CopyMemory ByVal VarPtr(Animation(n)), ByVal VarPtr(AnimationData(0)), AnimationSize
    Set buffer = Nothing
    
    ' Save it
    Call SendUpdateAnimationToAll(n)
    Call SaveAnimation(n)
    Call AddLog(GetPlayerName(Index) & " saved Animation #" & n & ".", "Staff")
End Sub

' :::::::::::::::::::::::::::::
' :: Request edit NPC packet ::
' :::::::::::::::::::::::::::::
Sub HandleRequestEditNPC(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteLong SNPCEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::
' :: Save NPC packet ::
' :::::::::::::::::::::
Private Sub HandleSaveNPC(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim NPCNum As Long
    Dim buffer As clsBuffer
    Dim NPCSize As Long
    Dim NPCData() As Byte

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    NPCNum = buffer.ReadLong

    ' Prevent hacking
    If NPCNum < 1 Or NPCNum > MAX_NPCS Then Exit Sub
    
    NPCSize = LenB(NPC(NPCNum))
    ReDim NPCData(NPCSize - 1)
    NPCData = buffer.ReadBytes(NPCSize)
    CopyMemory ByVal VarPtr(NPC(NPCNum)), ByVal VarPtr(NPCData(0)), NPCSize
    
    ' Save it
    Call SendUpdateNPCToAll(NPCNum)
    Call SaveNPC(NPCNum)
    Call AddLog(GetPlayerName(Index) & " saved NPC #" & NPCNum & ".", "Staff")
End Sub

' ::::::::::::::::::::::::::::::::::
' :: Request edit resource packet ::
' ::::::::::::::::::::::::::::::::::
Sub HandleRequestEditResource(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteLong SResourceEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::::::
' :: Save resource packet ::
' ::::::::::::::::::::::::::
Private Sub HandleSaveResource(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim ResourceNum As Long
    Dim buffer As clsBuffer
    Dim ResourceSize As Long
    Dim ResourceData() As Byte

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    ResourceNum = buffer.ReadLong

    ' Prevent hacking
    If ResourceNum < 1 Or ResourceNum > MAX_RESOURCES Then Exit Sub

    ResourceSize = LenB(Resource(ResourceNum))
    ReDim ResourceData(ResourceSize - 1)
    ResourceData = buffer.ReadBytes(ResourceSize)
    CopyMemory ByVal VarPtr(Resource(ResourceNum)), ByVal VarPtr(ResourceData(0)), ResourceSize
    
    ' Save it
    Call SendUpdateResourceToAll(ResourceNum)
    Call SaveResource(ResourceNum)
    Call AddLog(GetPlayerName(Index) & " saved Resource #" & ResourceNum & ".", "Staff")
End Sub

' ::::::::::::::::::::::::::::::
' :: Request edit shop packet ::
' ::::::::::::::::::::::::::::::
Sub HandleRequestEditShop(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteLong SShopEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::
' :: Save shop packet ::
' ::::::::::::::::::::::
Sub HandleSaveShop(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim ShopNum As Long
    Dim I As Long
    Dim buffer As clsBuffer
    Dim ShopSize As Long
    Dim ShopData() As Byte
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    ShopNum = buffer.ReadLong

    ' Prevent hacking
    If ShopNum < 1 Or ShopNum > MAX_SHOPS Then Exit Sub

    ShopSize = LenB(Shop(ShopNum))
    ReDim ShopData(ShopSize - 1)
    ShopData = buffer.ReadBytes(ShopSize)
    CopyMemory ByVal VarPtr(Shop(ShopNum)), ByVal VarPtr(ShopData(0)), ShopSize

    Set buffer = Nothing
    
    ' Save it
    Call SendUpdateShopToAll(ShopNum)
    Call SaveShop(ShopNum)
    Call AddLog(GetPlayerName(Index) & " saving shop #" & ShopNum & ".", "Staff")
End Sub

' :::::::::::::::::::::::::::::::
' :: Request edit spell packet ::
' :::::::::::::::::::::::::::::::
Sub HandleRequestEditSpell(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteLong SSpellEditor
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::::
' :: Save spell packet ::
' :::::::::::::::::::::::
Sub HandleSaveSpell(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim SpellNum As Long
    Dim buffer As clsBuffer
    Dim SpellSize As Long
    Dim SpellData() As Byte

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    SpellNum = buffer.ReadLong

    ' Prevent hacking
    If SpellNum < 1 Or SpellNum > MAX_SPELLS Then Exit Sub

    SpellSize = LenB(Spell(SpellNum))
    ReDim SpellData(SpellSize - 1)
    SpellData = buffer.ReadBytes(SpellSize)
    CopyMemory ByVal VarPtr(Spell(SpellNum)), ByVal VarPtr(SpellData(0)), SpellSize
    
    ' Save it
    Call SendUpdateSpellToAll(SpellNum)
    Call SaveSpell(SpellNum)
    Call AddLog(GetPlayerName(Index) & " saved Spell #" & SpellNum & ".", "Staff")
End Sub

' :::::::::::::::::::::::
' :: Set access packet ::
' :::::::::::::::::::::::
Sub HandleSetAccess(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim I As Long
    Dim buffer As clsBuffer, playerToChange As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    playerToChange = buffer.ReadString
    
    ' The Index
    n = FindPlayer(playerToChange)
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then
        SendAccessVerificator Index, 0, "You access level is too low!:" & playerToChange, GetPlayerAccess(n)
        Exit Sub
    End If

    ' The access
    I = buffer.ReadLong
    
    Set buffer = Nothing

    ' Check for invalid access level
    If I >= 0 And I <= 4 Then
        ' Check if player is on
        If n > 0 Then
            ' Check to see if same level access is trying to change another access of the very same level and boot them if they are.
            If GetPlayerAccess(n) = I Then
                Call PlayerMsg(Index, "That player already has that access level!", BrightRed)
                SendAccessVerificator Index, 1, "Access level saved!:" & playerToChange, GetPlayerAccess(n)
                Exit Sub
            End If
            
            If GetPlayerAccess(Index) = I Then
                Call PlayerMsg(Index, "You can't set a player to the same access level as yourself!", BrightRed)
                SendAccessVerificator Index, 0, "You can't set a player to the same access level as yourself!:" & playerToChange, GetPlayerAccess(n)
                Exit Sub
            End If
            If GetPlayerAccess(Index) < I Then
                Call PlayerMsg(Index, "You can't set a player's access level higher than yourself!", BrightRed)
                SendAccessVerificator Index, 0, "You can't set a player's access level higher than yourself!:" & playerToChange, GetPlayerAccess(n)
                Exit Sub
            End If
            
            If GetPlayerAccess(n) <= 0 Then
                Call GlobalMsg(GetPlayerName(n) & " has been blessed with administrative access.", BrightBlue)
            End If
            
            Call SetPlayerAccess(n, I)
            Call SendPlayerData(n)
            
            SendAccessVerificator Index, 1, "Access level saved!:" & playerToChange, GetPlayerAccess(n)
            Call AddLog(GetPlayerName(Index) & " has modified " & GetPlayerName(n) & "'s access.", "Staff")
        Else
            Call PlayerMsg(Index, "Player is not online!", BrightRed)
            SendAccessVerificator Index, 0, "Player is Offline!:" & playerToChange, GetPlayerAccess(n)
        End If
    Else
        Call PlayerMsg(Index, "Invalid access level.", BrightRed)
        SendAccessVerificator Index, 0, "Invalid access level!:" & playerToChange, GetPlayerAccess(n)
    End If
End Sub

' :::::::::::::::::::::::::
' :: Who's online packet ::
' :::::::::::::::::::::::::
Sub HandleWhosOnline(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MODERATOR Then Exit Sub

    Call SendWhosOnline(Index)
End Sub

' Character Editor
Sub HandleRequestPlayersOnline(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call SendPlayersOnline(Index)
End Sub

' :::::::::::::::::::::
' :: Set MOTD packet ::
' :::::::::::::::::::::
Sub HandleSetMOTD(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub

    ' Save options
    Options.MOTD = Trim$(buffer.ReadString)
    SaveOptions
    
    Set buffer = Nothing
    Call GlobalMsg("MOTD changed to: " & Options.MOTD, BrightCyan)
    
    Call AddLog(GetPlayerName(Index) & " changed MOTD to: " & Options.MOTD, "Staff")
End Sub

' ::::::::::::::::::::::
' :: Set SMOTD packet ::
' ::::::::::::::::::::::
Sub HandleSetSMotd(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub

    ' Save options
    Options.SMOTD = Trim$(buffer.ReadString)
    SaveOptions
    
    Set buffer = Nothing
    Call AdminMsg("Staff MOTD changed to: " & Options.SMOTD, Cyan)
    
    Call AddLog(GetPlayerName(Index) & " changed Staff MOTD to: " & Options.SMOTD, "Staff")
End Sub

' ::::::::::::::::::::::
' :: Set GMOTD packet ::
' ::::::::::::::::::::::
Sub HandleSetGMotd(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Message As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerGuild(Index) = 0 Then Exit Sub
    If GetPlayerGuildAccess(Index) < 3 Then Exit Sub
        
    Message = buffer.ReadString
    Guild(GetPlayerGuild(Index)).MOTD = Message

    Set buffer = Nothing
    
    Call GuildMsg(Index, GetPlayerName(Index) & " has changed the MOTD to: " & Message, BrightGreen, True)
    Call AddLog(GetPlayerName(Index) & " changed MOTD to: " & Message, "Player")
End Sub

' :::::::::::::::::::
' :: Search packet ::
' :::::::::::::::::::
Sub HandleSearch(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim targetType As Byte
    Dim target As Long
    Dim CurrentMap As Long
    
    CurrentMap = GetPlayerMap(Index)
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    targetType = buffer.ReadByte
    target = buffer.ReadLong
    Set buffer = Nothing
    
    ' Prevent subscript out of range
    If Not IsPlaying(Index) Then Exit Sub
    If targetType < 1 Or targetType > 2 Then Exit Sub
    If target < 1 Then Exit Sub
    If target > Player_HighIndex And targetType = TARGET_TYPE_PLAYER Then Exit Sub
    If target > Map(CurrentMap).NPC_HighIndex And targetType = TARGET_TYPE_NPC Then Exit Sub
    
    If targetType = TARGET_TYPE_PLAYER Then
        If IsPlaying(target) Then
            If CurrentMap = GetPlayerMap(target) Then
                If Index = target Then
                    ' Change target
                    If TempPlayer(Index).targetType = TARGET_TYPE_PLAYER And TempPlayer(Index).target = target Then
                        TempPlayer(Index).target = 0
                        TempPlayer(Index).targetType = TARGET_TYPE_NONE
                        
                        ' Send target to player
                        SendPlayerTarget Index
                    Else
                        TempPlayer(Index).target = target
                        TempPlayer(Index).targetType = TARGET_TYPE_PLAYER
                        
                        ' Send target to player
                        SendPlayerTarget Index
                    End If
                    Exit Sub
                Else
                    ' Change target
                    If TempPlayer(Index).targetType = TARGET_TYPE_PLAYER And TempPlayer(Index).target = target Then
                        TempPlayer(Index).target = 0
                        TempPlayer(Index).targetType = TARGET_TYPE_NONE
                        
                        ' Send target to player
                        SendPlayerTarget Index
                    Else
                        TempPlayer(Index).target = target
                        TempPlayer(Index).targetType = TARGET_TYPE_PLAYER
                        
                        ' Send target to player
                        SendPlayerTarget Index
                    End If
                    Exit Sub
                End If
            End If
        End If
    ElseIf targetType = TARGET_TYPE_NPC Then
        If MapNPC(CurrentMap).NPC(target).Num > 0 Then
            If TempPlayer(Index).target = target And TempPlayer(Index).targetType = TARGET_TYPE_NPC Then
                ' Change target
                TempPlayer(Index).target = 0
                TempPlayer(Index).targetType = TARGET_TYPE_NONE
                
                ' Send target to player
                SendPlayerTarget Index
            Else
                ' Change target
                TempPlayer(Index).target = target
                TempPlayer(Index).targetType = TARGET_TYPE_NPC
                
                ' Send target to player
                SendPlayerTarget Index
            End If
            Exit Sub
        End If
    End If
End Sub

' :::::::::::::::::::
' :: Spells packet ::
' :::::::::::::::::::
Sub HandleSpells(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call SendPlayerSpells(Index)
End Sub

' :::::::::::::::::
' :: Cast packet ::
' :::::::::::::::::
Sub HandleCastSpell(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Spell slot
    n = buffer.ReadLong
    
    Set buffer = Nothing
    
    ' Set the spell buffer before castin
    Call BufferPlayerSpell(Index, n)
End Sub

' ::::::::::::::::::::::
' :: Quit game packet ::
' ::::::::::::::::::::::
Sub HandleLeaveGame(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    If IsPlaying(Index) Then
        Call LeftGame(Index)
    End If
End Sub

' ::::::::::::::::::::::::::
' :: Swap Inventory Slots ::
' ::::::::::::::::::::::::::
Sub HandleSwapInvSlots(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim OldSlot As Byte, NewSlot As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Old Slot
    OldSlot = buffer.ReadByte
    
    ' New Slot
    NewSlot = buffer.ReadByte
    
    Set buffer = Nothing
    
    ' Make sure their valid
    If OldSlot < 1 Or OldSlot > MAX_INV Then Exit Sub
    If NewSlot < 1 Or NewSlot > MAX_INV Then Exit Sub
    If TempPlayer(Index).InTrade > 0 Then Exit Sub
    
    PlayerSwitchInvSlots Index, OldSlot, NewSlot
End Sub

' ::::::::::::::::::::::
' :: Swap Spell Slots ::
' ::::::::::::::::::::::
Sub HandleSwapSpellSlots(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim OldSlot As Byte, NewSlot As Byte
    
    ' Prevent subscript if someone tries to cast
    If TempPlayer(Index).SpellBuffer.Spell > 0 Then
        If TempPlayer(Index).SpellBuffer.Spell = Account(Index).Chars(GetPlayerChar(Index)).Spell(OldSlot) Or Account(Index).Chars(GetPlayerChar(Index)).Spell(NewSlot) Then Exit Sub
    End If
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Old Slot
    OldSlot = buffer.ReadByte
    
    ' New Slot
    NewSlot = buffer.ReadByte
    
    Set buffer = Nothing
    
    ' Make sure their valid
    If OldSlot < 1 Or OldSlot > MAX_PLAYER_SPELLS Then Exit Sub
    If NewSlot < 1 Or NewSlot > MAX_PLAYER_SPELLS Then Exit Sub
    
    PlayerSwitchSpellSlots Index, OldSlot, NewSlot
End Sub

' :::::::::::::::::::::::
' :: Swap Hotbar Slots ::
' :::::::::::::::::::::::
Sub HandleSwapHotbarSlots(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim OldSlot As Byte, NewSlot As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Old Slot
    OldSlot = buffer.ReadByte
    
    ' New Slot
    NewSlot = buffer.ReadByte
    
    Set buffer = Nothing
    
    ' Make sure their valid
    If OldSlot < 1 Or OldSlot > MAX_HOTBAR Then Exit Sub
    If NewSlot < 1 Or NewSlot > MAX_HOTBAR Then Exit Sub
    
    PlayerSwitchHotbarSlots Index, OldSlot, NewSlot
End Sub

' ::::::::::::::::
' :: Check Ping ::
' ::::::::::::::::
Sub HandleCheckPing(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    buffer.WriteLong SSendPing
    
    SendDataTo Index, buffer.ToArray()
    Set buffer = Nothing
End Sub

Sub HandleUnequip(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    
    buffer.WriteBytes Data()
    PlayerUnequipItem Index, buffer.ReadLong
    Set buffer = Nothing
End Sub

Sub HandleRequestPlayerData(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendPlayerData Index
End Sub

Sub HandleRequestPlayerStats(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendPlayerStats Index
End Sub

Sub HandleRequestSpellCooldown(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Slot As Byte
    
    Set buffer = New clsBuffer
    
    buffer.WriteBytes Data()
    Slot = buffer.ReadByte
    
    Call SendSpellCooldown(Index, Slot)
End Sub

Sub HandleRequestBans(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim BanSize As Long
    Dim BanData() As Byte
    Dim I As Long
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub
    
    Set buffer = New clsBuffer
    
    For I = 1 To MAX_BANS
        If Len(Trim$(Ban(I).playerName)) > 0 Then
            BanSize = LenB(Ban(I))
            ReDim BanData(BanSize - 1)
            CopyMemory BanData(0), ByVal VarPtr(Ban(I)), BanSize
            buffer.WriteLong SUpdateBan
            buffer.WriteLong I
            buffer.WriteBytes BanData
            SendDataTo Index, buffer.ToArray()
        End If
    Next
    Set buffer = Nothing
End Sub

Sub HandleRequestTitles(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendTitles Index
End Sub

Sub HandleRequestMorals(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendMorals Index
End Sub

Sub HandleRequestClasses(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendClasses Index
End Sub

Sub HandleRequestEmoticons(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendEmoticons Index
End Sub

Sub HandleRequestItems(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendItems Index
End Sub

Sub HandleRequestAnimations(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendAnimations Index
End Sub

Sub HandleRequestNPCs(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendNPCs Index
End Sub

Sub HandleRequestResources(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendResources Index
End Sub

Sub HandleRequestSpells(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendSpells Index
End Sub

Sub HandleRequestShops(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendShops Index
End Sub

Sub HandleSpawnItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim TmpItem As Long
    Dim TmpAmount As Long
    Dim Where As Integer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    ' Item
    TmpItem = buffer.ReadLong
    TmpAmount = buffer.ReadLong
    
    ' Location
    Where = buffer.ReadInteger
    
    If Moral(GetPlayerMap(Index)).CanDropItem = 1 And Where = 1 Then
        SpawnItem TmpItem, TmpAmount, Item(TmpItem).Data1, GetPlayerMap(Index), GetPlayerX(Index), GetPlayerY(Index), GetPlayerName(Index)
        Call PlayerMsg(Index, TmpAmount & " " & Trim(Item(TmpItem).Name) & " has been dropped beneath you.", BrightGreen)
    Else
        GiveInvItem Index, TmpItem, TmpAmount
        Call PlayerMsg(Index, TmpAmount & " " & Trim(Item(TmpItem).Name) & " has been added to you Inventory.", BrightGreen)
    End If
    
    Set buffer = Nothing
End Sub

Sub HandleRequestLevelUp(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    ' Make sure their not the max level
    If GetPlayerLevel(Index) = MAX_LEVEL Then Exit Sub
    
    SetPlayerExp Index, GetPlayerNextLevel(Index)
    CheckPlayerLevelUp Index
End Sub

Sub HandleForgetSpell(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim SpellSlot As Byte, I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    SpellSlot = buffer.ReadByte
    
    ' Check for subscript out of range
    If SpellSlot < 1 Or SpellSlot > MAX_PLAYER_SPELLS Then Exit Sub
    
    ' Don't let them forget a spell which is in CD
    If GetPlayerSpellCD(Index, SpellSlot) > timeGetTime Then
        PlayerMsg Index, "You can't forget a spell which is cooling down!", BrightRed
        Exit Sub
    End If
    
    ' Don't let them forget a spell which is buffered
    If TempPlayer(Index).SpellBuffer.Spell = SpellSlot Then
        PlayerMsg Index, "You can't forget a spell which you are casting!", BrightRed
        Exit Sub
    End If
    
    ' Check if we need to remove anything from the botbar
    For I = 1 To MAX_HOTBAR
        If Account(Index).Chars(GetPlayerChar(Index)).Hotbar(I).Slot = SpellSlot And Account(Index).Chars(GetPlayerChar(Index)).Hotbar(I).SType = 2 Then
            Account(Index).Chars(GetPlayerChar(Index)).Hotbar(I).Slot = 0
            Account(Index).Chars(GetPlayerChar(Index)).Hotbar(I).SType = 0
            SendHotbar Index
        End If
    Next
    
    Call SetPlayerSpell(Index, SpellSlot, 0)
    SendPlayerSpells Index
    
    Set buffer = Nothing
End Sub

Sub HandleCloseShop(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    TempPlayer(Index).InShop = 0
End Sub

Sub HandleBuyItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim ShopSlot As Long
    Dim ShopNum As Long
    Dim ItemAmount As Integer
    Dim ItemAmount2 As Integer
    Dim Multiplier As Integer
    Dim ItemPrice As Integer
    Dim ItemPrice2 As Integer
   
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
   
    ShopSlot = buffer.ReadLong
    ShopNum = TempPlayer(Index).InShop
    
    ' Exit shop if not in it
    If ShopNum < 1 Or ShopNum > MAX_SHOPS Then Exit Sub
    
    With Shop(ShopNum).TradeItem(ShopSlot)
        ' Check that trade exists
        If .Item < 1 Then Exit Sub
        
        ' Work out price
        Multiplier = Shop(TempPlayer(Index).InShop).BuyRate / 100
        
        If .CostItem > 0 And .CostItem <> 1 Then
            ItemPrice = .CostValue * Multiplier
        ElseIf .CostItem = 1 Then
            If .CostValue = 0 Then
                ItemPrice = Item(.Item).Price * Multiplier
            Else
                ItemPrice = Item(.Item).Price * Multiplier * .CostValue
            End If
        End If
        
        If .CostItem2 > 0 And .CostItem2 <> 1 Then
            ItemPrice2 = .CostValue2 * Multiplier
        ElseIf .CostItem2 = 1 Then
            If .CostValue2 = 0 Then
                ItemPrice2 = Item(.Item).Price * Multiplier
            Else
                ItemPrice2 = Item(.Item).Price * Multiplier * .CostValue2
            End If
        End If
        
        ' Calculate how much of the item they have
        ItemAmount = HasItem(Index, .CostItem)
        ItemAmount2 = HasItem(Index, .CostItem2)
        
        If .CostItem2 = 0 And .CostItem > 0 Then
            If ItemAmount < ItemPrice Then
                PlayerMsg Index, "You do not have enough " & Trim$(Item(.CostItem).Name) & " to buy this item.", BrightRed
                ResetShopAction Index
                Exit Sub
            End If
        ElseIf .CostItem = 0 And .CostItem2 > 0 Then
            If ItemAmount2 < ItemPrice2 Then
                PlayerMsg Index, "You do not have enough " & Trim$(Item(.CostItem2).Name) & " to buy this item.", BrightRed
                ResetShopAction Index
                Exit Sub
            End If
        ElseIf .CostItem > 0 And .CostItem2 > 0 Then
            If ItemAmount < ItemPrice Then
                PlayerMsg Index, "You do not have enough " & Trim$(Item(.CostItem).Name) & " to buy this item.", BrightRed
                ResetShopAction Index
                Exit Sub
            ElseIf ItemAmount2 < ItemPrice2 Then
                PlayerMsg Index, "You do not have enough " & Trim$(Item(.CostItem2).Name) & " to buy this item.", BrightRed
                ResetShopAction Index
                Exit Sub
            End If
        End If
       
        ' It's fine, let's go ahead
        If .CostItem > 0 And .CostItem2 = 0 Then
            TakeInvItem Index, .CostItem, ItemPrice
            GiveInvItem Index, .Item, .ItemValue
        ElseIf .CostItem2 > 0 And .CostItem = 0 Then
            TakeInvItem Index, .CostItem2, ItemPrice2
            GiveInvItem Index, .Item, .ItemValue
        ElseIf .CostItem > 0 And .CostItem2 > 0 Then
            TakeInvItem Index, .CostItem, ItemPrice
            TakeInvItem Index, .CostItem2, ItemPrice2
            GiveInvItem Index, .Item, .ItemValue
        End If
    End With
   
    ' Send confirmation message & reset their shop action
    Call SendSoundTo(Index, Options.BuySound)
    PlayerMsg Index, "Trade successful.", Yellow
    ResetShopAction Index
   
    Set buffer = Nothing
End Sub

Sub HandleSellItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim InvSlot As Byte
    Dim ItemNum As Integer
    Dim Price As Long
    Dim Multiplier As Integer
    Dim Amount As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Prevent hacking
    If TempPlayer(Index).InShop < 1 Or TempPlayer(Index).InShop > MAX_SHOPS Then Exit Sub
    
    InvSlot = buffer.ReadByte
    
    ' If invalid, exit out
    If InvSlot < 1 Or InvSlot > MAX_INV Then Exit Sub
    
    ' Has item?
    If GetPlayerInvItemNum(Index, InvSlot) < 1 Or GetPlayerInvItemNum(Index, InvSlot) > MAX_ITEMS Then Exit Sub
    
    ' Seems to be valid
    ItemNum = GetPlayerInvItemNum(Index, InvSlot)
    
    ' We don't want them to sell bindable items
    If Item(ItemNum).BindType = BIND_ON_PICKUP Then
        PlayerMsg Index, "You cannot sell bindable items to shops.", BrightRed
        Exit Sub
    End If
    
    ' Work out price
    Multiplier = Shop(TempPlayer(Index).InShop).SellRate / 100
    
    Price = Item(ItemNum).Price * Multiplier
    
    ' Item has cost?
    If Price < 1 Or ItemNum = 1 Then
        PlayerMsg Index, "The shop doesn't want that item.", BrightRed
        ResetShopAction Index
        Exit Sub
    End If

    ' Take item and give `
    TakeInvItem Index, ItemNum, 1
    GiveInvItem Index, 1, Price
    
    ' Send confirmation message and reset their shop action
    Call SendSoundTo(Index, Options.SellSound)
    PlayerMsg Index, "Trade successful.", Yellow
    ResetShopAction Index
    
    Set buffer = Nothing
End Sub

Sub HandleSwapBankSlots(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim NewSlot As Byte
    Dim OldSlot As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    OldSlot = buffer.ReadByte
    NewSlot = buffer.ReadByte
    Set buffer = Nothing
    
    ' Make sure their valid
    If OldSlot < 1 Or OldSlot > MAX_BANK Then Exit Sub
    If NewSlot < 1 Or NewSlot > MAX_BANK Then Exit Sub
    
    PlayerSwapBankSlots Index, OldSlot, NewSlot
End Sub

Sub HandleWithdrawItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim BankSlot As Byte
    Dim Amount As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    BankSlot = buffer.ReadByte
    Amount = buffer.ReadLong
    
    TakeBankItem Index, BankSlot, Amount
    
    Set buffer = Nothing
End Sub

Sub HandleDepositItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim InvSlot As Byte
    Dim Amount As Long
    Dim Durability As Integer
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    InvSlot = buffer.ReadByte
    Amount = buffer.ReadLong
    Durability = GetPlayerInvItemDur(Index, InvSlot)
    
    ' Prevent subscript out of range
    If InvSlot < 1 Or InvSlot > MAX_INV Then Exit Sub
    
    ' Hack prevention
    If Item(GetPlayerInvItemNum(Index, InvSlot)).Stackable = 1 Then
        If GetPlayerInvItemValue(Index, InvSlot) < Amount Then Amount = GetPlayerInvItemValue(Index, InvSlot)
        If Amount < 1 Then Exit Sub
    Else
        If Not Amount = 0 Then Exit Sub
    End If
    
    GiveBankItem Index, InvSlot, Amount, Durability
    
    Set buffer = Nothing
End Sub

Sub HandleCloseBank(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    
    Set buffer = New clsBuffer
    
    SaveAccount Index
    
    TempPlayer(Index).InBank = False
    
    Set buffer = Nothing
End Sub

Sub HandleAdminWarp(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim X As Long
    Dim Y As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    X = buffer.ReadLong
    Y = buffer.ReadLong
    
    If GetPlayerAccess(Index) >= STAFF_MAPPER Then
        SetPlayerX Index, X
        SetPlayerY Index, Y
        Call SendPlayerPosition(Index)
    End If
    
    Set buffer = Nothing
End Sub

' :::::::::::::::::::::
' :: Fix item packet ::
' :::::::::::::::::::::
Private Sub HandleFixItem(ByVal Index As Integer, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Byte
    Dim I As Long
    Dim ItemNum As Long
    Dim DurNeeded As Long
    Dim GoldNeeded As Long
    Dim buffer As clsBuffer

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    ' Prevent hacking
    If TempPlayer(Index).InShop < 1 Or TempPlayer(Index).InShop > MAX_SHOPS Then Exit Sub
    If Shop(TempPlayer(Index).InShop).CanFix = 0 Then Exit Sub
    
    ' Inv num
    n = buffer.ReadByte
    
    ' Prevent hacking
    If n < 1 Or n > MAX_INV Then Exit Sub
    
    ' Check for bad data
    If GetPlayerInvItemNum(Index, n) <= 0 Or GetPlayerInvItemNum(Index, n) > MAX_ITEMS Then Exit Sub

    ' Make sure its a equipable item
    If Not Item(GetPlayerInvItemNum(Index, n)).Type = ITEM_TYPE_EQUIPMENT Then
        Call PlayerMsg(Index, "You may only fix equipment items!", BrightRed)
        Exit Sub
    End If
    
    ' Now check the rate of pay
    ItemNum = GetPlayerInvItemNum(Index, n)
    I = (Item(GetPlayerInvItemNum(Index, n)).Data2 \ 5)
    If I <= 0 Then I = 1
    
    DurNeeded = Item(ItemNum).Data1 - GetPlayerInvItemDur(Index, n)
    GoldNeeded = Int(DurNeeded * I / 2)
    If GoldNeeded <= 0 Then GoldNeeded = 1
    
    ' Check if they even need it repaired
    If DurNeeded <= 0 Then
        Call PlayerMsg(Index, "This item is in perfect condition!", BrightRed)
        Exit Sub
    End If
    
    ' Check if they have enough for at least one point
    If HasItem(Index, 1) >= I Then
        ' Check if they have enough for a total restoration
        If HasItem(Index, 1) >= GoldNeeded Then
            Call TakeInvItem(Index, 1, GoldNeeded)
            Call SetPlayerInvItemDur(Index, n, Item(ItemNum).Data1)
            Call PlayerMsg(Index, "Item has been totally restored for " & GoldNeeded & " " & Trim$(Item(1).Name) & "!", BrightBlue)
        Else
            ' They dont so restore as much as we can
            DurNeeded = (HasItem(Index, 1) / I)
            GoldNeeded = Int(DurNeeded * I \ 2)
            If GoldNeeded <= 0 Then GoldNeeded = 1
            
            Call TakeInvItem(Index, 1, GoldNeeded)
            Call SetPlayerInvItemDur(Index, n, GetPlayerInvItemDur(Index, n) + DurNeeded)
            Call PlayerMsg(Index, "Item has been partially fixed for " & GoldNeeded & Trim$(Item(1).Name) & "!", BrightBlue)
        End If
    Else
        Call PlayerMsg(Index, "Insufficient " & Trim$(Item(1).Name) & " to fix this item!", BrightRed)
    End If
End Sub

Sub HandleTradeRequest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim TradeTarget As Long
    
    ' Can't trade with npcs
    If Not TempPlayer(Index).targetType = TARGET_TYPE_PLAYER Then Exit Sub

    ' Find the target
    TradeTarget = TempPlayer(Index).target
    
    ' Make sure we don't error
    If TradeTarget < 1 Or TradeTarget > MAX_PLAYERS Then Exit Sub
    
    ' Can't invite if the player is a foe
    If IsAFoe(Index, TradeTarget) Then Exit Sub
    
    ' Make sure they're not in a trade
    If TempPlayer(TradeTarget).InTrade > 0 Then
        ' They're already in a trade
        PlayerMsg Index, "This player is already in a trade!", BrightRed
        Exit Sub
    End If
    
    ' Check if there doing another action
    If IsPlayerBusy(Index, TradeTarget) Then Exit Sub
    
    ' Let them know
    PlayerMsg Index, "Trade invitation sent.", Pink

    ' Send the trade request
    TempPlayer(TradeTarget).TradeRequest = Index
    SendTradeRequest TradeTarget, Index
End Sub

Sub HandleAcceptTradeRequest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim TradeTarget As Long
    Dim I As Long

    TradeTarget = TempPlayer(Index).TradeRequest
    
    ' See if the player can trade
    If CanPlayerTrade(Index, TradeTarget) = False Then
        ' Clear the tradeRequest server-side
        TempPlayer(Index).TradeRequest = 0
        TempPlayer(TradeTarget).TradeRequest = 0
        Exit Sub
    End If
    
    ' Let them know they're trading
    PlayerMsg Index, "You have accepted " & Trim$(GetPlayerName(TradeTarget)) & "'s trade request.", BrightGreen
    PlayerMsg TradeTarget, Trim$(GetPlayerName(Index)) & " has accepted your trade request.", BrightGreen
    
    ' Clear the trade request server-side
    TempPlayer(Index).TradeRequest = 0
    TempPlayer(TradeTarget).TradeRequest = 0
    
    ' Set that they're trading with each other
    TempPlayer(Index).InTrade = TradeTarget
    TempPlayer(TradeTarget).InTrade = Index
    
    ' Clear out their trade offers
    For I = 1 To MAX_INV
        TempPlayer(Index).TradeOffer(I).Num = 0
        TempPlayer(Index).TradeOffer(I).Value = 0
        TempPlayer(Index).TradeOffer(I).Bind = 0
        TempPlayer(Index).TradeOffer(I).Durability = 0
        TempPlayer(TradeTarget).TradeOffer(I).Num = 0
        TempPlayer(TradeTarget).TradeOffer(I).Value = 0
        TempPlayer(TradeTarget).TradeOffer(I).Bind = 0
        TempPlayer(TradeTarget).TradeOffer(I).Durability = 0
    Next
    
    ' Used to init the trade window client side
    SendTrade Index, TradeTarget
    SendTrade TradeTarget, Index
    
    ' Send the offer data - used to clear their client
    SendTradeUpdate Index, 0
    SendTradeUpdate Index, 1
    SendTradeUpdate TradeTarget, 0
    SendTradeUpdate TradeTarget, 1
End Sub

Sub HandleDeclineTradeRequest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call DeclineTradeRequest(Index)
End Sub

Sub HandleAcceptTrade(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim TradeTarget As Long
    Dim I As Long
    Dim TmpTradeItem(1 To MAX_INV) As PlayerItemRec
    Dim TmpTradeItem2(1 To MAX_INV) As PlayerItemRec
    Dim ItemNum As Integer
    
    TempPlayer(Index).AcceptTrade = True
    TradeTarget = TempPlayer(Index).InTrade
    
    ' If not both of them accept, then exit
    If Not TempPlayer(TradeTarget).AcceptTrade Then
        SendTradeStatus Index, 2
        SendTradeStatus TradeTarget, 1
        Exit Sub
    End If
    
    ' Take their items
    For I = 1 To MAX_INV
        ' Player
        If TempPlayer(Index).TradeOffer(I).Num > 0 Then
            ItemNum = Account(Index).Chars(GetPlayerChar(Index)).Inv(TempPlayer(Index).TradeOffer(I).Num).Num
            If ItemNum > 0 Then
                ' Store temp
                TmpTradeItem(I).Num = ItemNum
                TmpTradeItem(I).Value = TempPlayer(Index).TradeOffer(I).Value
                TmpTradeItem(I).Bind = TempPlayer(Index).TradeOffer(I).Bind
                TmpTradeItem(I).Durability = TempPlayer(Index).TradeOffer(I).Durability
                
                ' Take item
                TakeInvSlot Index, TempPlayer(Index).TradeOffer(I).Num, TmpTradeItem(I).Value, False
            End If
        End If
        
        ' Target
        If TempPlayer(TradeTarget).TradeOffer(I).Num > 0 Then
            ItemNum = GetPlayerInvItemNum(TradeTarget, TempPlayer(TradeTarget).TradeOffer(I).Num)
            If ItemNum > 0 Then
                ' Store temp
                TmpTradeItem2(I).Num = ItemNum
                TmpTradeItem2(I).Value = TempPlayer(TradeTarget).TradeOffer(I).Value
                TmpTradeItem2(I).Bind = TempPlayer(TradeTarget).TradeOffer(I).Bind
                TmpTradeItem2(I).Durability = TempPlayer(TradeTarget).TradeOffer(I).Durability
                
                ' Take item
                TakeInvSlot TradeTarget, TempPlayer(TradeTarget).TradeOffer(I).Num, TmpTradeItem2(I).Value, False
            End If
        End If
    Next
    
    ' Taken all items, now they can't get items because of no inventory space
    For I = 1 To MAX_INV
        ' Player
        If TmpTradeItem2(I).Num > 0 Then
            ' Give away
            GiveInvItem Index, TmpTradeItem2(I).Num, TmpTradeItem2(I).Value, -1, 0, False
        End If
        
        ' Target
        If TmpTradeItem(I).Num > 0 Then
            ' Give away
            GiveInvItem TradeTarget, TmpTradeItem(I).Num, TmpTradeItem(I).Value, -1, 0, False
        End If
    Next
    
    ' Refresh inventory
    SendInventory Index
    SendInventory TradeTarget
    
    ' They now have all the items. Clear out values + let them out of the trade.
    For I = 1 To MAX_INV
        TempPlayer(Index).TradeOffer(I).Num = 0
        TempPlayer(Index).TradeOffer(I).Value = 0
        TempPlayer(Index).TradeOffer(I).Bind = 0
        TempPlayer(Index).TradeOffer(I).Durability = 0
        TempPlayer(TradeTarget).TradeOffer(I).Num = 0
        TempPlayer(TradeTarget).TradeOffer(I).Value = 0
        TempPlayer(TradeTarget).TradeOffer(I).Bind = 0
        TempPlayer(TradeTarget).TradeOffer(I).Durability = 0
    Next

    TempPlayer(Index).InTrade = 0
    TempPlayer(TradeTarget).InTrade = 0
    
    PlayerMsg Index, "Trade completed.", BrightGreen
    PlayerMsg TradeTarget, "Trade completed.", BrightGreen
    
    SendCloseTrade Index
    SendCloseTrade TradeTarget
End Sub

Sub HandleDeclineTrade(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim TradeTarget As Long

    TradeTarget = TempPlayer(Index).InTrade

    For I = 1 To MAX_INV
        TempPlayer(Index).TradeOffer(I).Num = 0
        TempPlayer(Index).TradeOffer(I).Value = 0
        TempPlayer(Index).TradeOffer(I).Bind = 0
        TempPlayer(Index).TradeOffer(I).Durability = 0
        TempPlayer(TradeTarget).TradeOffer(I).Num = 0
        TempPlayer(TradeTarget).TradeOffer(I).Value = 0
        TempPlayer(TradeTarget).TradeOffer(I).Bind = 0
        TempPlayer(TradeTarget).TradeOffer(I).Durability = 0
    Next

    TempPlayer(Index).InTrade = 0
    TempPlayer(TradeTarget).InTrade = 0
    
    PlayerMsg Index, "You declined the trade.", BrightRed
    PlayerMsg TradeTarget, GetPlayerName(Index) & " has declined the trade!", BrightRed
    
    SendCloseTrade Index
    SendCloseTrade TradeTarget
End Sub

Sub HandleTradeItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim InvSlot As Byte
    Dim Amount As Long
    Dim EmptySlot As Long
    Dim ItemNum As Integer
    Dim I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    InvSlot = buffer.ReadByte
    Amount = buffer.ReadLong
    
    Set buffer = Nothing
    
    If InvSlot < 1 Or InvSlot > MAX_INV Then Exit Sub
    
    ItemNum = GetPlayerInvItemNum(Index, InvSlot)
    If ItemNum <= 0 Or ItemNum > MAX_ITEMS Then Exit Sub
    
    ' Hack prevention
    If Item(GetPlayerInvItemNum(Index, InvSlot)).Stackable = 1 Then
        If GetPlayerInvItemValue(Index, InvSlot) < Amount Then Amount = GetPlayerInvItemValue(Index, InvSlot)
        If Amount < 1 Then Exit Sub
    Else
        If Not Amount = 0 Then Exit Sub
    End If

    If Item(ItemNum).Stackable = 1 Then
        ' Check if already offering same currency item
        For I = 1 To MAX_INV
            If TempPlayer(Index).TradeOffer(I).Num = InvSlot Then
                ' Add amount
                TempPlayer(Index).TradeOffer(I).Value = TempPlayer(Index).TradeOffer(I).Value + Amount
                
                ' Clamp to limits
                If TempPlayer(Index).TradeOffer(I).Value > GetPlayerInvItemValue(Index, InvSlot) Then
                    TempPlayer(Index).TradeOffer(I).Value = GetPlayerInvItemValue(Index, InvSlot)
                End If
                
                TempPlayer(Index).TradeOffer(I).Bind = GetPlayerInvItemBind(Index, InvSlot)
                TempPlayer(Index).TradeOffer(I).Durability = GetPlayerInvItemDur(Index, InvSlot)
                
                ' Cancel any trade agreement
                TempPlayer(Index).AcceptTrade = False
                TempPlayer(TempPlayer(Index).InTrade).AcceptTrade = False
                
                SendTradeStatus Index, 0
                SendTradeStatus TempPlayer(Index).InTrade, 0
                
                SendTradeUpdate Index, 0
                SendTradeUpdate TempPlayer(Index).InTrade, 1
                ' Exit early
                Exit Sub
            End If
        Next
    Else
        ' Make sure they're not already offering it
        For I = 1 To MAX_INV
            If TempPlayer(Index).TradeOffer(I).Num = InvSlot Then
                PlayerMsg Index, "You've already offered this item.", BrightRed
                Exit Sub
            End If
        Next
    End If
    
    ' Not already offering - find earliest empty slot
    For I = 1 To MAX_INV
        If TempPlayer(Index).TradeOffer(I).Num = 0 Then
            EmptySlot = I
            Exit For
        End If
    Next
    
    TempPlayer(Index).TradeOffer(EmptySlot).Num = InvSlot
    TempPlayer(Index).TradeOffer(EmptySlot).Value = Amount
    TempPlayer(Index).TradeOffer(EmptySlot).Bind = GetPlayerInvItemBind(Index, InvSlot)
    TempPlayer(Index).TradeOffer(EmptySlot).Durability = GetPlayerInvItemDur(Index, InvSlot)
    
    ' Cancel any trade agreement and send new data
    TempPlayer(Index).AcceptTrade = False
    TempPlayer(TempPlayer(Index).InTrade).AcceptTrade = False
    
    SendTradeStatus Index, 0
    SendTradeStatus TempPlayer(Index).InTrade, 0
    
    SendTradeUpdate Index, 0
    SendTradeUpdate TempPlayer(Index).InTrade, 1
End Sub

Sub HandleUntradeItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim TradeSlot As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    TradeSlot = buffer.ReadByte
    Set buffer = Nothing
    
    ' Make sure there in trade
    If TempPlayer(Index).InTrade = 0 Then Exit Sub
    
    If TradeSlot < 1 Or TradeSlot > MAX_INV Then Exit Sub
    If TempPlayer(Index).TradeOffer(TradeSlot).Num < 1 Then Exit Sub
    
    TempPlayer(Index).TradeOffer(TradeSlot).Num = 0
    TempPlayer(Index).TradeOffer(TradeSlot).Value = 0
    TempPlayer(Index).TradeOffer(TradeSlot).Bind = 0
    TempPlayer(Index).TradeOffer(TradeSlot).Durability = 0
    
    If TempPlayer(Index).AcceptTrade Then TempPlayer(Index).AcceptTrade = False
    If TempPlayer(TempPlayer(Index).InTrade).AcceptTrade Then TempPlayer(TempPlayer(Index).InTrade).AcceptTrade = False
    
    SendTradeStatus Index, 0
    SendTradeStatus TempPlayer(Index).InTrade, 0
    
    SendTradeUpdate Index, 0
    SendTradeUpdate TempPlayer(Index).InTrade, 1
End Sub

Sub HandleHotbarChange(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim SType As Byte
    Dim Slot As Byte
    Dim HotbarNum As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    SType = buffer.ReadByte
    Slot = buffer.ReadByte
    HotbarNum = buffer.ReadByte
    
    If HotbarNum < 1 Or HotbarNum > MAX_HOTBAR Then Exit Sub
    
    Select Case SType
        Case 0 ' Clear
            Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).Slot = 0
            Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).SType = 0
        Case 1 ' Inventory
            If Slot > 0 And Slot <= MAX_INV Then
                ' Don't add None/Currency/Auto Life type items
                If Item(GetPlayerInvItemNum(Index, Slot)).Stackable = 1 Or Item(GetPlayerInvItemNum(Index, Slot)).Type = ITEM_TYPE_NONE Or Item(GetPlayerInvItemNum(Index, Slot)).Type = ITEM_TYPE_AUTOLIFE Then Exit Sub
                
                If Account(Index).Chars(GetPlayerChar(Index)).Inv(Slot).Num > 0 Then
                    If Len(Trim$(Item(GetPlayerInvItemNum(Index, Slot)).Name)) > 0 Then
                        Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).Slot = Account(Index).Chars(GetPlayerChar(Index)).Inv(Slot).Num
                        Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).SType = SType
                    End If
                End If
            End If
        Case 2 ' Spell
            If Slot > 0 And Slot <= MAX_PLAYER_SPELLS Then
                If Account(Index).Chars(GetPlayerChar(Index)).Spell(Slot) > 0 Then
                    If Len(Trim$(Spell(Account(Index).Chars(GetPlayerChar(Index)).Spell(Slot)).Name)) > 0 Then
                        Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).Slot = Account(Index).Chars(GetPlayerChar(Index)).Spell(Slot)
                        Account(Index).Chars(GetPlayerChar(Index)).Hotbar(HotbarNum).SType = SType
                    End If
                End If
            End If
    End Select
    
    SendHotbar Index
    
    Set buffer = Nothing
End Sub

Sub HandlePartyRequest(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Name As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    
    ' Check if it is invalid
    If Name = vbNullString Then Exit Sub
    If FindPlayer(Name) = Index Then Exit Sub
    
    If IsPlaying(FindPlayer(Name)) = False Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    ' Can't invite if the player is a foe
    If IsAFoe(Index, FindPlayer(Name)) Then Exit Sub
    
    ' Init the request
    Party_Invite Index, FindPlayer(Name)
End Sub

Sub HandleAcceptParty(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Party_InviteAccept TempPlayer(Index).PartyInvite, Index
End Sub

Sub HandleDeclineParty(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Party_InviteDecline TempPlayer(Index).PartyInvite, Index
End Sub

Sub HandlePartyLeave(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Party_PlayerLeave Index
End Sub

Sub HandlePartyMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Msg As String
    
    ' Make sure there in a party
    If TempPlayer(Index).InParty = 0 Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Msg = buffer.ReadString
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    PartyMsg TempPlayer(Index).InParty, Msg, BrightBlue
    Set buffer = Nothing
End Sub

Sub HandleAdminMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Msg As String
    
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_MODERATOR Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Msg = buffer.ReadString
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    Call AdminMsg(Msg, BrightCyan)
    Set buffer = Nothing
End Sub

Sub HandleGuildCreate(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Name As String, I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    Name = Trim$(buffer.ReadString)
    Set buffer = Nothing
    
    If Len(Name) > NAME_LENGTH Then
        Call PlayerMsg(Index, "You have entered a guild name that is too long!", BrightRed)
        Exit Sub
    End If

    For I = 1 To MAX_GUILDS
        If Trim$(LCase$(Guild(I).Name)) = Name Then
            Call PlayerMsg(Index, "This guild name has already been used!", BrightRed)
            Exit Sub
        End If
    Next

    If HasItem(Index, 1) < Options.GuildCost Then
        Call PlayerMsg(Index, "You do not have enough " & Trim$(Item(1).Name) & " to purchase a guild!", BrightRed)
        Exit Sub
    Else
        For I = 1 To MAX_GUILDS
            If Len(Trim$(Guild(I).Name)) = 0 Then
                Guild(I).Name = Name
                Guild(I).Members(1) = GetPlayerLogin(Index)
                Call SetPlayerGuild(Index, I)
                Call SetPlayerGuildAccess(Index, MAX_GUILDACCESS)
                Call TakeInvItem(Index, 1, Options.GuildCost)
                Call GlobalMsg(GetPlayerName(Index) & " has founded the guild " & Name & "!", Yellow)
                Call SendPlayerGuild(Index)
                Call SaveGuilds
                Call SaveAccount(Index)
                Exit Sub
            End If
        Next
        
        Call PlayerMsg(Index, "There are too many guilds already! You must join another guild or wait until the amount of guilds permitted is increased.", BrightRed)
    End If
End Sub

Sub HandleGuildInvite(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Name As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    
    ' Check if it is invalid
    If Name = vbNullString Then Exit Sub
    If FindPlayer(Name) = Index Then Exit Sub
    
    If IsPlaying(FindPlayer(Name)) = False Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    ' Make sure they are actually in a guild
    If GetPlayerGuild(Index) = 0 Then Exit Sub
    
    ' Can't invite if the player is a foe
    If IsAFoe(Index, FindPlayer(Name)) = True Then Exit Sub
    
    ' Init the request
    Guild_Invite Index, FindPlayer(Name)
End Sub

Sub Guild_Invite(ByVal Index As Long, ByVal OtherPlayer As Long)
    ' Is the other player in a guild already
    If GetPlayerGuild(OtherPlayer) > 0 Then
        Call PlayerMsg(Index, GetPlayerName(OtherPlayer) & " is already in a guild!", BrightRed)
        Exit Sub
    End If
    
    ' Check if there doing another action
    If IsPlayerBusy(Index, OtherPlayer) Then Exit Sub
    
    ' Make sure they have a high enough access
    If GetPlayerGuildAccess(Index) < 2 Then
        Call PlayerMsg(Index, "You are not allowed to invite members to the guild!", BrightRed)
        Exit Sub
    End If
    
    ' Send the invite
    Call SendGuildInvite(Index, OtherPlayer)
    
    ' Set the invite target
    TempPlayer(OtherPlayer).GuildInvite = Index
    
    ' Let them know
    PlayerMsg Index, "Guild invitation sent.", Pink
End Sub

Sub HandleGuildRemove(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Name As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    
    ' Check if it is invalid
    If Name = vbNullString Then Exit Sub
    If FindPlayer(Name) = Index Then Exit Sub
    
    ' Make sure they are actually in a guild
    If GetPlayerGuild(Index) = 0 Or GetPlayerGuild(FindPlayer(Name)) = 0 Then Exit Sub
    
    ' Init the request
    Guild_Remove Index, FindPlayer(Name)
End Sub

Sub Guild_Remove(ByVal Index As Long, ByVal OtherPlayer As Long)
    Dim I As Long
    
    If IsPlaying(Index) = False Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    ' Is the other player not in a guild
    If GetPlayerGuild(OtherPlayer) = 0 Then
        Call PlayerMsg(Index, GetPlayerName(OtherPlayer) & " is not in a guild!", BrightRed)
        Exit Sub
    End If
    
    ' Is the other player not in our guild
    If Not GetPlayerGuild(OtherPlayer) = GetPlayerGuild(Index) Then
        Call PlayerMsg(Index, GetPlayerName(OtherPlayer) & " is not in our guild!", BrightRed)
        Exit Sub
    End If

    ' Make sure they have a high enough access
    If GetPlayerGuildAccess(Index) < 2 Then
        Call PlayerMsg(Index, "You are not allowed to remove other guild members!", BrightRed)
        Exit Sub
    End If

    ' Can't remove someone from guild if they have a higher access
    If GetPlayerGuildAccess(Index) <= GetPlayerGuildAccess(OtherPlayer) Then
        Call PlayerMsg(Index, "You can't change the guild rank of someone who has same or higher rank!", BrightRed)
        Exit Sub
    End If
    
    Call GuildMsg(Index, GetPlayerName(OtherPlayer) & " has been removed from the guild by " & GetPlayerName(Index) & "!", BrightRed, True)
    
    ' Remove them
    Call SetPlayerGuild(OtherPlayer, 0)
    Call SetPlayerGuildAccess(OtherPlayer, 0)
    
    ' Send the update
    Call SendPlayerGuild(OtherPlayer)
    
    ' Update other player's guild information
    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            If GetPlayerGuild(I) = GetPlayerGuild(Index) Then
                SendPlayerGuildMembers I
            End If
        End If
    Next
End Sub

Sub HandleGuildChangeAccess(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, Name As String, X As Long, I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    X = buffer.ReadByte
    I = FindPlayer(Name)
    Set buffer = Nothing
    
    ' Make sure they are actually in a guild
    If GetPlayerGuild(Index) = 0 Or GetPlayerGuild(I) = 0 Then Exit Sub
    
    If X < 1 Or X > MAX_GUILDACCESS Then
        Call PlayerMsg(Index, "Invalid access level!", BrightRed)
        Exit Sub
    End If
    
    If Not IsPlaying(I) Then
        Call PlayerMsg(Index, "Player is not online!", BrightRed)
        Exit Sub
    End If
    
    If I = Index Then
        Call PlayerMsg(Index, "You can't change your own access!", BrightRed)
        Exit Sub
    End If
    
    If X < GetPlayerGuildAccess(Index) Then
        If X = GetPlayerGuildAccess(I) Then
            Call PlayerMsg(Index, "That player is already that access level!", BrightRed)
            Exit Sub
        End If
        
        If GetPlayerGuildAccess(Index) < 3 Then
            Call PlayerMsg(Index, "You need to have a higher guild rank to change that player's rank!", BrightRed)
            Exit Sub
        End If
        
        If GetPlayerGuildAccess(Index) <= GetPlayerGuildAccess(I) Then
            PlayerMsg Index, "You can't change the guild rank of someone who has the same or higher rank!", BrightRed
            Exit Sub
        End If
        
        ' Set access
        Call SetPlayerGuildAccess(I, X)

        Call GuildMsg(I, GetPlayerName(Index) & " has changed " & GetPlayerName(I) & "'s guild rank to " & X & "!", Yellow, True)
    Else
        Call PlayerMsg(Index, "You can't promote players to the same or higher guild rank as yourself!", BrightRed)
        Exit Sub
    End If
    
    ' Send guild to player
    Call SendPlayerGuild(I)
End Sub

Sub HandleAcceptGuild(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    
    Call GuildMsg(Index, GetPlayerName(Index) & " has joined " & Trim$(Guild(Account(TempPlayer(Index).GuildInvite).Chars(GetPlayerChar(Index)).Guild.Index).Name) & "!", Yellow, True)
    Call SetPlayerGuildAccess(Index, 1)
    Call SetPlayerGuild(Index, GetPlayerGuild(TempPlayer(Index).GuildInvite))
    TempPlayer(Index).GuildInvite = 0
    
     ' Send data
    Call SendPlayerGuild(Index)
    
    ' Update other player's guild information
    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            If GetPlayerGuild(I) = GetPlayerGuild(Index) Then
                SendPlayerGuildMembers I
            End If
        End If
    Next
End Sub

Sub HandleDeclineGuild(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call DeclineGuildInvite(Index)
End Sub

Sub HandleGuildDisband(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Guild_Disband Index
End Sub

Sub HandleGuildMsg(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Msg As String
    
    ' Can't send messgae if not in a guild
    If GetPlayerGuild(Index) = 0 Then Exit Sub
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Msg = buffer.ReadString
    Set buffer = Nothing
    
    If Msg = vbNullString Then Exit Sub
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then
        Call PlayerMsg(Index, "You are muted!", BrightRed)
        Exit Sub
    End If
    
    Call GuildMsg(Index, Msg, Green)
End Sub

Sub HandleBreakSpell(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    If TempPlayer(Index).SpellBuffer.Spell > 0 Then
        Call SendActionMsg(GetPlayerMap(Index), "Interrupted " & Trim$(Spell(TempPlayer(Index).SpellBuffer.Spell).Name), BrightRed, ACTIONMSG_SCROLL, GetPlayerX(Index) * 32, GetPlayerY(Index) * 32)
        Call ClearAccountSpellBuffer(Index)
    End If
End Sub

Sub HandleCanTrade(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    If Account(Index).Chars(GetPlayerChar(Index)).CanTrade = False Then
        Call PlayerMsg(Index, "Other players are now able to trade with you.", BrightGreen)
        Account(Index).Chars(GetPlayerChar(Index)).CanTrade = True
    Else
        Call PlayerMsg(Index, "Other players are now unable to trade with you.", BrightRed)
        Account(Index).Chars(GetPlayerChar(Index)).CanTrade = False
    End If
End Sub

Sub HandleAddFriend(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    Set buffer = Nothing
    
    ' Make sure the name isn't empty
    If Trim$(Name) = vbNullString Then
        Call PlayerMsg(Index, "Invalid name!", BrightRed)
        Exit Sub
    End If
    
    ' Check to see if they have more friends then they can hold
    If Account(Index).Friends.AmountOfFriends = MAX_PEOPLE Then
        Call PlayerMsg(Index, "Tour friends list is full!", BrightRed)
        Exit Sub
    End If
    
    ' See if character exists
    If FindPlayer(Name) = 0 Then
        Call PlayerMsg(Index, "Player is not online!", 12)
        Exit Sub
    End If
    
    If FindPlayer(Name) = Index Then
        Call PlayerMsg(Index, "You can't add yourself as a friend!", 12)
        Exit Sub
    End If
    
    If GetPlayerAccess(FindPlayer(Name)) > STAFF_MODERATOR Then
        Call PlayerMsg(Index, "You can't add a friend who is a staff member!", BrightRed)
        Exit Sub
    End If
    
    ' Check if they already have that as their friend
    If Account(Index).Friends.AmountOfFriends > 0 Then
        For I = 1 To Account(Index).Friends.AmountOfFriends
            If Trim$(Account(Index).Friends.Members(I)) = Name Then
                Call PlayerMsg(Index, "You already have that player as your friend!", 12)
                Exit Sub
            End If
        Next
    End If
    
    ' Add friend to List
    If Trim$(Account(Index).Friends.Members(Account(Index).Friends.AmountOfFriends + 1)) = vbNullString Then
        Account(Index).Friends.Members(Account(Index).Friends.AmountOfFriends + 1) = Name
        Account(Index).Friends.AmountOfFriends = Account(Index).Friends.AmountOfFriends + 1
        Call PlayerMsg(Index, "You have added " & Trim$(Account(Index).Friends.Members(Account(Index).Friends.AmountOfFriends)) & " to your friends list!", BrightGreen)
    End If
   
    ' Update Friend List
    Call UpdateFriendsList(Index)
End Sub

Sub HandleRemoveFriend(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim I As Long, X As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    Set buffer = Nothing
   
    ' If the name is blank then exit
    If Name = vbNullString Then Exit Sub
    
    ' If they don't have any friends then exit
    If Account(Index).Friends.AmountOfFriends = 0 Then
        Call PlayerMsg(Index, "You don't have any friends to remove!", BrightRed)
        Exit Sub
    End If
    
    X = 0
    
    For I = 1 To Account(Index).Friends.AmountOfFriends
        If Trim$(Account(Index).Friends.Members(I)) = Name Then
            X = 1
            Exit For
        End If
    Next
    
    If Not X = 1 Then
        Call PlayerMsg(Index, "You don't have a friend with that name!", BrightRed)
    End If
    
    For I = 1 To Account(Index).Friends.AmountOfFriends
        If Trim$(Account(Index).Friends.Members(I)) = Name Then
            ' They successfully removed the friend, send the message
            Call PlayerMsg(Index, "You have removed " & Trim$(Account(Index).Friends.Members(I)) & " from your friends list!", BrightRed)
            Account(Index).Friends.Members(I) = vbNullString
            Account(Index).Friends.AmountOfFriends = Account(Index).Friends.AmountOfFriends - 1
            Exit For
        End If
    Next
   
    ' Update Friend List
    Call UpdateFriendsList(Index)
End Sub

Sub HandleUpdateFriendsList(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call UpdateFriendsList(Index)
End Sub

Sub HandleAddFoe(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    Set buffer = Nothing
    
    ' Make sure the name isn't empty
    If Trim$(Name) = vbNullString Then
        Call PlayerMsg(Index, "Invalid name!", BrightRed)
        Exit Sub
    End If
    
    ' Check to see if they have more Foes then they can hold
    If Account(Index).Foes.Amount = MAX_PEOPLE Then
        Call PlayerMsg(Index, "Tour foes list is full!", BrightRed)
        Exit Sub
    End If
    
    ' See if character exists
    If FindPlayer(Name) = 0 Then
        Call PlayerMsg(Index, "Player is not online!", 12)
        Exit Sub
    End If
    
    If FindPlayer(Name) = Index Then
        Call PlayerMsg(Index, "You can't add yourself as a foe!", 12)
        Exit Sub
    End If
    
    If GetPlayerAccess(FindPlayer(Name)) > STAFF_MODERATOR Then
        Call PlayerMsg(Index, "You can't add a foe who is a staff member!", BrightRed)
        Exit Sub
    End If
    
    ' Check if they already have that as their Foe
    If Account(Index).Foes.Amount > 0 Then
        For I = 1 To Account(Index).Foes.Amount
            If Trim$(Account(Index).Foes.Members(I)) = Name Then
                Call PlayerMsg(Index, "You already have that player as your foe!", 12)
                Exit Sub
            End If
        Next
    End If
    
    ' Add Foe to List
    If Trim$(Account(Index).Foes.Members(Account(Index).Foes.Amount + 1)) = vbNullString Then
        Account(Index).Foes.Members(Account(Index).Foes.Amount + 1) = Name
        Account(Index).Foes.Amount = Account(Index).Foes.Amount + 1
        Call PlayerMsg(Index, "You have added " & Trim$(Account(Index).Foes.Members(Account(Index).Foes.Amount)) & " to your foes list!", BrightGreen)
    End If
   
    ' Update Foe List
    Call UpdateFoesList(Index)
End Sub

Sub HandleRemoveFoe(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim Name As String
    Dim I As Long, X As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    Name = buffer.ReadString
    Set buffer = Nothing
   
    ' If the name is blank then exit
    If Name = vbNullString Then Exit Sub
    
    ' If they don't have any Foes then exit
    If Account(Index).Foes.Amount = 0 Then
        Call PlayerMsg(Index, "You don't have any foes to remove!", BrightRed)
        Exit Sub
    End If
    
    X = 0
    
    For I = 1 To Account(Index).Foes.Amount
        If Account(Index).Foes.Members(I) = Name Then
            X = 1
            Exit For
        End If
    Next
    
    If Not X = 1 Then
        Call PlayerMsg(Index, "You don't have a foe with that name!", BrightRed)
    End If
    
    For I = 1 To Account(Index).Foes.Amount
        If Trim$(Account(Index).Foes.Members(I)) = Name Then
            ' They successfully removed the foe, send the message
            Call PlayerMsg(Index, "You have removed " & Trim$(Account(Index).Foes.Members(I)) & " from your foes list!", BrightRed)
            Account(Index).Foes.Members(I) = vbNullString
            Account(Index).Foes.Amount = Account(Index).Foes.Amount - 1
            Exit For
        End If
    Next
   
    ' Update Foe List
    Call UpdateFoesList(Index)
End Sub

Sub HandleUpdateFoesList(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Call UpdateFoesList(Index)
End Sub

Private Sub HandleUpdateData(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim I As Long

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    TempPlayer(Index).HDSerial = buffer.ReadString
    
    ' Close any clients that have the same serial
    For I = 1 To Player_HighIndex
        If Not I = Index And Options.MultipleSerial = 0 Then
            If GetPlayerHDSerial(I) = GetPlayerHDSerial(Index) Then
                Call SendCloseClient(Index)
                Exit Sub
            End If
        End If
    Next
    
    ' Check version
    If Not App.Major = buffer.ReadLong Or Not App.Minor = buffer.ReadLong Or Not App.Revision = buffer.ReadLong Then
        Call AlertMsg(Index, "Version outdated, please visit " & Options.Website & " for more information on new releases and run the updater.")
    End If
    
    ' Send the news
    Call SendNews(Index)
    
    ' Send classes
    Call SendClasses(Index)
    
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::
' :: Save Ban packet ::
' ::::::::::::::::::::::
Sub HandleSaveBan(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim BanSize As Long
    Dim BanData() As Byte
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_BANS Then Exit Sub

    ' Update the Ban
    BanSize = LenB(Ban(n))
    ReDim BanData(BanSize - 1)
    BanData = buffer.ReadBytes(BanSize)
    CopyMemory ByVal VarPtr(Ban(n)), ByVal VarPtr(BanData(0)), BanSize
    Set buffer = Nothing
    
    ' Save it
    Call SaveBan(n)
    Call AddLog(GetPlayerName(Index) & " saved Ban #" & n & ".", "Staff")
End Sub

Sub HandleBanEditor(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_ADMIN Then Exit Sub
    
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    
    buffer.WriteLong SBanEditor
    Call SendDataTo(Index, buffer.ToArray())
    Set buffer = Nothing
End Sub

Sub HandleSetTitle(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim TitleNum As Byte
    Dim I As Long
   
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
   
    TitleNum = buffer.ReadByte
    
    ' Check for an invalid title
    If TitleNum < 0 Or TitleNum > MAX_TITLES Then Exit Sub
    
    ' Make sure they have the title
    If Not TitleNum = 0 Then
        For I = 1 To MAX_TITLES
            If Account(Index).Chars(GetPlayerChar(Index)).Title(I) = TitleNum Then
                Exit For
            End If
            
            If I = MAX_TITLES Then Exit Sub
        Next
    End If
    
    ' Set the current title
    Account(Index).Chars(GetPlayerChar(Index)).CurrentTitle = TitleNum

    ' Send updated title to map
    Call SendPlayerTitles(Index)
End Sub

' ::::::::::::::::::::::
' :: Save Title packet ::
' ::::::::::::::::::::::
Sub HandleSaveTitle(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim TitleSize As Long
    Dim TitleData() As Byte
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_TITLES Then Exit Sub

    ' Update the Title
    TitleSize = LenB(Title(n))
    ReDim TitleData(TitleSize - 1)
    TitleData = buffer.ReadBytes(TitleSize)
    CopyMemory ByVal VarPtr(Title(n)), ByVal VarPtr(TitleData(0)), TitleSize
    Set buffer = Nothing
    
    ' Save it
    Call SaveTitle(n)
    Call SendUpdateTitleToAll(n)
    Call AddLog(GetPlayerName(Index) & " saved Title #" & n & ".", "Staff")
End Sub

Sub HandleTitleEditor(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    
    buffer.WriteLong STitleEditor
    Call SendDataTo(Index, buffer.ToArray())
    Set buffer = Nothing
End Sub

Sub HandleChangeStatus(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As New clsBuffer
    Dim Status As String
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    Status = buffer.ReadString
    
    If Trim$(Account(Index).Chars(GetPlayerChar(Index)).Status) = "Muted" Then Exit Sub
    
    Account(Index).Chars(GetPlayerChar(Index)).Status = Status
    Call SendPlayerStatus(Index)
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::
' :: Save Moral packet ::
' ::::::::::::::::::::::
Sub HandleSaveMoral(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long
    Dim buffer As clsBuffer
    Dim MoralSize As Long
    Dim MoralData() As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_MORALS Then Exit Sub

    ' Update the Moral
    MoralSize = LenB(Moral(n))
    ReDim MoralData(MoralSize - 1)
    MoralData = buffer.ReadBytes(MoralSize)
    CopyMemory ByVal VarPtr(Moral(n)), ByVal VarPtr(MoralData(0)), MoralSize
    Set buffer = Nothing
    
    ' Save it
    Call SaveMoral(n)
    Call SendUpdateMoralToAll(n)
    Call AddLog(GetPlayerName(Index) & " saved Moral #" & n & ".", "Staff")
End Sub

Sub HandleMoralEditor(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Dim buffer As clsBuffer
    Set buffer = New clsBuffer
    
    buffer.WriteLong SMoralEditor
    Call SendDataTo(Index, buffer.ToArray())
    Set buffer = Nothing
End Sub

' ::::::::::::::::::::::
' :: Save Class packet ::
' ::::::::::::::::::::::
Sub HandleSaveClass(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long, I As Long
    Dim buffer As clsBuffer
    Dim Classesize As Long
    Dim ClassData() As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_CLASSES Then Exit Sub

    ' Update the Class
    Classesize = LenB(Class(n))
    ReDim ClassData(Classesize - 1)
    ClassData = buffer.ReadBytes(Classesize)
    CopyMemory ByVal VarPtr(Class(n)), ByVal VarPtr(ClassData(0)), Classesize
    Set buffer = Nothing
    
    ' Save it
    Call SaveClass(n)
    
    For I = 1 To Player_HighIndex
        If IsConnected(I) Then
            If Len(Trim$(Class(n).Name)) > 0 Then
                Call SendUpdateClassTo(I, n)
            End If
        End If
    Next
    
    Call UpdateAllClassData
    
    Call AddLog(GetPlayerName(Index) & " saved Class #" & n & ".", "Staff")
End Sub

Sub HandleClassEditor(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
        
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Set buffer = New clsBuffer
    
    buffer.WriteLong SClassEditor
    Call SendDataTo(Index, buffer.ToArray())
    Set buffer = Nothing
End Sub

Sub HandleDestroyItem(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim InvNum As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    InvNum = buffer.ReadInteger

    ' Prevent subscript out of range
    If InvNum < 1 Or InvNum > MAX_INV Then Exit Sub
    
    Call TakeInvSlot(Index, InvNum, 1, True)
End Sub

' :::::::::::::::::::::::::
' :: Save Emoticon packet ::
' :::::::::::::::::::::::::
Sub HandleSaveEmoticon(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim n As Long, I As Long
    Dim buffer As clsBuffer
    Dim EmoticonSize As Long
    Dim EmoticonData() As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub

    n = buffer.ReadLong

    If n < 1 Or n > MAX_EMOTICONS Then Exit Sub

    ' Update the Emoticon
    EmoticonSize = LenB(Emoticon(n))
    ReDim EmoticonData(EmoticonSize - 1)
    EmoticonData = buffer.ReadBytes(EmoticonSize)
    CopyMemory ByVal VarPtr(Emoticon(n)), ByVal VarPtr(EmoticonData(0)), EmoticonSize
    Set buffer = Nothing
    
    ' Save it
    Call SaveEmoticon(n)
    Call SendUpdateEmoticonToAll(n)
    Call AddLog(GetPlayerName(Index) & " saved Emoticon #" & n & ".", "Staff")
End Sub

Sub HandleEmoticonEditor(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
        
    ' Prevent hacking
    If GetPlayerAccess(Index) < STAFF_DEVELOPER Then Exit Sub
    
    Set buffer = New clsBuffer
    
    buffer.WriteLong SEmoticonEditor
    Call SendDataTo(Index, buffer.ToArray())
    Set buffer = Nothing
End Sub

Private Sub HandleCheckEmoticon(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, EmoticonNum As Byte
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    EmoticonNum = buffer.ReadLong
    
    ' Subscript out of range
    If EmoticonNum < 1 Or EmoticonNum > MAX_EMOTICONS Then Exit Sub
    
    SendCheckEmoticon Index, GetPlayerMap(Index), EmoticonNum
End Sub

Sub HandleEventChatReply(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer
    Dim eventID As Long, PageID As Long, reply As Long, I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    eventID = buffer.ReadLong
    PageID = buffer.ReadLong
    reply = buffer.ReadLong
    
    If TempPlayer(Index).EventProcessingCount > 0 Then
        For I = 1 To TempPlayer(Index).EventProcessingCount
            If TempPlayer(Index).EventProcessing(I).eventID = eventID And TempPlayer(Index).EventProcessing(I).PageID = PageID Then
                If TempPlayer(Index).EventProcessing(I).WaitingForResponse = 1 Then
                    If reply = 0 Then
                        If Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Index = EventType.evShowText Then
                            TempPlayer(Index).EventProcessing(I).WaitingForResponse = 0
                        End If
                    ElseIf reply > 0 Then
                        If Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Index = EventType.evShowChoices Then
                            Select Case reply
                                Case 1
                                    TempPlayer(Index).EventProcessing(I).ListLeftOff(TempPlayer(Index).EventProcessing(I).CurList) = TempPlayer(Index).EventProcessing(I).CurSlot
                                    TempPlayer(Index).EventProcessing(I).CurList = Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Data1
                                    TempPlayer(Index).EventProcessing(I).CurSlot = 1
                                Case 2
                                    TempPlayer(Index).EventProcessing(I).ListLeftOff(TempPlayer(Index).EventProcessing(I).CurList) = TempPlayer(Index).EventProcessing(I).CurSlot
                                    TempPlayer(Index).EventProcessing(I).CurList = Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Data2
                                    TempPlayer(Index).EventProcessing(I).CurSlot = 1
                                Case 3
                                    TempPlayer(Index).EventProcessing(I).ListLeftOff(TempPlayer(Index).EventProcessing(I).CurList) = TempPlayer(Index).EventProcessing(I).CurSlot
                                    TempPlayer(Index).EventProcessing(I).CurList = Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Data3
                                    TempPlayer(Index).EventProcessing(I).CurSlot = 1
                                Case 4
                                    TempPlayer(Index).EventProcessing(I).ListLeftOff(TempPlayer(Index).EventProcessing(I).CurList) = TempPlayer(Index).EventProcessing(I).CurSlot
                                    TempPlayer(Index).EventProcessing(I).CurList = Map(GetPlayerMap(Index)).Events(eventID).Pages(PageID).CommandList(TempPlayer(Index).EventProcessing(I).CurList).Commands(TempPlayer(Index).EventProcessing(I).CurSlot - 1).Data4
                                    TempPlayer(Index).EventProcessing(I).CurSlot = 1
                            End Select
                        End If
                        TempPlayer(Index).EventProcessing(I).WaitingForResponse = 0
                    End If
                End If
            End If
        Next
    End If
    Set buffer = Nothing
End Sub

Sub HandleEvent(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim I As Long
    Dim n As Long
    Dim Damage As Long
    Dim TempIndex As Long
    Dim X As Long, Y As Long, BeginEventProcessing As Boolean, z As Long, buffer As clsBuffer

    ' Check tradeskills
    Select Case GetPlayerDir(Index)
        Case DIR_UP

            If GetPlayerY(Index) = 0 Then Exit Sub
            X = GetPlayerX(Index)
            Y = GetPlayerY(Index) - 1
        Case DIR_DOWN

            If GetPlayerY(Index) = Map(GetPlayerMap(Index)).MaxY Then Exit Sub
            X = GetPlayerX(Index)
            Y = GetPlayerY(Index) + 1
        Case DIR_LEFT

            If GetPlayerX(Index) = 0 Then Exit Sub
            X = GetPlayerX(Index) - 1
            Y = GetPlayerY(Index)
        Case DIR_RIGHT

            If GetPlayerX(Index) = Map(GetPlayerMap(Index)).MaxX Then Exit Sub
            X = GetPlayerX(Index) + 1
            Y = GetPlayerY(Index)
    End Select
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data
    I = buffer.ReadLong
    Set buffer = Nothing
    
    If TempPlayer(Index).EventMap.CurrentEvents > 0 Then
        For z = 1 To TempPlayer(Index).EventMap.CurrentEvents
            ' Don't process events that are already processing
            If TempPlayer(Index).EventProcessingCount >= z Then
                If TempPlayer(Index).EventProcessing(z).eventID = I Then Exit Sub
            End If
            
            If TempPlayer(Index).EventMap.EventPages(z).eventID = I Then
                I = z
                BeginEventProcessing = True
                Exit For
            End If
        Next
    End If
    
    If BeginEventProcessing = True Then
        If Map(GetPlayerMap(Index)).Events(TempPlayer(Index).EventMap.EventPages(I).eventID).Pages(TempPlayer(Index).EventMap.EventPages(I).PageID).CommandListCount > 0 Then
            ' Process this event, it is action button and everything checks out
            TempPlayer(Index).EventProcessingCount = TempPlayer(Index).EventProcessingCount + 1
            ReDim Preserve TempPlayer(Index).EventProcessing(TempPlayer(Index).EventProcessingCount)
            
            With TempPlayer(Index).EventProcessing(TempPlayer(Index).EventProcessingCount)
                .ActionTimer = timeGetTime
                .CurList = 1
                .CurSlot = 1
                .eventID = TempPlayer(Index).EventMap.EventPages(I).eventID
                .PageID = TempPlayer(Index).EventMap.EventPages(I).PageID
                .WaitingForResponse = 0
                ReDim .ListLeftOff(0 To Map(GetPlayerMap(Index)).Events(TempPlayer(Index).EventMap.EventPages(I).eventID).Pages(TempPlayer(Index).EventMap.EventPages(I).PageID).CommandListCount)
            End With
        End If
        BeginEventProcessing = False
    End If
End Sub

Sub HandleRequestSwitchesAndVariables(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    SendSwitchesAndVariables (Index)
End Sub

Sub HandleSwitchesAndVariables(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, I As Long
    
    Set buffer = New clsBuffer
    buffer.WriteBytes Data()
    
    For I = 1 To MAX_SWITCHES
        Switches(I) = buffer.ReadString
    Next
    
    For I = 1 To MAX_VARIABLES
        Variables(I) = buffer.ReadString
    Next
    
    SaveSwitches
    SaveVariables
    
    Set buffer = Nothing
    
    SendSwitchesAndVariables 0, True
End Sub

 ' Character Editor
Sub HandleRequestAllCharacters(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    If GetPlayerAccess(Index) >= STAFF_ADMIN Then
        SendAllCharacters Index
    End If
End Sub

Sub HandleRequestExtendedPlayerData(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer, I As Long
    
    Set buffer = New clsBuffer
    
    buffer.WriteBytes Data()
    SendExtendedPlayerData Index, buffer.ReadString
    
    Set buffer = Nothing
End Sub

Sub HandleCharacterUpdate(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
    Dim buffer As clsBuffer

    Set buffer = New clsBuffer
    buffer.WriteBytes Data()

    Dim PlayerSize As Long, testSize As Long
    Dim PlayerData() As Byte
    Dim updatedPlayer As PlayerEditableRec
    
    PlayerSize = LenB(updatedPlayer)
    ReDim plaData(PlayerSize - 1)
    PlayerData = buffer.ReadBytes(PlayerSize)
    CopyMemory ByVal VarPtr(updatedPlayer), ByVal VarPtr(PlayerData(0)), PlayerSize
    Set buffer = Nothing
    
    ' Check if He is Online
    Dim tempSize As Long
    Dim I As Long, j As Long
    
    For I = 1 To MAX_PLAYERS
        For j = 1 To MAX_CHARS
            If Account(I).Login = "" Then GoTo use_offline_player
            If Trim(Account(I).Chars(j).Name) = Trim(updatedPlayer.Name) Then
                GoTo use_online_player
            End If
        Next
    Next
    
use_offline_player:
    ' Find associated Account Name
    Dim F As Long
    Dim s As String
    Dim charLogin() As String
    F = FreeFile
    
    Open App.path & "\data\accounts\charlist.txt" For Input As #F
        Do While Not EOF(F)
            Input #F, s
            charLogin = Split(s, ":")
            If charLogin(0) = Trim(updatedPlayer.Name) Then Exit Do
        Loop
    Close #F
    
    ' Load Character into temp variable - charLogin(0) -> Character Name | charLogin(1) -> Account/Login Name
    Dim tempAccount As AccountRec
    Dim filename As String
    
    filename = App.path & "\data\accounts\" & charLogin(1) & "\data.bin"
    
    F = FreeFile
    
    Open filename For Binary As #F
        Get #F, , tempAccount
    Close #F
    
    ' Get Character info, that we are requesting -> playerName
    Dim requestedClientPlayer As PlayerEditableRec
    For I = 1 To MAX_CHARS
        If Trim$(tempAccount.Chars(I).Name) = Trim(updatedPlayer.Name) Then
            Exit For
        End If
    Next
    
    tempAccount.Chars(I).Level = updatedPlayer.Level
    tempAccount.Chars(I).Exp = updatedPlayer.Exp
    tempAccount.Chars(I).Points = updatedPlayer.Points
    tempAccount.Chars(I).Sprite = updatedPlayer.Sprite
    tempAccount.Chars(I).Access = updatedPlayer.Access
    tempSize = LenB(tempAccount.Chars(I).Stat(1)) * UBound(tempAccount.Chars(I).Stat)
    CopyMemory ByVal VarPtr(tempAccount.Chars(I).Stat(1)), ByVal VarPtr(updatedPlayer.Stat(1)), tempSize
    tempSize = LenB(tempAccount.Chars(I).Vital(1)) * UBound(tempAccount.Chars(I).Vital)
    CopyMemory ByVal VarPtr(tempAccount.Chars(I).Vital(1)), ByVal VarPtr(updatedPlayer.Vital(1)), tempSize
    
    ' Save the account
    Call ChkDir(App.path & "\data\accounts\", Trim(tempAccount.Login))
    filename = App.path & "\data\accounts\" & Trim(tempAccount.Login) & "\data.bin"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , tempAccount
    Close #F
    Exit Sub
    
use_online_player:
    ' Copy over data
    Account(I).Chars(j).Level = updatedPlayer.Level
    Account(I).Chars(j).Exp = updatedPlayer.Exp
    Account(I).Chars(j).Points = updatedPlayer.Points
    Account(I).Chars(j).Sprite = updatedPlayer.Sprite
    Account(I).Chars(j).Access = updatedPlayer.Access
    tempSize = LenB(Account(I).Chars(j).Stat(1)) * UBound(Account(I).Chars(j).Stat)
    CopyMemory ByVal VarPtr(Account(I).Chars(j).Stat(1)), ByVal VarPtr(updatedPlayer.Stat(1)), tempSize
    tempSize = LenB(Account(I).Chars(j).Vital(1)) * UBound(Account(I).Chars(j).Vital)
    CopyMemory ByVal VarPtr(Account(I).Chars(j).Vital(1)), ByVal VarPtr(updatedPlayer.Vital(1)), tempSize
    Call SendPlayerData(I)
End Sub

' :::::::::::::::::::
' :: Search packet ::
' :::::::::::::::::::
Sub HandleTarget(ByVal Index As Long, ByRef Data() As Byte, ByVal StartAddr As Long, ByVal ExtraVar As Long)
Dim buffer As clsBuffer, target As Long, targetType As Long

    Set buffer = New clsBuffer
    
    buffer.WriteBytes Data()
    
    target = buffer.ReadLong
    targetType = buffer.ReadLong
    
    Set buffer = Nothing
    
    ' set player's target - no need to send, it's client side
    TempPlayer(Index).target = target
    TempPlayer(Index).targetType = targetType
End Sub
