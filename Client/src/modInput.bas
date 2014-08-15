Attribute VB_Name = "modInput"
Option Explicit

' Keyboard input
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function GetKeyState Lib "user32" (ByVal nVirtKey As Long) As Integer

Public Sub CheckKeys()
    ' If debug mode, handle error then exit out
    If App.LogMode = 1 And Options.Debug = 1 Then On Error GoTo ErrorHandler
    
    If GetAsyncKeyState(VK_W) >= 0 Then DirUp = False
    If GetAsyncKeyState(VK_S) >= 0 Then DirDown = False
    If GetAsyncKeyState(VK_A) >= 0 Then DirLeft = False
    If GetAsyncKeyState(VK_D) >= 0 Then DirRight = False
    If GetAsyncKeyState(VK_W) >= 0 And GetAsyncKeyState(VK_A) >= 0 Then DirUpLeft = False
    If GetAsyncKeyState(VK_W) >= 0 And GetAsyncKeyState(VK_D) >= 0 Then DirUpRight = False
    If GetAsyncKeyState(VK_S) >= 0 And GetAsyncKeyState(VK_A) >= 0 Then DirDownLeft = False
    If GetAsyncKeyState(VK_S) >= 0 And GetAsyncKeyState(VK_D) >= 0 Then DirDownRight = False
    
    If GetAsyncKeyState(VK_UP) >= 0 Then DirUp = False
    If GetAsyncKeyState(VK_DOWN) >= 0 Then DirDown = False
    If GetAsyncKeyState(VK_LEFT) >= 0 Then DirLeft = False
    If GetAsyncKeyState(VK_RIGHT) >= 0 Then DirRight = False
    If GetAsyncKeyState(VK_UP) >= 0 And GetAsyncKeyState(VK_LEFT) >= 0 Then DirUpLeft = False
    If GetAsyncKeyState(VK_UP) >= 0 And GetAsyncKeyState(VK_RIGHT) >= 0 Then DirUpRight = False
    If GetAsyncKeyState(VK_DOWN) >= 0 And GetAsyncKeyState(VK_LEFT) >= 0 Then DirDownLeft = False
    If GetAsyncKeyState(VK_DOWN) >= 0 And GetAsyncKeyState(VK_RIGHT) >= 0 Then DirDownRight = False
    
    If GetAsyncKeyState(VK_CONTROL) >= 0 Then ControlDown = False
    If GetAsyncKeyState(VK_SHIFT) >= 0 Then ShiftDown = False
    Exit Sub
    
' Error handler
ErrorHandler:
    HandleError "CheckKeys", "modInput", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub FindNearestTarget()
    Dim i As Long
    Dim NPCDistanceX(1 To MAX_MAP_NPCS) As Long
    Dim NPCDistanceY(1 To MAX_MAP_NPCS) As Long
    Dim PlayerDistanceX(1 To MAX_PLAYERS) As Long
    Dim PlayerDistanceY(1 To MAX_PLAYERS) As Long
    Dim LowestDistance As Long
    Dim PlayerTarget As Byte
    
    If GetKeyState(vbKeyTab) < 0 And ChatLocked Then
        ' Set the NPC distance for all the NPCs on the map
        For i = 1 To Map.NPC_HighIndex
            If Map.NPC(i) > 0 Then
                NPCDistanceX(i) = MapNPC(i).X - GetPlayerX(MyIndex)
                NPCDistanceY(i) = MapNPC(i).Y - GetPlayerY(MyIndex)
        
                ' Make sure we get a positive Value
                If NPCDistanceX(i) < 0 Then NPCDistanceX(i) = NPCDistanceX(i) * -1
                If NPCDistanceY(i) < 0 Then NPCDistanceY(i) = NPCDistanceY(i) * -1
            End If
        Next
        
        ' Find the closest NPC target
        For i = 1 To Map.NPC_HighIndex
            If Map.NPC(i) > 0 Then
                If MyTarget = i And MyTargetType = TARGET_TYPE_NPC Then
                    ' Skip
                Else
                    If PlayerTarget = 0 Then
                        LowestDistance = NPCDistanceX(i) + NPCDistanceY(i)
                        PlayerTarget = i
                    ElseIf NPCDistanceX(i) + NPCDistanceY(i) < LowestDistance Then
                        LowestDistance = NPCDistanceX(i) + NPCDistanceY(i)
                        PlayerTarget = i
                    End If
                End If
            End If
        Next
        
        ' Set the target
        If PlayerTarget > 0 Then
            If MyTarget = PlayerTarget And MyTargetType = TARGET_TYPE_NPC Then
                ' Skip
            Else
                MyTarget = PlayerTarget
                MyTargetType = TARGET_TYPE_NPC
                Call SendTarget
            End If
        End If
    ElseIf GetKeyState(96) < 0 And ChatLocked Then
      ' Set the Player distance for all the Players on the map
        For i = 1 To Player_HighIndex
            If IsPlaying(i) Then
                If i <> MyIndex Then
                    If GetPlayerMap(i) = GetPlayerMap(MyIndex) Then
                        If MyTarget = i And MyTargetType = TARGET_TYPE_PLAYER Then
                            ' Skip
                        Else
                            PlayerDistanceX(i) = Player(i).X - GetPlayerX(MyIndex)
                            PlayerDistanceY(i) = Player(i).Y - GetPlayerY(MyIndex)
                    
                            ' Make sure we get a positive Value
                            If PlayerDistanceX(i) < 0 Then PlayerDistanceX(i) = PlayerDistanceX(i) * -1
                            If PlayerDistanceY(i) < 0 Then PlayerDistanceY(i) = PlayerDistanceY(i) * -1
                        End If
                    End If
                End If
            End If
        Next
        
        ' Find the closest player target
        For i = 1 To Player_HighIndex
            If IsPlaying(i) Then
                If i <> MyIndex Then
                    If MyTarget = i And MyTargetType = TARGET_TYPE_PLAYER Then
                        ' Skip
                    Else
                        'If Player(I).Hiding = 0 Then 'LEFTOFF
                            If GetPlayerMap(i) = GetPlayerMap(MyIndex) Then
                                If PlayerTarget = 0 Then
                                    LowestDistance = PlayerDistanceX(i) + PlayerDistanceY(i)
                                    PlayerTarget = i
                                ElseIf PlayerDistanceX(i) + PlayerDistanceY(i) < LowestDistance Then
                                    LowestDistance = PlayerDistanceX(i) + PlayerDistanceY(i)
                                    PlayerTarget = i
                                End If
                            End If
                        'End If
                    End If
                End If
            End If
        Next
        
        ' Set the target
        If PlayerTarget > 0 Then
            If MyTarget = PlayerTarget And MyTargetType = TARGET_TYPE_PLAYER Then
                ' Skip
            Else
                MyTarget = PlayerTarget
                MyTargetType = TARGET_TYPE_PLAYER
                Call SendTarget
            End If
        End If
    End If
End Sub

Public Sub CheckInputKeys()
    Dim distanceX As Long
    Dim distanceY As Long
    Dim i As Long
        
        ' If debug mode, handle error then exit out
    If App.LogMode = 1 And Options.Debug = 1 Then On Error GoTo ErrorHandler
    
    If GetKeyState(vbKeyShift) < 0 Then
        ShiftDown = True
    Else
        ShiftDown = False
    End If
    
    If GetKeyState(vbKeySpace) < 0 Then
        CheckMapGetItem
    End If
    
    If GetKeyState(vbKeyControl) < 0 Then
        ControlDown = True
    Else
        ControlDown = False
    End If
    
    If Options.WASD = 1 And frmMain.txtMyChat.Enabled = False Then
        'Move Up Left
        If GetAsyncKeyState(VK_W) < 0 And GetAsyncKeyState(VK_A) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_UP) < 0 And GetAsyncKeyState(VK_LEFT) Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = True
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUpLeft = False
        End If
        
        'Move Up Right
        If GetAsyncKeyState(VK_W) < 0 And GetAsyncKeyState(VK_D) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_UP) < 0 And GetAsyncKeyState(VK_RIGHT) Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = True
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUpRight = False
        End If
    
        'Move Down Left
        If GetAsyncKeyState(VK_S) < 0 And GetAsyncKeyState(VK_A) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_DOWN) < 0 And GetAsyncKeyState(VK_LEFT) Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = True
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDownLeft = False
        End If
    
        'Move Down Right
        If GetAsyncKeyState(VK_S) < 0 And GetAsyncKeyState(VK_D) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_DOWN) < 0 And GetAsyncKeyState(VK_RIGHT) Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = True
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDownRight = False
        End If
    
        'Move Up
        If GetAsyncKeyState(VK_W) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_UP) < 0 Then
            DirUp = True
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUp = False
        End If
    
        'Move Right
        If GetAsyncKeyState(VK_D) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_RIGHT) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = True
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirRight = False
        End If
    
        'Move down
        If GetAsyncKeyState(VK_S) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_DOWN) < 0 Then
            DirUp = False
            DirDown = True
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDown = False
        End If
    
        'Move left
        If GetAsyncKeyState(VK_A) < 0 Or Options.WASD = 0 And GetAsyncKeyState(VK_LEFT) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = True
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirLeft = False
        End If
    ElseIf frmMain.txtMyChat.Enabled = False Then
        ' Move Up and Left
        If GetKeyState(vbKeyUp) < 0 And GetKeyState(vbKeyLeft) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = True
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUpLeft = False
        End If
        
         ' Move Up and Right
        If GetKeyState(vbKeyUp) < 0 And GetKeyState(vbKeyRight) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = True
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUpRight = False
        End If
        
        ' Move down and Left
        If GetKeyState(vbKeyDown) < 0 And GetKeyState(vbKeyLeft) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = True
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDownLeft = False
        End If
        
        ' Move down and Right
        If GetKeyState(vbKeyDown) < 0 And GetKeyState(vbKeyRight) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = True
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDownRight = False
        End If
        
        ' Move Up
        If GetKeyState(vbKeyUp) < 0 Then
            DirUp = True
            DirDown = False
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirUp = False
        End If
    
        ' Move Right
        If GetKeyState(vbKeyRight) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = False
            DirRight = True
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirRight = False
        End If
    
        ' Move down
        If GetKeyState(vbKeyDown) < 0 Then
            DirUp = False
            DirDown = True
            DirLeft = False
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirDown = False
        End If
    
        ' Move left
        If GetKeyState(vbKeyLeft) < 0 Then
            DirUp = False
            DirDown = False
            DirLeft = True
            DirRight = False
            DirUpLeft = False
            DirUpRight = False
            DirDownLeft = False
            DirDownRight = False
            MouseX = -1
            MouseY = -1
            Exit Sub
        Else
            DirLeft = False
        End If
    End If
    
    ' Mouse movement
    If Not MouseX = -1 And Not MouseY = -1 Then
        ' Don't move if a target is there
        For i = 1 To Player_HighIndex
            If IsPlaying(i) Then
                If Player(i).Map = Player(MyIndex).Map Then
                    If CurX = Player(i).X And CurY = Player(i).Y Then
                        MouseX = -1
                        MouseY = -1
                        Exit Sub
                    End If
                End If
            End If
        Next
        
        ' Don't move if a target is there
        For i = 1 To Map.NPC_HighIndex
            If MapNPC(i).num > 0 Then
                If CurX = MapNPC(i).X And CurY = MapNPC(i).Y Then
                    MouseX = -1
                    MouseY = -1
                    Exit Sub
                End If
            End If
        Next
        
        distanceX = 0
        distanceY = 0
    
        If MouseX > -1 Then
            If MouseX < GetPlayerX(MyIndex) Then
                distanceX = GetPlayerX(MyIndex) - MouseX
            ElseIf MouseX > GetPlayerX(MyIndex) Then
                distanceX = MouseX - GetPlayerX(MyIndex)
            End If
        End If
    
        If MouseY > -1 Then
            If MouseY < GetPlayerY(MyIndex) Then
                distanceY = GetPlayerY(MyIndex) - MouseY + 1
            ElseIf MouseY > GetPlayerY(MyIndex) Then
                distanceY = MouseY - GetPlayerY(MyIndex) + 1
            End If
        End If
       
        ' Are we moving?
        If (GetPlayerDir(MyIndex) = DIR_LEFT And GetPlayerX(MyIndex) = 0) Or (GetPlayerDir(MyIndex) = DIR_RIGHT And GetPlayerX(MyIndex) = Map.MaxX) Then
            Call MouseMoveX
        ElseIf (GetPlayerDir(MyIndex) = DIR_UP And GetPlayerY(MyIndex) = 0) Or (GetPlayerDir(MyIndex) = DIR_DOWN And GetPlayerY(MyIndex) = Map.MaxY) Then
            Call MouseMoveY
        ElseIf distanceX >= distanceY Then
            Call MouseMoveX
        Else
            Call MouseMoveY
        End If
    End If
    Exit Sub
    
' Error handler
ErrorHandler:
    HandleError "CheckInputKeys", "modInput", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub HandleKeyPresses(ByVal KeyAscii As Integer)
    Dim ChatText  As String
    Dim Name      As String
    Dim i         As Long
    Dim n         As Long
    Dim Command() As String
    Dim buffer    As clsBuffer
    Dim StrInput  As String

    ' If debug mode, handle error then exit out
    If App.LogMode = 1 And Options.Debug = 1 Then On Error GoTo ErrorHandler
    
    ChatText = Trim$(MyText)

    If Len(ChatText) = 0 Then Exit Sub
    MyText = ChatText

    ' Handle when the player presses the return key
    If KeyAscii = vbKeyReturn Then
        frmMain.ToggleChatLock
        MyText = vbNullString
        
        ' Party message
        If Left$(ChatText, 1) = "~" Or Left$(ChatText, 7) = "/party " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 7) = "/party " And Len(ChatText) > 7 Then
                ChatText = Mid$(ChatText, 8, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "~" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: ~message or /party message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString
                Exit Sub
            End If

            ' Send the message to the player
            If Party.num > 0 Then
                Call PartyMsg(GetPlayerName(MyIndex) & ": " & ChatText, Party.num)
            Else
                AddText "You are not in a party!", BrightRed
            End If

            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If
        
        ' Guild message
        If Left$(ChatText, 1) = "@" Or Left$(ChatText, 7) = "/guild " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 7) = "/guild " And Len(ChatText) > 7 Then
                ChatText = Mid$(ChatText, 8, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "@" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: @message or /guild message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString

                Exit Sub
            End If

            ' Send the message to the player
            If Not GetPlayerGuild(MyIndex) = vbNullString Then
                Call GuildMsg(ChatText)
            Else
                AddText "You are not in a guild!", BrightRed
            End If

            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If

        ' Global message
        If Left$(ChatText, 1) = "'" Or Left$(ChatText, 8) = "/global " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 8) = "/global " And Len(ChatText) > 8 Then
                ChatText = Mid$(ChatText, 9, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "'" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: 'message or /global message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString

                Exit Sub
            End If

            ' Send the message to the player
            Call GlobalMsg(ChatText)
            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If
            
        ' Admin message
        If Left$(ChatText, 1) = "`" Or Left$(ChatText, 7) = "/Staff " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 7) = "/Staff " And Len(ChatText) > 7 Then
                ChatText = Mid$(ChatText, 8, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "`" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: `message or /Staff message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString
                Exit Sub
            End If

            If GetPlayerAccess(MyIndex) > 0 Then
                ' Send the message to the player
                Call AdminMsg(GetPlayerName(MyIndex) & ": " & ChatText)
            End If

            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If
        
        ' Emote message
        If Left$(ChatText, 1) = "-" Or Left$(ChatText, 7) = "/emote " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 7) = "/emote " And Len(ChatText) > 7 Then
                ChatText = Mid$(ChatText, 8, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "-" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: -message or /emote message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString

                Exit Sub

            End If

            ' Send the message to the player
            Call EmoteMsg(ChatText)
            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If
        
        ' Private message
        If Left$(ChatText, 1) = "!" Or Left$(ChatText, 9) = "/whisper " Then
            ' Make sure they are actually sending something
            If Left$(ChatText, 9) = "/whisper " And Len(ChatText) > 9 Then
                ChatText = Mid$(ChatText, 10, Len(ChatText) - 1)
            ElseIf Left$(ChatText, 1) = "!" And Len(ChatText) > 2 Then
                ChatText = Mid$(ChatText, 2, Len(ChatText) - 1)
            Else
                Call AddText("Usage: !name message or /whisper name message", BrightRed)
                ChatText = vbNullString
                frmMain.txtMyChat.text = vbNullString
                Exit Sub
            End If
            
            Name = vbNullString

            ' Get the desired player from the user text
            Dim Size As Long
            Size = Len(ChatText)
            For i = 1 To Size
                If Not Mid$(ChatText, i, 1) = " " Then
                    Name = Name & Mid$(ChatText, i, 1)
                Else

                    Exit For
                End If
            Next
            
            ' Make sure they are actually sending something
            If Len(ChatText) - i > 0 Then
                ChatText = Mid$(ChatText, i + 1, Len(ChatText) - i)

                ' Send the message to the player
                Call PrivateMsg(Name, ChatText)
            Else
                Call AddText("Usage: !name message or /whisper name message", BrightRed)
            End If
            
            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString
            Exit Sub
        End If

        ' Commands
        If Left$(ChatText, 1) = "/" Then
            Command = Split(ChatText, Space$(1))

            Select Case LCase$(Command(0))
                Case "/pquit"

                    If Party.num = 0 Then
                        AddText "You are not in a party!", BrightRed

                        Exit Sub

                    End If
                    
                    SendPartyLeave
                    
                Case "/gquit"
                    RequestGuildResign
                    
                Case "/createguild"

                    ' Make sure they are actually sending something
                    If UBound(Command) < 1 Then
                        AddText "Usage: /createguild name", BrightRed
                        GoTo Continue
                    End If

                    SendGuildCreate Command(1)
                    
                Case "/clearchat"
                    frmMain.txtChat.text = vbNullString
                    
                Case "/trade"
                    SendCanTrade
                    
                Case "/afk"

                    If Trim$(Player(MyIndex).Status) = vbNullString Then
                        Call SendChangeStatus(MyIndex, "AFK")
                    Else
                        Call SendChangeStatus(MyIndex, "")
                    End If
                    
                Case "/fps"
                    BFPS = Not BFPS
                    
                Case "/ping"
                    BPing = Not BPing
                    
                    ' Help commands
                Case "/help"
                    Call AddText("Social Commands:", HelpColor)
                    Call AddText("'message message or /global message = Global Message", HelpColor)
                    Call AddText("-message message or /emote message = Emote Message", HelpColor)
                    Call AddText("!namehere message or /whisper message = Private Message", HelpColor)
                    Call AddText("~message or /party message = Party Message", HelpColor)
                    Call AddText("@message or /guild message = Guild Message", HelpColor)
                    
                    If GetPlayerAccess(MyIndex) > 0 Then
                        Call AddText("`message or /Staff message = Staff Message", HelpColor)
                    End If
                    
                    ' Send regular help commands
                    Call AddText("Available Commands: /trade, /gui, /clearchat, /createguild, /gmotd, /pquit, /gquit, /fps, /ping, /afk, /emotes", HelpColor)
                    
                    ' Send the admin help commands
                    If GetPlayerAccess(MyIndex) > 0 Then
                        Call AddText("Available Admin Commands: /who, /admin, /motd, /smotd, /respawn, /loc, /warpmeto, /warptome, /warpto, /setsprite, /setplayersprite, /mapreport, /kick, /ban, /edititem, /editmap, /editevent, /editshop, /editspell, /editresource, /editnpc, /editanimation, /editban, /editclass, /edittitle, /editmoral, /acp", HelpColor)
                    End If
                    
                Case "/emotes"
                    ' Empty out text
                    ChatText = vbNullString

                    For i = 1 To MAX_EMOTICONS

                        If Not Trim$(Emoticon(i).Command) = "/" Then
                            If Not ChatText = vbNullString Then
                                ChatText = ChatText & ", "
                            End If

                            ChatText = ChatText & Trim$(Emoticon(i).Command)
                        End If

                    Next

                    AddText "Emotes: " & ChatText, BrightGreen
                    
                Case "/trade"
                    SendCanTrade
                    
                Case "/gui"
                    GUIVisible = Not GUIVisible
                    Call ToggleGUI(GUIVisible)
                    
                Case "/acp", "/admin"
                    If GetPlayerAccess(MyIndex) < STAFF_MODERATOR Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If FormVisible("frmAdmin") Then
                        If GetForegroundWindow = frmAdmin.hWnd Then
                            Unload frmAdmin
                        ElseIf GetForegroundWindow <> frmAdmin.hWnd Then
                            BringWindowToTop (frmAdmin.hWnd)
                            InitAdminPanel
                        End If
                    Else
                        InitAdminPanel
                    End If
                    
                    ' Who's Online
                Case "/who"
                     If GetPlayerAccess(MyIndex) < STAFF_MODERATOR Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendWhosOnline
                
                    ' Kicking a player
                Case "/kick"

                    If GetPlayerAccess(MyIndex) < STAFF_MODERATOR Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /kick Name", BrightRed
                        GoTo Continue
                    End If
                    
                    SendKick Command(1)
                    
                Case "/mute"

                    If GetPlayerAccess(MyIndex) < STAFF_MODERATOR Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    If UBound(Command) < 1 Then
                        AddText "Usage: /mute Name", BrightRed
                        GoTo Continue
                    End If
                    
                    SendMute Command(1)
                    
                    ' Location
                Case "/loc"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    BLoc = Not BLoc
                    
                    ' Warping to a player
                Case "/warpmeto"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /warpmeto Name", BrightRed
                        GoTo Continue
                    End If

                    If IsNumeric(Command(1)) Then
                        AddText "Usage: /warpmeto Name", BrightRed
                        GoTo Continue
                    End If

                    WarpMeTo Command(1)
                    
                    ' Warping a player to you
                Case "/warptome"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /warptome Name", BrightRed
                        GoTo Continue
                    End If

                    If IsNumeric(Command(1)) Then
                        AddText "Usage: /warptome Name", BrightRed
                        GoTo Continue
                    End If

                    WarpToMe Command(1)
                    
                    ' Warping to a map
                Case "/warpto"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /warpto (map #)", BrightRed
                        GoTo Continue
                    End If

                    If Not IsNumeric(Command(1)) Then
                        AddText "Usage: /warpto (map #)", BrightRed
                        GoTo Continue
                    End If

                    n = CLng(Command(1))

                    ' Check to make sure its a valid map #
                    If n > 0 And n <= MAX_MAPS Then
                        Call WarpTo(n)
                    Else
                        Call AddText("Invalid map number.", Red)
                    End If

                    ' Setting sprite
                Case "/setsprite"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /setsprite (sprite #)", BrightRed
                        GoTo Continue
                    End If

                    If Not IsNumeric(Command(1)) Then
                        AddText "Usage: /setsprite (sprite #)", BrightRed
                        GoTo Continue
                    End If

                    SendSetSprite CLng(Command(1))
                    
                    ' Set player sprite
                Case "/setplayersprite"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 2 Then
                        AddText "Usage: /setplayersprite Name (sprite #)", BrightRed
                        GoTo Continue
                    End If

                    If Not IsNumeric(Command(2)) Then
                        AddText "Usage: /setplayersprite Name (sprite #)", BrightRed
                        GoTo Continue
                    End If
                    
                    If Command(2) > NumCharacters Or Command(2) < 1 Then
                        AddText "Invalid sprite number!", BrightRed
                        GoTo Continue
                    End If

                    SendSetPlayerSprite (Command(1)), (CLng(Command(2)))
                    
                    ' Map report
                Case "/mapreport"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendMapReport

                    ' Map respawn
                Case "/respawn"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendMapRespawn
                    
                    ' MOTD change
                Case "/motd"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /motd (new motd)", BrightRed
                        GoTo Continue
                    End If

                    SendMOTDChange Right$(ChatText, Len(ChatText) - 5)
                    
                Case "/smotd"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /smotd (new smotd)", BrightRed
                        GoTo Continue
                    End If

                    SendSMOTDChange Right$(ChatText, Len(ChatText) - 6)
                    
                Case "/gmotd"

                    If GetPlayerGuild(MyIndex) = vbNullString Then
                        AddText "You are not in a guild!", BrightRed
                        GoTo Continue
                    End If
                    
                    If Player(MyIndex).GuildAcc < 3 Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /gmotd (new gmotd)", BrightRed
                        GoTo Continue
                    End If

                    SendGMOTDChange Right$(ChatText, Len(ChatText) - 6)
            
                    ' Banning a player
                Case "/ban"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 1 Then
                        AddText "Usage: /ban Name", BrightRed
                        GoTo Continue
                    End If

                    StrInput = InputBox("Reason: ", "Ban")
                    SendBan Command(1), Trim$(StrInput)
                    
                    ' // Developer Admin Commands //
                    ' Editing item request
                Case "/edititem"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditItem
                    
                Case "/editquest"
                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditQuests
                    
                    ' Editing animation request
                Case "/editanimation"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditAnimation
                    
                    ' Editing npc request
                Case "/editnpc"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditNPC
                    
                    ' Editing resource request
                Case "/editresource"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditResource
                    
                    ' Editing shop request
                Case "/editshop"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditShop
                    
                    ' Editing emoticon request
                Case "/editemoticon"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendEmoticonEditor
                    
                    ' Ban Editor
                Case "/editban"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendRequestEditBan
                    
                    ' Class Editor
                Case "/editclass"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendRequestEditClass
                    
                    ' Title Editor
                Case "/edittitle"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendRequestEditTitle
                    
                    ' Map Editor
                Case "/editmap"

                    If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If
                    
                    SendRequestEditMap
                
                    ' Event Editor
                Case "/editevent"
                    'If GetPlayerAccess(MyIndex) < STAFF_MAPPER Then
                    '    AddText "You have insufficent access to do this!", BrightRed
                    '    GoTo Continue
                    'End If
                    
                    'SendRequestEditEvent
                    
                    ' Moral Editor
                Case "/editmoral"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditMoral
                    
                    ' Editing spell request
                Case "/editspell"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditSpell
                    
                    ' Editing Class request
                Case "/edititem"

                    If GetPlayerAccess(MyIndex) < STAFF_DEVELOPER Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    SendRequestEditClass
                    
                    ' // Creator Admin Commands //
                    ' Giving another player access
                Case "/setaccess"

                    If GetPlayerAccess(MyIndex) < STAFF_ADMIN Then
                        AddText "You have insufficent access to do this!", BrightRed
                        GoTo Continue
                    End If

                    If UBound(Command) < 2 Then
                        AddText "Usage: /setaccess Name (access)", BrightRed
                        GoTo Continue
                    End If

                    If IsNumeric(Command(1)) Or Not IsNumeric(Command(2)) Then
                        AddText "Usage: /setaccess Name (access)", BrightRed
                        GoTo Continue
                    End If

                    SendSetAccess Command(1), CLng(Command(2))

                Case Else

                    ' Check for Emoticons
                    For i = 1 To MAX_EMOTICONS
                        If Not Trim$(Emoticon(i).Command) = "/" Then
                            If Trim$(Emoticon(i).Command) = Command(0) Then
                                SendCheckEmoticon i
                                n = 1
                                Exit For
                            End If
                        End If
                    Next
                    
                    ' If we don't find a Emoticon, then it's an invalid command
                    If n = 0 Then AddText "Not a valid command!", BrightRed
            End Select

            ' Continue label where we go instead of exiting the sub
Continue:
            ChatText = vbNullString
            frmMain.txtMyChat.text = vbNullString

            Exit Sub

        End If

        ' Chat message
        If Len(ChatText) > 0 Then
            If CurrentChatChannel = 0 Then
                Call SayMsg(ChatText)
            End If
            
            ' Global message
            If CurrentChatChannel = 1 Then
                Call GlobalMsg(ChatText)
            End If
            
            ' Guild message
            If CurrentChatChannel = 2 Then
                If Not GetPlayerGuild(MyIndex) = vbNullString Then
                    Call GuildMsg(ChatText)
                Else
                    Call AddText("You are not in a guild!", BrightRed)
                End If
            End If
            
            ' Party message
            If CurrentChatChannel = 3 Then
                If Party.num > 0 Then
                    Call PartyMsg(GetPlayerName(MyIndex) & ": " & ChatText, Party.num)
                Else
                    AddText "You are not in a party!", BrightRed
                End If
            End If
            
            ' Admin message
            If CurrentChatChannel = 4 And GetPlayerAccess(MyIndex) >= STAFF_MODERATOR Then
                Call AdminMsg(Trim$(GetPlayerName(MyIndex) & ": " & ChatText))
            End If
            
        End If

        ChatText = vbNullString
        frmMain.txtMyChat.text = vbNullString

        Exit Sub

    End If

    ' Handle when the user presses the backspace key
    If (KeyAscii = vbKeyBack) Then
        If Len(ChatText) > 0 Then ChatText = Mid$(ChatText, 1, Len(ChatText) - 1)
    End If

    ' And if neither, then add the character to the user's text Buffer
    If (Not KeyAscii = vbKeyReturn) Then
        If (Not KeyAscii = vbKeyBack) Then
            ChatText = ChatText & ChrW$(KeyAscii)
        End If
    End If

    Exit Sub

    ' Error handler
ErrorHandler:
    HandleError "HandleKeyPresses", "modInput", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub MouseMoveX()
    ' If debug mode, handle error then exit out
    If App.LogMode = 1 And Options.Debug = 1 Then On Error GoTo ErrorHandler
    
    ' Left movement
    If GetPlayerX(MyIndex) > MouseX Or (GetPlayerDir(MyIndex) = DIR_LEFT And GetPlayerX(MyIndex) = 0) Then
        DirUp = False
        DirDown = False
        DirLeft = True
        DirRight = False
    ' Right movement
    ElseIf GetPlayerX(MyIndex) < MouseX Or (GetPlayerDir(MyIndex) = DIR_RIGHT And GetPlayerX(MyIndex) = Map.MaxX) Then
        DirUp = False
        DirDown = False
        DirLeft = False
        DirRight = True
    Else
        MouseX = -1
        DirUp = False
        DirDown = False
        DirLeft = False
        DirRight = False
    End If
    Exit Sub
    
' Error handler
ErrorHandler:
    HandleError "MouseMoveX", "modInput", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub

Public Sub MouseMoveY()
    ' If debug mode, handle error then exit out
    If App.LogMode = 1 And Options.Debug = 1 Then On Error GoTo ErrorHandler
    
    ' Up movement
    If GetPlayerY(MyIndex) > MouseY Or (GetPlayerDir(MyIndex) = DIR_UP And GetPlayerY(MyIndex) = 0) Then
        DirUp = True
        DirDown = False
        DirLeft = False
        DirRight = False
    ' Down movement
    ElseIf GetPlayerY(MyIndex) < MouseY Or (GetPlayerDir(MyIndex) = DIR_DOWN And GetPlayerY(MyIndex) = Map.MaxY) Then
        DirUp = False
        DirDown = True
        DirLeft = False
        DirRight = False
    Else
        MouseY = -1
        DirUp = False
        DirDown = False
        DirLeft = False
        DirRight = False
    End If
    Exit Sub
    
' Error handler
ErrorHandler:
    HandleError "MouseMoveY", "modInput", Err.Number, Err.Description, Err.Source, Err.HelpContext
    Err.Clear
End Sub
