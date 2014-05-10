Attribute VB_Name = "modDatabase"
Option Explicit

' Text API
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpFileName As String) As Long
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nsize As Long, ByVal lpFileName As String) As Long

' For Clear functions
Public Declare Sub ZeroMemory Lib "Kernel32.dll" Alias "RtlZeroMemory" (Destination As Any, ByVal Length As Long)

Public Sub ChkDir(ByVal tDir As String, ByVal tName As String)
    If tName = "" Then Exit Sub
    If LCase$(Dir(tDir & tName, vbDirectory)) <> LCase$(tName) Then Call MkDir(LCase$(tDir & "\" & tName))
End Sub

' Outputs string to text file
Public Function TimeStamp() As String
    TimeStamp = "[" & Time & "]"
End Function

Public Sub AddLog(ByVal Text As String, ByVal LogFile As String)
    Dim filename As String
    Dim F As Integer

    Call ChkDir(App.path & "\", "logs")
    Call ChkDir(App.path & "\logs\", Month(Now) & "-" & Day(Now) & "-" & Year(Now))
    filename = App.path & "\logs\" & Month(Now) & "-" & Day(Now) & "-" & Year(Now) & "\" & LogFile & ".log"

    If Not FileExist(filename, True) Then
        F = FreeFile
        Open filename For Output As #F
        Close #F
    End If

    F = FreeFile
    
    Open filename For Append As #F
        Print #F, TimeStamp & " - " & Text
    Close #F
End Sub

' Gets a string from a text file
Public Function GetVar(File As String, Header As String, Var As String) As String
    Dim sSpaces As String   ' Max string length
    Dim szReturn As String  ' Return default value if not found
    
    szReturn = vbNullString
    sSpaces = Space$(5000)
    Call GetPrivateProfileString$(Header, Var, szReturn, sSpaces, Len(sSpaces), File)
    GetVar = RTrim$(sSpaces)
    GetVar = Left$(GetVar, Len(GetVar) - 1)
End Function

' Writes a variable to a text file
Public Sub PutVar(File As String, Header As String, Var As String, Value As String)
    Call WritePrivateProfileString$(Header, Var, Value, File)
End Sub

Public Function FileExist(ByVal filename As String, Optional RAW As Boolean = False) As Boolean
    If Not RAW Then
        If Len(Dir(App.path & filename)) > 0 Then
            FileExist = True
        End If
    Else
        If Len(Dir(filename)) > 0 Then
            FileExist = True
        End If
    End If
End Function

Public Sub InitOptions()
    Dim filename As String
    
    ' File name used for options
    filename = App.path & "\data\options.ini"
    
    ' Game Name
    If GetVar(filename, "Options", "Name") = "" Then
        Options.Name = "Legends of Arteix"
        Call PutVar(filename, "Options", "Name", Trim$(Options.Name))
    Else
        Options.Name = GetVar(filename, "Options", "Name")
    End If
    
    ' Website
    If GetVar(filename, "Options", "Website") = "" Then
        Options.Website = "http://www.arteixinc.com/"
        Call PutVar(filename, "Options", "Website", Trim$(Options.Website))
    Else
        Options.Website = GetVar(filename, "Options", "Website")
    End If
    
    ' Port
    If GetVar(filename, "Options", "Port") = "" Then
        Options.Port = "7001"
        Call PutVar(filename, "Options", "Port", Trim$(Options.Port))
    Else
        Options.Port = GetVar(filename, "Options", "Port")
    End If
    
    ' Message of the Day
    If GetVar(filename, "Options", "MOTD") = "" Then
        Options.MOTD = "Welcome to the Legends of Arteix!"
        Call PutVar(filename, "Options", "MOTD", Trim$(Options.MOTD))
    Else
        Options.MOTD = GetVar(filename, "Options", "MOTD")
    End If
    
    ' Staff Message of the Day
    If GetVar(filename, "Options", "SMOTD") = "" Then
        Options.SMOTD = ""
        Call PutVar(filename, "Options", "SMOTD", Trim$(Options.SMOTD))
    Else
        Options.SMOTD = GetVar(filename, "Options", "SMOTD")
    End If

    ' Player Kill level
    If GetVar(filename, "Options", "PKLevel") = "" Then
        Options.PKLevel = "10"
        Call PutVar(filename, "Options", "PKLevel", Trim$(Options.PKLevel))
    Else
        Options.PKLevel = GetVar(filename, "Options", "PKLevel")
    End If
    
    ' Same IP
    If GetVar(filename, "Options", "MultipleIP") = "" Then
        Options.MultipleIP = "1"
        Call PutVar(filename, "Options", "MultipleIP", Trim$(Options.MultipleIP))
    Else
        Options.MultipleIP = GetVar(filename, "Options", "MultipleIP")
    End If
    
    ' Same Serial
    If GetVar(filename, "Options", "MultipleSerial") = "" Then
        Options.MultipleSerial = "1"
        Call PutVar(filename, "Options", "MultipleSerial", Trim$(Options.MultipleSerial))
    Else
        Options.MultipleSerial = GetVar(filename, "Options", "MultipleSerial")
    End If
    
     ' Guild Cost
    If GetVar(filename, "Options", "GuildCost") = "" Then
        Options.GuildCost = "5000"
        Call PutVar(filename, "Options", "GuildCost", Trim$(Options.GuildCost))
    Else
        Options.GuildCost = GetVar(filename, "Options", "GuildCost")
    End If
    
    ' News
    If GetVar(filename, "Options", "News") = "" Then
        Options.News = "Welcome to the Legends of Arteix!"
        Call PutVar(filename, "Options", "News", Trim$(Options.News))
    Else
        Options.News = GetVar(filename, "Options", "News")
    End If
    
    ' Sound
    If GetVar(filename, "Options", "MissSound") = "" Then
        Options.MissSound = "Miss2"
        Call PutVar(filename, "Options", "MissSound", Trim$(Options.MissSound))
    Else
        Options.MissSound = GetVar(filename, "Options", "MissSound")
    End If
    
    If GetVar(filename, "Options", "DodgeSound") = "" Then
        Options.DodgeSound = "Dodge"
        Call PutVar(filename, "Options", "DodgeSound", Trim$(Options.DodgeSound))
    Else
        Options.DodgeSound = GetVar(filename, "Options", "DodgeSound")
    End If
    
    If GetVar(filename, "Options", "DeflectSound") = "" Then
        Options.DeflectSound = "Saint3"
        Call PutVar(filename, "Options", "DeflectSound", Trim$(Options.DeflectSound))
    Else
        Options.DeflectSound = GetVar(filename, "Options", "DeflectSound")
    End If
    
    If GetVar(filename, "Options", "BlockSound") = "" Then
        Options.BlockSound = "Block"
        Call PutVar(filename, "Options", "BlockSound", Trim$(Options.BlockSound))
    Else
        Options.BlockSound = GetVar(filename, "Options", "BlockSound")
    End If
    
    If GetVar(filename, "Options", "CriticalSound") = "" Then
        Options.CriticalSound = "Critical"
        Call PutVar(filename, "Options", "CriticalSound", Trim$(Options.CriticalSound))
    Else
        Options.CriticalSound = GetVar(filename, "Options", "CriticalSound")
    End If
    
    If GetVar(filename, "Options", "ResistSound") = "" Then
        Options.ResistSound = "Saint9"
        Call PutVar(filename, "Options", "ResistSound", Trim$(Options.ResistSound))
    Else
        Options.ResistSound = GetVar(filename, "Options", "ResistSound")
    End If
    
    If GetVar(filename, "Options", "BuySound") = "" Then
        Options.BuySound = "Shop"
        Call PutVar(filename, "Options", "BuySound", Trim$(Options.BuySound))
    Else
        Options.BuySound = GetVar(filename, "Options", "BuySound")
    End If
    
    If GetVar(filename, "Options", "SellSound") = "" Then
        Options.SellSound = "Sell"
        Call PutVar(filename, "Options", "SellSound", Trim$(Options.SellSound))
    Else
        Options.SellSound = GetVar(filename, "Options", "SellSound")
    End If
    
    ' Animations
    If GetVar(filename, "Options", "DeflectAnimation") = "" Then
        Options.DeflectAnimation = 2
        Call PutVar(filename, "Options", "DeflectAnimation", Trim$(Options.DeflectAnimation))
    Else
        Options.DeflectAnimation = GetVar(filename, "Options", "DeflectAnimation")
    End If
    
    If GetVar(filename, "Options", "CriticalAnimation") = "" Then
        Options.CriticalAnimation = 3
        Call PutVar(filename, "Options", "CriticalAnimation", Trim$(Options.CriticalAnimation))
    Else
        Options.CriticalAnimation = GetVar(filename, "Options", "CriticalAnimation")
    End If
    
    If GetVar(filename, "Options", "DodgeAnimation") = "" Then
        Options.DodgeAnimation = 4
        Call PutVar(filename, "Options", "DodgeAnimation", Trim$(Options.DodgeAnimation))
    Else
        Options.DodgeAnimation = GetVar(filename, "Options", "DodgeAnimation")
    End If
End Sub

Public Sub SaveOptions()
    PutVar App.path & "\data\options.ini", "Options", "Name", Trim$(Options.Name)
    PutVar App.path & "\data\options.ini", "Options", "Port", Trim$(Options.Port)
    PutVar App.path & "\data\options.ini", "Options", "MOTD", Trim$(Options.MOTD)
    PutVar App.path & "\data\options.ini", "Options", "SMOTD", Trim$(Options.SMOTD)
    PutVar App.path & "\data\options.ini", "Options", "Website", Trim$(Options.Website)
    PutVar App.path & "\data\options.ini", "Options", "PKLevel", Trim$(Options.PKLevel)
    PutVar App.path & "\data\options.ini", "Options", "MultipleIP", Trim$(Options.MultipleIP)
    PutVar App.path & "\data\options.ini", "Options", "MultipleSerial", Trim$(Options.MultipleSerial)
    PutVar App.path & "\data\options.ini", "Options", "GuildCost", Trim$(Options.GuildCost)
    PutVar App.path & "\data\options.ini", "Options", "News", Trim$(Options.News)
    PutVar App.path & "\data\options.ini", "Options", "MissSound", Trim$(Options.MissSound)
    PutVar App.path & "\data\options.ini", "Options", "DodgeSound", Trim$(Options.DodgeSound)
    PutVar App.path & "\data\options.ini", "Options", "DeflectSound", Trim$(Options.DeflectSound)
    PutVar App.path & "\data\options.ini", "Options", "BlockSound", Trim$(Options.BlockSound)
    PutVar App.path & "\data\options.ini", "Options", "CriticalSound", Trim$(Options.CriticalSound)
    PutVar App.path & "\data\options.ini", "Options", "ResistSound", Trim$(Options.ResistSound)
    PutVar App.path & "\data\options.ini", "Options", "BuySound", Trim$(Options.BuySound)
    PutVar App.path & "\data\options.ini", "Options", "SellSound", Trim$(Options.SellSound)
    PutVar App.path & "\data\options.ini", "Options", "DeflectAnimation", Trim$(Options.DeflectAnimation)
    PutVar App.path & "\data\options.ini", "Options", "CriticalAnimation", Trim$(Options.CriticalAnimation)
    PutVar App.path & "\data\options.ini", "Options", "DodgeAnimation", Trim$(Options.DodgeAnimation)
End Sub

Public Sub LoadOptions()
    Options.Name = GetVar(App.path & "\data\options.ini", "Options", "Name")
    Options.Port = GetVar(App.path & "\data\options.ini", "Options", "Port")
    Options.MOTD = GetVar(App.path & "\data\options.ini", "Options", "MOTD")
    Options.Website = GetVar(App.path & "\data\options.ini", "Options", "Website")
    Options.PKLevel = GetVar(App.path & "\data\options.ini", "Options", "PKLevel")
    Options.MultipleIP = GetVar(App.path & "\data\options.ini", "Options", "MultipleIP")
    Options.MultipleSerial = GetVar(App.path & "\data\options.ini", "Options", "MultipleSerial")
    Options.GuildCost = GetVar(App.path & "\data\options.ini", "Options", "GuildCost")
    Options.News = GetVar(App.path & "\data\options.ini", "Options", "News")
    Options.MissSound = GetVar(App.path & "\data\options.ini", "Options", "MissSound")
    Options.DodgeSound = GetVar(App.path & "\data\options.ini", "Options", "DodgeSound")
    Options.DeflectSound = GetVar(App.path & "\data\options.ini", "Options", "DeflectSound")
    Options.BlockSound = GetVar(App.path & "\data\options.ini", "Options", "BlockSound")
    Options.CriticalSound = GetVar(App.path & "\data\options.ini", "Options", "CriticalSound")
    Options.ResistSound = GetVar(App.path & "\data\options.ini", "Options", "ResistSound")
    Options.BuySound = GetVar(App.path & "\data\options.ini", "Options", "BuySound")
    Options.SellSound = GetVar(App.path & "\data\options.ini", "Options", "SellSound")
    Options.DeflectAnimation = GetVar(App.path & "\data\options.ini", "Options", "DeflectAnimation")
    Options.CriticalAnimation = GetVar(App.path & "\data\options.ini", "Options", "CriticalAnimation")
    Options.DodgeAnimation = GetVar(App.path & "\data\options.ini", "Options", "DodgeAnimation")
End Sub

Public Sub BanIndex(ByVal BanPlayerIndex As Long, ByVal BannedByIndex As String, ByVal Reason As String)
    Dim IP As String
    Dim I As Integer
    Dim n As Integer

    ' Cut off last portion of IP
    IP = GetPlayerIP(BanPlayerIndex)
    
    For I = Len(IP) To 1 Step -1
        If Mid$(IP, I, 1) = "." Then Exit For
    Next I

    IP = Mid$(IP, 1, I)

    For n = 1 To MAX_BANS
        If Not Len(Trim$(Ban(n).PlayerLogin)) > 0 And Not Len(Trim$(Ban(n).playerName)) > 0 Then
            With Ban(n)
                .Date = Date
                
                If BannedByIndex <> "server" Then
                    .By = GetPlayerName(BannedByIndex)
                Else
                    .By = "server"
                End If
                
                .Time = Time
                .HDSerial = GetPlayerHDSerial(BanPlayerIndex)
                .IP = IP
                .PlayerLogin = GetPlayerLogin(BanPlayerIndex)
                .playerName = GetPlayerName(BanPlayerIndex)
                .Reason = Reason
            End With
            Call SaveBan(n)
            Exit For
        End If
    Next n

    If Not BannedByIndex = "server" Then
        If Len(Reason) Then
            AdminMsg GetPlayerName(BanPlayerIndex) & " has been banned by " & GetPlayerName(BannedByIndex) & " for " & Reason & "!", BrightBlue
            AddLog GetPlayerName(BannedByIndex) & "/" & GetPlayerIP(BannedByIndex) & " has banned " & GetPlayerName(BanPlayerIndex) & "/" & GetPlayerIP(BanPlayerIndex) & " for " & Reason & ".", "Bans"
            AlertMsg BanPlayerIndex, "You have been banned by " & GetPlayerName(BannedByIndex) & " for " & Reason & "!"
        Else
            AdminMsg GetPlayerName(BanPlayerIndex) & " has been banned by " & GetPlayerName(BannedByIndex) & "!", BrightBlue
            AddLog GetPlayerName(BannedByIndex) & "/" & GetPlayerIP(BannedByIndex) & " has banned " & GetPlayerName(BanPlayerIndex) & "/" & GetPlayerIP(BanPlayerIndex) & ".", "Admin"
            AlertMsg BanPlayerIndex, "You have been banned by " & GetPlayerName(BannedByIndex) & "!"
        End If
    Else
        AdminMsg GetPlayerName(BanPlayerIndex) & " has been banned by the server!", BrightBlue
        AddLog GetPlayerName(BanPlayerIndex) & "/" & GetPlayerIP(BanPlayerIndex) & " was banned by the server!", "Admin"
        AlertMsg BanPlayerIndex, "You have been banned by the server!"
    End If
    Call LeftGame(BanPlayerIndex)
End Sub

' **************
' ** Accounts **
' **************
Function AccountExist(ByVal Name As String) As Boolean
    Dim filename As String
    
    Call ChkDir(App.path & "\data\accounts\", Trim(Name))
    filename = "\data\accounts\" & Trim(Name) & "\data.bin"

    If FileExist(filename) Then
        AccountExist = True
    End If
End Function

Function PasswordOK(ByVal Name As String, ByVal Password As String) As Boolean
    Dim filename As String
    Dim RightPassword As String * NAME_LENGTH
    Dim nFileNum As Long

    PasswordOK = False

    If AccountExist(Name) Then
        filename = App.path & "\data\accounts\" & Trim$(Name) & "\data.bin"
        nFileNum = FreeFile
        Open filename For Binary As #nFileNum
        Get #nFileNum, NAME_LENGTH, RightPassword
        Close #nFileNum
       
        If UCase$(Trim$(Password)) = UCase$(Trim$(RightPassword)) Then
            PasswordOK = True
        End If
    End If
End Function

Sub AddAccount(ByVal Index As Long, ByVal Name As String, ByVal Password As String)
    Dim I As Long
    
    ClearAccount Index
    
    Account(Index).Login = Name
    Account(Index).Password = Password
    
    Call SaveAccount(Index)
End Sub

Sub DeleteName(ByVal Name As String)
    Dim f1 As Long
    Dim f2 As Long
    Dim s As String
    Dim charLogin() As String
    
    Call FileCopy(App.path & "\data\accounts\charlist.txt", App.path & "\data\accounts\chartemp.txt")
    
    ' Destroy name from charlist
    f1 = FreeFile
    Open App.path & "\data\accounts\chartemp.txt" For Input As #f1
    
    f2 = FreeFile
    Open App.path & "\data\accounts\charlist.txt" For Output As #f2

    Do While Not EOF(f1)
        Input #f1, s
        charLogin = Split(s, ":") ' Character Editor
        If Trim$(LCase$(charLogin(0))) <> Trim$(LCase$(Name)) Then
            Print #f2, s
        End If
    Loop

    Close #f1
    Close #f2
    Call Kill(App.path & "\data\accounts\chartemp.txt")
End Sub

' ****************
' ** Characters **
' ****************
Function CharExist(ByVal Index As Long) As Boolean
    If Len(Trim$(Account(Index).Chars(GetPlayerChar(Index)).Name)) > 0 And Len(Trim$(Account(Index).Chars(GetPlayerChar(Index)).Name)) <= NAME_LENGTH Then
        CharExist = True
    End If
End Function

Sub AddChar(ByVal Index As Long, ByVal Name As String, ByVal Gender As Byte, ByVal ClassNum As Byte)
    Dim I As Long, F As Long

    With Account(Index).Chars(GetPlayerChar(Index))
        ' Basic things
        .Name = Name
        .Gender = Gender
        .Class = ClassNum
        
        ' Sprite and face
        If .Gender = GENDER_MALE Then
            .Sprite = Class(ClassNum).MaleSprite
            .Face = Class(ClassNum).MaleFace
        Else
            .Sprite = Class(ClassNum).FemaleSprite
            .Face = Class(ClassNum).FemaleFace
        End If
    
        ' Level
        .Level = 1
    
        ' Stats
        For I = 1 To Stats.Stat_count - 1
            .Stat(I) = Class(ClassNum).Stat(I)
        Next
        
        ' Skills
        For I = 1 To Skills.Skill_Count - 1
            Call SetPlayerSkill(Index, 1, I)
        Next
        
        ' Set the player's start values
        .Dir = Class(GetPlayerClass(Index)).Dir
        .Map = Class(GetPlayerClass(Index)).Map
        .X = Class(GetPlayerClass(Index)).X
        .Y = Class(GetPlayerClass(Index)).Y
        
        ' Vitals
        .Vital(Vitals.HP) = GetPlayerMaxVital(Index, Vitals.HP)
        .Vital(Vitals.MP) = GetPlayerMaxVital(Index, Vitals.MP)
        
        ' Restore vitals
        Call SetPlayerVital(Index, Vitals.HP, GetPlayerMaxVital(Index, Vitals.HP))
        Call SetPlayerVital(Index, Vitals.MP, GetPlayerMaxVital(Index, Vitals.MP))
        
        ' Set the checkpoint values
        .CheckPointMap = .Map
        .CheckPointX = .X
        .CheckPointY = .Y
        
        ' Set the trade status value
        .CanTrade = True
    
        ' Set the status to nothing
        .Status = vbNullString
        
        ' Check for new title
        Call CheckPlayerNewTitle(Index, False)
        
        ' Set starter equipment
        For I = 1 To MAX_INV
            If Class(ClassNum).StartItem(I) > 0 Then
                ' Item exist?
                If Len(Trim$(Item(Class(ClassNum).StartItem(I)).Name)) > 0 Then
                    .Inv(I).Num = Class(ClassNum).StartItem(I)
                    .Inv(I).Value = Class(ClassNum).StartItemValue(I)
                End If
            End If
        Next
        
        ' Set start spells
        For I = 1 To MAX_PLAYER_SPELLS
            If Class(ClassNum).StartSpell(I) > 0 Then
                ' Spell exist?
                If Len(Trim$(Spell(Class(ClassNum).StartItem(I)).Name)) > 0 Then
                    .Spell(I) = Class(ClassNum).StartSpell(I)
                End If
            End If
        Next
    End With
    
    ' Append name to file
    F = FreeFile
    
    Open App.path & "\data\accounts\charlist.txt" For Append As #F
        Print #F, Name & ":" & Account(Index).Login ' Character Editor
    Close #F
    
    Call SaveAccount(Index)
End Sub

Function FindChar(ByVal Name As String) As Boolean
    Dim F As Long
    Dim s As String
    Dim charLogin() As String
    
    ' Check if the master charlist file exists for checking duplicate names, and if it doesnt make it
    If Not FileExist("\data\accounts\charlist.txt") Then
        F = FreeFile
        Open App.path & "\data\accounts\charlist.txt" For Output As #F
        Close #F
    End If

    F = FreeFile
    
    Open App.path & "\data\accounts\charlist.txt" For Input As #F
        Do While Not EOF(F)
            Input #F, s
            charLogin = Split(s, ":") ' Character Editor
            If Trim$(LCase$(charLogin(0))) = Trim$(LCase$(Name)) Then
                FindChar = True
                Close #F
                Exit Function
            End If
        Loop
    Close #F
End Function

' Character Editor
Function GetCharList() As String
    Dim F As Long, counter As Long
    Dim s As String, total As String
    Dim charLogin() As String
    
    F = FreeFile
    
    Open App.path & "\data\accounts\charlist.txt" For Input As #F
        Do While Not EOF(F)
            Input #F, s
            charLogin = Split(s, ":")
            counter = counter + 1
            total = total & charLogin(0) & ","
        Loop
    Close #F
    
    If counter > 0 Then
        total = Left$(total, Len(total) - 1)
    End If
    GetCharList = total
End Function

' *************
' ** Players **
' *************
Sub SaveAllPlayersOnline()
    Dim I As Long

    For I = 1 To Player_HighIndex
        If IsPlaying(I) Then
            Call SaveAccount(I)
        End If
    Next
End Sub

Sub SaveAccount(ByVal Index As Long)
    Dim filename As String
    Dim F As Long

    Call ChkDir(App.path & "\data\accounts\", GetPlayerLogin(Index))
    filename = App.path & "\data\accounts\" & GetPlayerLogin(Index) & "\data.bin"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Account(Index)
    Close #F
End Sub

Sub LoadAccount(ByVal Index As Long, ByVal Name As String)
    Dim filename As String
    Dim F As Long

    Call ClearAccount(Index)
    
    filename = App.path & "\data\accounts\" & Trim$(Name) & "\data.bin"
    F = FreeFile
    
    Open filename For Binary As #F
        Get #F, , Account(Index)
    Close #F
End Sub

Sub ClearAccount(ByVal Index As Long)
    Dim I As Long
    
    Call ZeroMemory(ByVal VarPtr(TempPlayer(Index)), LenB(TempPlayer(Index)))
    TempPlayer(Index).HDSerial = vbNullString
    Set TempPlayer(Index).buffer = New clsBuffer
    
    ZeroMemory ByVal VarPtr(Account(Index)), LenB(Account(Index))
    Account(Index).Login = vbNullString
    Account(Index).Password = vbNullString
    Account(Index).CurrentChar = 1
    Account(Index).Chars(GetPlayerChar(Index)).Name = vbNullString
    Account(Index).Chars(GetPlayerChar(Index)).Status = vbNullString
    Account(Index).Chars(GetPlayerChar(Index)).Class = 1
    
    For I = 1 To Skills.Skill_Count - 1
        Call SetPlayerSkill(Index, 1, I)
    Next
    
    frmServer.lvwInfo.ListItems(Index).SubItems(1) = vbNullString
    frmServer.lvwInfo.ListItems(Index).SubItems(2) = vbNullString
    frmServer.lvwInfo.ListItems(Index).SubItems(3) = vbNullString
End Sub

' ***********
' ** Classes **
' ***********
Sub SaveClasses()
    Dim I As Long

    For I = 1 To MAX_CLASSES
        Call SaveClass(I)
    Next
End Sub

Sub SaveClass(ByVal ClassNum As Long)
    Dim filename As String
    Dim F  As Long
    
    filename = App.path & "\data\classes\" & ClassNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Class(ClassNum)
    Close #F
End Sub

Sub LoadClasses()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckClasses

    For I = 1 To MAX_CLASSES
        filename = App.path & "\data\classes\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Class(I)
        Close #F
    Next
End Sub

Sub CheckClasses()
    Dim I As Long

    For I = 1 To MAX_CLASSES
        If Not FileExist("\data\classes\" & I & ".dat") Then
            Call ClearClass(I)
            Call SaveClass(I)
        End If
    Next
End Sub

Sub ClearClass(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Class(Index)), LenB(Class(Index)))
    Class(Index).Name = vbNullString
    Class(Index).CombatTree = 1
    Class(Index).Map = 1
    Class(Index).Color = 15
End Sub

Sub ClearClasses()
    Dim I As Long

    For I = 1 To MAX_CLASSES
        Call ClearClass(I)
    Next
End Sub

' ***********
' ** Items **
' ***********
Sub SaveItems()
    Dim I As Long

    For I = 1 To MAX_ITEMS
        Call SaveItem(I)
    Next
End Sub

Sub SaveItem(ByVal ItemNum As Integer)
    Dim filename As String
    Dim F  As Long
    
    filename = App.path & "\data\items\" & ItemNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Item(ItemNum)
    Close #F
End Sub

Sub LoadItems()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckItems

    For I = 1 To MAX_ITEMS
        filename = App.path & "\data\items\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Item(I)
        Close #F
    Next
End Sub

Sub CheckItems()
    Dim I As Long

    For I = 1 To MAX_ITEMS
        If Not FileExist("\data\items\" & I & ".dat") Then
            Call ClearItem(I)
            Call SaveItem(I)
        End If
    Next
End Sub

Sub ClearItem(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Item(Index)), LenB(Item(Index)))
    Item(Index).Name = vbNullString
    Item(Index).Desc = vbNullString
    Item(Index).Sound = vbNullString
    Item(Index).Rarity = 1
End Sub

Sub CheckQuests()
    Dim I As Long

    For I = 1 To MAX_QUESTS
        If Not FileExist("\data\quests\" & I & ".dat") Then
            Call ClearQuest(I)
            Call SaveQuest(I)
        End If
    Next
End Sub

Sub ClearQuests()
    Dim I As Long

    For I = 1 To MAX_QUESTS
        Call ClearQuest(I)
    Next
End Sub

Sub ClearQuest(ByVal QuestNum As Long)
    Call ZeroMemory(ByVal VarPtr(Quest(QuestNum)), LenB(Quest(QuestNum)))
    Quest(QuestNum).Name = vbNullString
    Quest(QuestNum).Description = vbNullString
End Sub

Sub ClearItems()
    Dim I As Long

    For I = 1 To MAX_ITEMS
        Call ClearItem(I)
    Next
End Sub

' ***********
' ** Shops **
' ***********
Sub SaveShops()
    Dim I As Long

    For I = 1 To MAX_SHOPS
        Call SaveShop(I)
    Next
End Sub

Sub SaveShop(ByVal ShopNum As Long)
    Dim filename As String
    Dim F As Long
    
    filename = App.path & "\data\shops\" & ShopNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Shop(ShopNum)
    Close #F
End Sub

Sub LoadShops()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckShops

    For I = 1 To MAX_SHOPS
        filename = App.path & "\data\shops\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Shop(I)
        Close #F
    Next
End Sub

Sub CheckShops()
    Dim I As Long

    For I = 1 To MAX_SHOPS
        If Not FileExist("\data\shops\" & I & ".dat") Then
            Call ClearShop(I)
            Call SaveShop(I)
        End If
    Next
End Sub

Sub ClearShop(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Shop(Index)), LenB(Shop(Index)))
    Shop(Index).Name = vbNullString
End Sub

Sub ClearShops()
    Dim I As Long

    For I = 1 To MAX_SHOPS
        Call ClearShop(I)
    Next
End Sub

' ************
' ** Spells **
' ************
Sub SaveSpell(ByVal SpellNum As Long)
    Dim filename As String
    Dim F As Long
    
    filename = App.path & "\data\spells\" & SpellNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Spell(SpellNum)
    Close #F
End Sub

Sub SaveSpells()
    Dim I As Long
    
    Call SetStatus("Saving spells... ")

    For I = 1 To MAX_SPELLS
        Call SaveSpell(I)
    Next
End Sub

Sub LoadSpells()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckSpells

    For I = 1 To MAX_SPELLS
        filename = App.path & "\data\spells\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Spell(I)
        Close #F
    Next
End Sub

Sub CheckSpells()
    Dim I As Long

    For I = 1 To MAX_SPELLS
        If Not FileExist("\data\spells\" & I & ".dat") Then
            Call ClearSpell(I)
            Call SaveSpell(I)
        End If
    Next
End Sub

Sub ClearSpell(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Spell(Index)), LenB(Spell(Index)))
    Spell(Index).Name = vbNullString
    Spell(Index).Desc = vbNullString
    Spell(Index).LevelReq = 1 ' Needs to be 1 for the spell editor
    Spell(Index).Sound = vbNullString
End Sub

Sub ClearSpells()
    Dim I As Long

    For I = 1 To MAX_SPELLS
        Call ClearSpell(I)
    Next
End Sub

' **********
' ** NPCs **
' **********
Sub SaveNPCs()
    Dim I As Long

    For I = 1 To MAX_NPCS
        Call SaveNPC(I)
    Next
End Sub

Sub SaveNPC(ByVal NPCNum As Long)
    Dim filename As String
    Dim F As Long
    
    filename = App.path & "\data\npcs\" & NPCNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , NPC(NPCNum)
    Close #F
End Sub

Sub LoadNPCs()
    Dim I As Long

    Call CheckNPCs

    For I = 1 To MAX_NPCS
        Call LoadNPC(I)
    Next
End Sub

Sub LoadNPC(NPCNum As Long)
    Dim F As Long
    Dim filename As String
    
    filename = App.path & "\data\npcs\" & NPCNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Get #F, , NPC(NPCNum)
    Close #F
End Sub

Sub CheckNPCs()
    Dim I As Integer
    Dim NPCSize As Long
    Dim NPCData() As Byte
    
    For I = 1 To MAX_NPCS
        If Not FileExist("\data\npcs\" & I & ".dat") Then
            Call ClearNPC(I)
            Call SaveNPC(I)
        End If
    Next
End Sub

Sub ClearNPC(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(NPC(Index)), LenB(NPC(Index)))
    NPC(Index).Name = vbNullString
    NPC(Index).Title = vbNullString
    NPC(Index).AttackSay = vbNullString
    NPC(Index).Music = vbNullString
    NPC(Index).Sound = vbNullString
End Sub

Sub ClearNPCs()
    Dim I As Long

    For I = 1 To MAX_NPCS
        Call ClearNPC(I)
    Next
End Sub

' ***************
' ** Resources **
' ***************
Sub SaveResources()
    Dim I As Long

    For I = 1 To MAX_RESOURCES
        Call SaveResource(I)
    Next
End Sub

Sub SaveResource(ByVal ResourceNum As Long)
    Dim filename As String
    Dim F As Long
    
    filename = App.path & "\data\resources\" & ResourceNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Resource(ResourceNum)
    Close #F
End Sub

Sub LoadResources()
    Dim filename As String
    Dim I As Integer
    Dim F As Long
    Dim sLen As Long
    
    Call CheckResources

    For I = 1 To MAX_RESOURCES
        filename = App.path & "\data\resources\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Resource(I)
        Close #F
    Next
End Sub

Sub CheckResources()
    Dim I As Long

    For I = 1 To MAX_RESOURCES
        If Not FileExist("\data\resources\" & I & ".dat") Then
            Call ClearResource(I)
            Call SaveResource(I)
        End If
    Next
End Sub

Sub ClearResource(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Resource(Index)), LenB(Resource(Index)))
    Resource(Index).Name = vbNullString
    Resource(Index).SuccessMessage = vbNullString
    Resource(Index).EmptyMessage = vbNullString
    Resource(Index).FailMessage = vbNullString
    Resource(Index).Sound = vbNullString
End Sub

Sub ClearResources()
    Dim I As Long

    For I = 1 To MAX_RESOURCES
        Call ClearResource(I)
    Next
End Sub

' ****************
' ** Animations **
' ****************
Sub SaveAnimations()
    Dim I As Long

    For I = 1 To MAX_ANIMATIONS
        Call SaveAnimation(I)
    Next
End Sub

Sub SaveAnimation(ByVal AnimationNum As Long)
    Dim filename As String
    Dim F As Long
    
    filename = App.path & "\data\animations\" & AnimationNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Animation(AnimationNum)
    Close #F
End Sub

Sub LoadAnimations()
    Dim filename As String
    Dim I As Integer
    Dim F As Long
    Dim sLen As Long
    
    Call CheckAnimations

    For I = 1 To MAX_ANIMATIONS
        filename = App.path & "\data\animations\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Animation(I)
        Close #F
    Next
End Sub

Sub CheckAnimations()
    Dim I As Long

    For I = 1 To MAX_ANIMATIONS
        If Not FileExist("\data\animations\" & I & ".dat") Then
            Call ClearAnimation(I)
            Call SaveAnimation(I)
        End If
    Next
End Sub

Sub ClearAnimation(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Animation(Index)), LenB(Animation(Index)))
    Animation(Index).Name = vbNullString
    Animation(Index).Sound = vbNullString
End Sub

Sub ClearAnimations()
    Dim I As Long

    For I = 1 To MAX_ANIMATIONS
        Call ClearAnimation(I)
    Next
End Sub

' **********
' ** Maps **
' **********
Sub SaveMap(ByVal MapNum As Long)
    Dim filename As String
    Dim F As Long
    Dim X As Long
    Dim Y As Long, I As Long, z As Long, w As Long
    
    filename = App.path & "\data\maps\" & MapNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Map(MapNum).Name
        Put #F, , Map(MapNum).Music
        Put #F, , Map(MapNum).BGS
        Put #F, , Map(MapNum).Revision
        Put #F, , Map(MapNum).Moral
        Put #F, , Map(MapNum).Up
        Put #F, , Map(MapNum).Down
        Put #F, , Map(MapNum).Left
        Put #F, , Map(MapNum).Right
        Put #F, , Map(MapNum).BootMap
        Put #F, , Map(MapNum).BootX
        Put #F, , Map(MapNum).BootY
        
        Put #F, , Map(MapNum).Weather
        Put #F, , Map(MapNum).WeatherIntensity
        
        Put #F, , Map(MapNum).Fog
        Put #F, , Map(MapNum).FogSpeed
        Put #F, , Map(MapNum).FogOpacity
        
        Put #F, , Map(MapNum).Panorama
        
        Put #F, , Map(MapNum).Red
        Put #F, , Map(MapNum).Green
        Put #F, , Map(MapNum).Blue
        Put #F, , Map(MapNum).Alpha
        
        Put #F, , Map(MapNum).MaxX
        Put #F, , Map(MapNum).MaxY
        
        Put #F, , Map(MapNum).NPC_HighIndex
    
        For X = 0 To Map(MapNum).MaxX
            For Y = 0 To Map(MapNum).MaxY
                Put #F, , Map(MapNum).Tile(X, Y)
            Next
        Next
    
        For X = 1 To MAX_MAP_NPCS
            Put #F, , Map(MapNum).NPC(X)
            Put #F, , Map(MapNum).NPCSpawnType(X)
        Next
    Close #F
    
    ' This is for event saving, it is in .ini files becuase there are non-limited values (strings) that Can't easily be loaded/saved in the normal manner.
    filename = App.path & "\data\maps\" & MapNum & "_eventdata.dat"
    PutVar filename, "Events", "EventCount", Val(Map(MapNum).EventCount)
    
    If Map(MapNum).EventCount > 0 Then
        For I = 1 To Map(MapNum).EventCount
            With Map(MapNum).Events(I)
                PutVar filename, "Event" & I, "Name", .Name
                PutVar filename, "Event" & I, "Global", Val(.Global)
                PutVar filename, "Event" & I, "x", Val(.X)
                PutVar filename, "Event" & I, "y", Val(.Y)
                PutVar filename, "Event" & I, "PageCount", Val(.PageCount)
            End With
            
            If Map(MapNum).Events(I).PageCount > 0 Then
                For X = 1 To Map(MapNum).Events(I).PageCount
                    With Map(MapNum).Events(I).Pages(X)
                        PutVar filename, "Event" & I & "Page" & X, "chkVariable", Val(.chkVariable)
                        PutVar filename, "Event" & I & "Page" & X, "VariableIndex", Val(.VariableIndex)
                        PutVar filename, "Event" & I & "Page" & X, "VariableCondition", Val(.VariableCondition)
                        PutVar filename, "Event" & I & "Page" & X, "VariableCompare", Val(.VariableCompare)
                        
                        PutVar filename, "Event" & I & "Page" & X, "chkSwitch", Val(.chkSwitch)
                        PutVar filename, "Event" & I & "Page" & X, "SwitchIndex", Val(.SwitchIndex)
                        PutVar filename, "Event" & I & "Page" & X, "SwitchCompare", Val(.SwitchCompare)
                        
                        PutVar filename, "Event" & I & "Page" & X, "chkHasItem", Val(.chkHasItem)
                        PutVar filename, "Event" & I & "Page" & X, "HasItemIndex", Val(.HasItemIndex)
                        
                        PutVar filename, "Event" & I & "Page" & X, "chkSelfSwitch", Val(.chkSelfSwitch)
                        PutVar filename, "Event" & I & "Page" & X, "SelfSwitchIndex", Val(.SelfSwitchIndex)
                        PutVar filename, "Event" & I & "Page" & X, "SelfSwitchCompare", Val(.SelfSwitchCompare)
                        
                        PutVar filename, "Event" & I & "Page" & X, "GraphicType", Val(.GraphicType)
                        PutVar filename, "Event" & I & "Page" & X, "Graphic", Val(.Graphic)
                        PutVar filename, "Event" & I & "Page" & X, "GraphicX", Val(.GraphicX)
                        PutVar filename, "Event" & I & "Page" & X, "GraphicY", Val(.GraphicY)
                        PutVar filename, "Event" & I & "Page" & X, "GraphicX2", Val(.GraphicX2)
                        PutVar filename, "Event" & I & "Page" & X, "GraphicY2", Val(.GraphicY2)
                        
                        PutVar filename, "Event" & I & "Page" & X, "MoveType", Val(.MoveType)
                        PutVar filename, "Event" & I & "Page" & X, "MoveSpeed", Val(.MoveSpeed)
                        PutVar filename, "Event" & I & "Page" & X, "MoveFreq", Val(.MoveFreq)
                        
                        PutVar filename, "Event" & I & "Page" & X, "IgnoreMoveRoute", Val(.IgnoreMoveRoute)
                        PutVar filename, "Event" & I & "Page" & X, "RepeatMoveRoute", Val(.RepeatMoveRoute)
                        
                        PutVar filename, "Event" & I & "Page" & X, "MoveRouteCount", Val(.MoveRouteCount)
                        
                        If .MoveRouteCount > 0 Then
                            For Y = 1 To .MoveRouteCount
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Index", Val(.MoveRoute(Y).Index)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data1", Val(.MoveRoute(Y).Data1)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data2", Val(.MoveRoute(Y).Data2)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data3", Val(.MoveRoute(Y).Data3)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data4", Val(.MoveRoute(Y).Data4)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data5", Val(.MoveRoute(Y).Data5)
                                PutVar filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data6", Val(.MoveRoute(Y).Data6)
                            Next
                        End If
                        
                        PutVar filename, "Event" & I & "Page" & X, "WalkAnim", Val(.WalkAnim)
                        PutVar filename, "Event" & I & "Page" & X, "DirFix", Val(.DirFix)
                        PutVar filename, "Event" & I & "Page" & X, "WalkThrough", Val(.WalkThrough)
                        PutVar filename, "Event" & I & "Page" & X, "ShowName", Val(.ShowName)
                        PutVar filename, "Event" & I & "Page" & X, "Trigger", Val(.Trigger)
                        PutVar filename, "Event" & I & "Page" & X, "CommandListCount", Val(.CommandListCount)
                        
                        PutVar filename, "Event" & I & "Page" & X, "Position", Val(.Position)
                    End With
                    
                    If Map(MapNum).Events(I).Pages(X).CommandListCount > 0 Then
                        For Y = 1 To Map(MapNum).Events(I).Pages(X).CommandListCount
                            PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "CommandCount", Val(Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount)
                            PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "ParentList", Val(Map(MapNum).Events(I).Pages(X).CommandList(Y).ParentList)
                            If Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount > 0 Then
                                For z = 1 To Map(MapNum).Events(I).Pages(X).CommandList(Y).CommandCount
                                    With Map(MapNum).Events(I).Pages(X).CommandList(Y).Commands(z)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Index", Val(.Index)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Text1", .Text1
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Text2", .Text2
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Text3", .Text3
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Text4", .Text4
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Text5", .Text5
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data1", Val(.Data1)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data2", Val(.Data2)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data3", Val(.Data3)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data4", Val(.Data4)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data5", Val(.Data5)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "Data6", Val(.Data6)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchCommandList", Val(.ConditionalBranch.CommandList)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchCondition", Val(.ConditionalBranch.Condition)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchData1", Val(.ConditionalBranch.Data1)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchData2", Val(.ConditionalBranch.Data2)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchData3", Val(.ConditionalBranch.Data3)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "ConditionalBranchElseCommandList", Val(.ConditionalBranch.ElseCommandList)
                                        PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRouteCount", Val(.MoveRouteCount)
                                        If .MoveRouteCount > 0 Then
                                            For w = 1 To .MoveRouteCount
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Index", Val(.MoveRoute(w).Index)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data1", Val(.MoveRoute(w).Data1)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data2", Val(.MoveRoute(w).Data2)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data3", Val(.MoveRoute(w).Data3)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data4", Val(.MoveRoute(w).Data4)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data5", Val(.MoveRoute(w).Data5)
                                                PutVar filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & z & "MoveRoute" & w & "Data6", Val(.MoveRoute(w).Data6)
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
        
    DoEvents
End Sub

' ************
' ** Quests **
' ************
Sub SaveQuest(ByVal QuestNum As Long)
    Dim filename As String
    Dim F As Long
    Dim I As Long, II As Long
    
    filename = App.path & "\data\quests\" & QuestNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Quest(QuestNum).Name
        Put #F, , Quest(QuestNum).Description
        Put #F, , Quest(QuestNum).CanBeRetaken
        Put #F, , Quest(QuestNum).Max_CLI
        
        For I = 1 To Quest(QuestNum).Max_CLI
            Put #F, , Quest(QuestNum).CLI(I).ItemIndex
            Put #F, , Quest(QuestNum).CLI(I).isNPC
            Put #F, , Quest(QuestNum).CLI(I).Max_Actions
            
            For II = 1 To Quest(QuestNum).CLI(I).Max_Actions
                Put #F, , Quest(QuestNum).CLI(I).Action(II).TextHolder
                Put #F, , Quest(QuestNum).CLI(I).Action(II).ActionID
                Put #F, , Quest(QuestNum).CLI(I).Action(II).Amount
                Put #F, , Quest(QuestNum).CLI(I).Action(II).MainData
                Put #F, , Quest(QuestNum).CLI(I).Action(II).QuadData
                Put #F, , Quest(QuestNum).CLI(I).Action(II).SecondaryData
                Put #F, , Quest(QuestNum).CLI(I).Action(II).TertiaryData
            Next II
        Next I
        
        Put #F, , Quest(QuestNum).Requirements
    Close #F
    DoEvents
End Sub

Sub SaveMaps()
    Dim I As Long

    For I = 1 To MAX_MAPS
        Call SaveMap(I)
    Next
End Sub

Sub LoadMaps()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    Dim X As Long
    Dim Y As Long, z As Long, p As Long, w As Long
    Dim newtileset As Long, newtiley As Long
    Call CheckMaps

    For I = 1 To MAX_MAPS
        filename = App.path & "\data\maps\" & I & ".dat"
        F = FreeFile
        Open filename For Binary As #F
        Get #F, , Map(I).Name
        Get #F, , Map(I).Music
        Get #F, , Map(I).BGS
        Get #F, , Map(I).Revision
        Get #F, , Map(I).Moral
        Get #F, , Map(I).Up
        Get #F, , Map(I).Down
        Get #F, , Map(I).Left
        Get #F, , Map(I).Right
        Get #F, , Map(I).BootMap
        Get #F, , Map(I).BootX
        Get #F, , Map(I).BootY
        
        Get #F, , Map(I).Weather
        Get #F, , Map(I).WeatherIntensity
        
        Get #F, , Map(I).Fog
        Get #F, , Map(I).FogSpeed
        Get #F, , Map(I).FogOpacity
        
        Get #F, , Map(I).Panorama
        
        Get #F, , Map(I).Red
        Get #F, , Map(I).Green
        Get #F, , Map(I).Blue
        Get #F, , Map(I).Alpha
        
        Get #F, , Map(I).MaxX
        Get #F, , Map(I).MaxY
        
        ' have to set the tile()
        ReDim Map(I).Tile(0 To Map(I).MaxX, 0 To Map(I).MaxY)

        Get #F, , Map(I).NPC_HighIndex
        
        For X = 0 To Map(I).MaxX
            For Y = 0 To Map(I).MaxY
                Get #F, , Map(I).Tile(X, Y)
            Next
        Next

        For X = 1 To MAX_MAP_NPCS
            Get #F, , Map(I).NPC(X)
            Get #F, , Map(I).NPCSpawnType(X)
            MapNPC(I).NPC(X).Num = Map(I).NPC(X)
        Next

        Close #F
        
        CacheResources I
        DoEvents
        CacheMapBlocks I
    Next
    
    For z = 1 To MAX_MAPS
        filename = App.path & "\data\maps\" & z & "_eventdata.dat"
        Map(z).EventCount = Val(GetVar(filename, "Events", "EventCount"))
        
        If Map(z).EventCount > 0 Then
            ReDim Map(z).Events(0 To Map(z).EventCount)
            For I = 1 To Map(z).EventCount
                With Map(z).Events(I)
                    .Name = GetVar(filename, "Event" & I, "Name")
                    .Global = Val(GetVar(filename, "Event" & I, "Global"))
                    .X = Val(GetVar(filename, "Event" & I, "x"))
                    .Y = Val(GetVar(filename, "Event" & I, "y"))
                    .PageCount = Val(GetVar(filename, "Event" & I, "PageCount"))
                End With
                If Map(z).Events(I).PageCount > 0 Then
                    ReDim Map(z).Events(I).Pages(0 To Map(z).Events(I).PageCount)
                    For X = 1 To Map(z).Events(I).PageCount
                        With Map(z).Events(I).Pages(X)
                            .chkVariable = Val(GetVar(filename, "Event" & I & "Page" & X, "chkVariable"))
                            .VariableIndex = Val(GetVar(filename, "Event" & I & "Page" & X, "VariableIndex"))
                            .VariableCondition = Val(GetVar(filename, "Event" & I & "Page" & X, "VariableCondition"))
                            .VariableCompare = Val(GetVar(filename, "Event" & I & "Page" & X, "VariableCompare"))
                            
                            .chkSwitch = Val(GetVar(filename, "Event" & I & "Page" & X, "chkSwitch"))
                            .SwitchIndex = Val(GetVar(filename, "Event" & I & "Page" & X, "SwitchIndex"))
                            .SwitchCompare = Val(GetVar(filename, "Event" & I & "Page" & X, "SwitchCompare"))
                            
                            .chkHasItem = Val(GetVar(filename, "Event" & I & "Page" & X, "chkHasItem"))
                            .HasItemIndex = Val(GetVar(filename, "Event" & I & "Page" & X, "HasItemIndex"))
                            
                            .chkSelfSwitch = Val(GetVar(filename, "Event" & I & "Page" & X, "chkSelfSwitch"))
                            .SelfSwitchIndex = Val(GetVar(filename, "Event" & I & "Page" & X, "SelfSwitchIndex"))
                            .SelfSwitchCompare = Val(GetVar(filename, "Event" & I & "Page" & X, "SelfSwitchCompare"))
                            
                            .GraphicType = Val(GetVar(filename, "Event" & I & "Page" & X, "GraphicType"))
                            .Graphic = Val(GetVar(filename, "Event" & I & "Page" & X, "Graphic"))
                            .GraphicX = Val(GetVar(filename, "Event" & I & "Page" & X, "GraphicX"))
                            .GraphicY = Val(GetVar(filename, "Event" & I & "Page" & X, "GraphicY"))
                            .GraphicX2 = Val(GetVar(filename, "Event" & I & "Page" & X, "GraphicX2"))
                            .GraphicY2 = Val(GetVar(filename, "Event" & I & "Page" & X, "GraphicY2"))
                            
                            .MoveType = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveType"))
                            .MoveSpeed = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveSpeed"))
                            .MoveFreq = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveFreq"))
                            
                            .IgnoreMoveRoute = Val(GetVar(filename, "Event" & I & "Page" & X, "IgnoreMoveRoute"))
                            .RepeatMoveRoute = Val(GetVar(filename, "Event" & I & "Page" & X, "RepeatMoveRoute"))
                            
                            .MoveRouteCount = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRouteCount"))
                            
                            If .MoveRouteCount > 0 Then
                                ReDim Map(z).Events(I).Pages(X).MoveRoute(0 To .MoveRouteCount)
                                For Y = 1 To .MoveRouteCount
                                    .MoveRoute(Y).Index = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Index"))
                                    .MoveRoute(Y).Data1 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data1"))
                                    .MoveRoute(Y).Data2 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data2"))
                                    .MoveRoute(Y).Data3 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data3"))
                                    .MoveRoute(Y).Data4 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data4"))
                                    .MoveRoute(Y).Data5 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data5"))
                                    .MoveRoute(Y).Data6 = Val(GetVar(filename, "Event" & I & "Page" & X, "MoveRoute" & Y & "Data6"))
                                Next
                            End If
                            
                            .WalkAnim = Val(GetVar(filename, "Event" & I & "Page" & X, "WalkAnim"))
                            .DirFix = Val(GetVar(filename, "Event" & I & "Page" & X, "DirFix"))
                            .WalkThrough = Val(GetVar(filename, "Event" & I & "Page" & X, "WalkThrough"))
                            .ShowName = Val(GetVar(filename, "Event" & I & "Page" & X, "ShowName"))
                            .Trigger = Val(GetVar(filename, "Event" & I & "Page" & X, "Trigger"))
                            .CommandListCount = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandListCount"))
                         
                            .Position = Val(GetVar(filename, "Event" & I & "Page" & X, "Position"))
                        End With
                            
                        If Map(z).Events(I).Pages(X).CommandListCount > 0 Then
                            ReDim Map(z).Events(I).Pages(X).CommandList(0 To Map(z).Events(I).Pages(X).CommandListCount)
                            For Y = 1 To Map(z).Events(I).Pages(X).CommandListCount
                                Map(z).Events(I).Pages(X).CommandList(Y).CommandCount = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "CommandCount"))
                                Map(z).Events(I).Pages(X).CommandList(Y).ParentList = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "ParentList"))
                                If Map(z).Events(I).Pages(X).CommandList(Y).CommandCount > 0 Then
                                    ReDim Map(z).Events(I).Pages(X).CommandList(Y).Commands(Map(z).Events(I).Pages(X).CommandList(Y).CommandCount)
                                    For p = 1 To Map(z).Events(I).Pages(X).CommandList(Y).CommandCount
                                        With Map(z).Events(I).Pages(X).CommandList(Y).Commands(p)
                                            .Index = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Index"))
                                            .Text1 = GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Text1")
                                            .Text2 = GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Text2")
                                            .Text3 = GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Text3")
                                            .Text4 = GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Text4")
                                            .Text5 = GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Text5")
                                            .Data1 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data1"))
                                            .Data2 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data2"))
                                            .Data3 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data3"))
                                            .Data4 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data4"))
                                            .Data5 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data5"))
                                            .Data6 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "Data6"))
                                            .ConditionalBranch.CommandList = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchCommandList"))
                                            .ConditionalBranch.Condition = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchCondition"))
                                            .ConditionalBranch.Data1 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchData1"))
                                            .ConditionalBranch.Data2 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchData2"))
                                            .ConditionalBranch.Data3 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchData3"))
                                            .ConditionalBranch.ElseCommandList = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "ConditionalBranchElseCommandList"))
                                            .MoveRouteCount = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRouteCount"))
                                            If .MoveRouteCount > 0 Then
                                                ReDim .MoveRoute(1 To .MoveRouteCount)
                                                For w = 1 To .MoveRouteCount
                                                    .MoveRoute(w).Index = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Index"))
                                                    .MoveRoute(w).Data1 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data1"))
                                                    .MoveRoute(w).Data2 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data2"))
                                                    .MoveRoute(w).Data3 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data3"))
                                                    .MoveRoute(w).Data4 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data4"))
                                                    .MoveRoute(w).Data5 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data5"))
                                                    .MoveRoute(w).Data6 = Val(GetVar(filename, "Event" & I & "Page" & X, "CommandList" & Y & "Command" & p & "MoveRoute" & w & "Data6"))
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
        DoEvents
    Next
End Sub

Sub LoadQuests()
    Dim filename As String
    Dim F As Long
    Dim I As Long, II As Long, III As Long
    
    Call CheckQuests
    
    For I = 1 To MAX_QUESTS
    
        filename = App.path & "\data\quests\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Quest(I).Name
            Get #F, , Quest(I).Description
            Get #F, , Quest(I).CanBeRetaken
            Get #F, , Quest(I).Max_CLI
            
            If Quest(I).Max_CLI > 0 Then
                ReDim Quest(I).CLI(1 To Quest(I).Max_CLI)
                
                For II = 1 To Quest(I).Max_CLI
                    Get #F, , Quest(I).CLI(II).ItemIndex
                    Get #F, , Quest(I).CLI(II).isNPC
                    Get #F, , Quest(I).CLI(II).Max_Actions
                    
                    If Quest(I).CLI(II).Max_Actions > 0 Then
                        ReDim Preserve Quest(I).CLI(II).Action(1 To Quest(I).CLI(II).Max_Actions)
                        
                        For III = 1 To Quest(I).CLI(II).Max_Actions
                            Get #F, , Quest(I).CLI(II).Action(III).TextHolder
                            Get #F, , Quest(I).CLI(II).Action(III).ActionID
                            Get #F, , Quest(I).CLI(II).Action(III).Amount
                            Get #F, , Quest(I).CLI(II).Action(III).MainData
                            Get #F, , Quest(I).CLI(II).Action(III).QuadData
                            Get #F, , Quest(I).CLI(II).Action(III).SecondaryData
                            Get #F, , Quest(I).CLI(II).Action(III).TertiaryData
                        Next III
                    End If
                Next II
            End If
            
            Get #F, , Quest(I).Requirements
        Close #F
        DoEvents
    Next I
End Sub

Sub CheckMaps()
    Dim I As Long

    For I = 1 To MAX_MAPS
        If Not FileExist("\data\maps\" & I & ".dat") Then
            Call ClearMap(I)
            Call SaveMap(I)
        End If
    Next
End Sub

Sub ClearMapItem(ByVal Index As Long, ByVal MapNum As Integer)
    Call ZeroMemory(ByVal VarPtr(MapItem(MapNum, Index)), LenB(MapItem(MapNum, Index)))
    MapItem(MapNum, Index).playerName = vbNullString
End Sub

Sub ClearMapItems()
    Dim X As Long
    Dim Y As Long

    For Y = 1 To MAX_MAPS
        For X = 1 To MAX_MAP_ITEMS
            Call ClearMapItem(X, Y)
        Next
    Next
End Sub

Sub ClearMapNPC(ByVal Index As Long, ByVal MapNum As Integer)
    ReDim MapNPC(MapNum).NPC(1 To MAX_MAP_NPCS)
    Call ZeroMemory(ByVal VarPtr(MapNPC(MapNum).NPC(Index)), LenB(MapNPC(MapNum).NPC(Index)))
End Sub

Sub ClearMapNPCs()
    Dim X As Long
    Dim Y As Long

    For Y = 1 To MAX_MAPS
        For X = 1 To MAX_MAP_NPCS
            Call ClearMapNPC(X, Y)
        Next
    Next
End Sub

Sub ClearMap(ByVal MapNum As Long)
    Call ZeroMemory(ByVal VarPtr(Map(MapNum)), LenB(Map(MapNum)))
    Map(MapNum).Name = vbNullString
    Map(MapNum).Music = vbNullString
    Map(MapNum).BGS = vbNullString
    Map(MapNum).Moral = 1
    Map(MapNum).MaxX = MIN_MAPX
    Map(MapNum).MaxY = MIN_MAPY
    ReDim Map(MapNum).Tile(0 To Map(MapNum).MaxX, 0 To Map(MapNum).MaxY)
    
    ' Reset the values for if a player is on the map or not
    PlayersOnMap(MapNum) = NO
    
    ' Reset the map cache array for this map.
    MapCache(MapNum).Data = vbNullString
End Sub

Sub ClearMaps()
    Dim I As Long

    For I = 1 To MAX_MAPS
        Call ClearMap(I)
    Next
End Sub

' ************
' ** Guilds **
' ************
Sub SaveGuilds()
    Dim I As Long

    For I = 1 To MAX_GUILDS
        Call SaveGuild(I)
    Next
End Sub

Sub SaveGuild(ByVal GuildNum As Long)
    Dim filename As String
    Dim F  As Long
    
    filename = App.path & "\data\guilds\" & GuildNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Guild(GuildNum)
    Close #F
End Sub

Sub LoadGuilds()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckGuild

    For I = 1 To MAX_GUILDS
        filename = App.path & "\data\guilds\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Guild(I)
        Close #F
    Next
End Sub

Sub CheckGuild()
    Dim I As Long

    For I = 1 To MAX_GUILDS
        If Not FileExist("\data\guilds\" & I & ".dat") Then
            Call ClearGuild(I)
            Call SaveGuild(I)
        End If
    Next
End Sub

Sub ClearGuilds()
    Dim I As Long

    For I = 1 To MAX_GUILDS
        Call ClearGuild(I)
    Next
End Sub

Sub ClearGuild(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Guild(Index)), LenB(Guild(Index)))
    Guild(Index).Name = vbNullString
    Guild(Index).MOTD = vbNullString
End Sub

' ************
' ** Bans **
' ************
Sub SaveBan(ByVal BanNum As Long)
    Dim F As Long
    Dim filename As String
    
    F = FreeFile
    filename = App.path & "\data\bans\" & BanNum & ".dat"
    
    Open filename For Binary As #F
        Put #F, , Ban(BanNum)
    Close #F
End Sub

Sub CheckBans()
    Dim I As Long

    For I = 1 To MAX_BANS
        If Not FileExist("\data\bans\" & I & ".dat") Then
            Call ClearBan(I)
            Call SaveBan(I)
        End If
    Next
End Sub

Sub ClearBans()
    Dim I As Long
    
    For I = 1 To MAX_BANS
        Call ClearBan(I)
    Next
End Sub

Sub ClearBan(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Ban(Index)), LenB(Ban(Index)))
    Ban(Index).PlayerLogin = vbNullString
    Ban(Index).playerName = vbNullString
    Ban(Index).Reason = vbNullString
    Ban(Index).IP = vbNullString
    Ban(Index).HDSerial = vbNullString
    Ban(Index).Time = vbNullString
    Ban(Index).By = vbNullString
    Ban(Index).Date = vbNullString
End Sub

' ************
' ** Titles **
' ************
Sub SaveTitle(ByVal TitleNum As Long)
    Dim F As Long
    Dim filename As String

    F = FreeFile
    filename = App.path & "\data\titles\" & TitleNum & ".dat"
    
    Open filename For Binary As #F
        Put #F, , Title(TitleNum)
    Close #F
End Sub

Sub LoadTitles()
    Dim I As Long

    CheckTitles
    
    For I = 1 To MAX_TITLES
        Call LoadTitle(I)
    Next
End Sub

Sub LoadTitle(Index As Long)
    Dim F As Long
    Dim filename  As String

    F = FreeFile
    filename = App.path & "\data\titles\" & Index & ".dat"
    
    Open filename For Binary As #F
        Get #F, , Title(Index)
    Close #F
End Sub

Sub CheckTitles()
    Dim I As Long

    For I = 1 To MAX_TITLES
        If Not FileExist("\data\titles\" & I & ".dat") Then
            Call ClearTitle(I)
            Call SaveTitle(I)
        End If
    Next
End Sub

Sub ClearTitles()
    Dim I As Long
    
    For I = 1 To MAX_TITLES
        Call ClearTitle(I)
    Next
End Sub

Sub ClearTitle(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Title(Index)), LenB(Title(Index)))
    Title(Index).Name = vbNullString
End Sub

' ************
' ** Morals **
' ************
Sub SaveMorals()
    Dim I As Long

    For I = 1 To MAX_MORALS
        Call SaveMoral(I)
    Next
End Sub

Sub SaveMoral(ByVal MoralNum As Long)
    Dim filename As String
    Dim F  As Long
    
    filename = App.path & "\data\morals\" & MoralNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Moral(MoralNum)
    Close #F
End Sub

Sub LoadMorals()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckMorals

    For I = 1 To MAX_MORALS
        filename = App.path & "\data\morals\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Moral(I)
        Close #F
    Next
End Sub

Sub CheckMorals()
    Dim I As Long

    For I = 1 To MAX_MORALS
        If Not FileExist("\data\morals\" & I & ".dat") Then
            Call ClearMoral(I)
            Call SaveMoral(I)
        End If
    Next
End Sub

Sub ClearMoral(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Moral(Index)), LenB(Moral(Index)))
    Moral(Index).Name = vbNullString
End Sub

Sub ClearMorals()
    Dim I As Long

    For I = 1 To MAX_MORALS
        Call ClearMoral(I)
    Next
End Sub

' **************
' ** Emoticons **
' **************
Sub SaveEmoticons()
    Dim I As Long

    For I = 1 To MAX_EMOTICONS
        Call SaveEmoticon(I)
    Next
End Sub

Sub SaveEmoticon(ByVal EmoticonNum As Long)
    Dim filename As String
    Dim F  As Long
    
    filename = App.path & "\data\emoticons\" & EmoticonNum & ".dat"
    F = FreeFile
    
    Open filename For Binary As #F
        Put #F, , Emoticon(EmoticonNum)
    Close #F
End Sub

Sub LoadEmoticons()
    Dim filename As String
    Dim I As Long
    Dim F As Long
    
    Call CheckEmoticons

    For I = 1 To MAX_EMOTICONS
        filename = App.path & "\data\emoticons\" & I & ".dat"
        F = FreeFile
        
        Open filename For Binary As #F
            Get #F, , Emoticon(I)
        Close #F
    Next
End Sub

Sub CheckEmoticons()
    Dim I As Long

    For I = 1 To MAX_EMOTICONS
        If Not FileExist("\data\emoticons\" & I & ".dat") Then
            Call ClearEmoticon(I)
            Call SaveEmoticon(I)
        End If
    Next
End Sub

Sub ClearEmoticons()
    Dim I As Long

    For I = 1 To MAX_EMOTICONS
        Call ClearEmoticon(I)
    Next
End Sub

Sub ClearEmoticon(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(Emoticon(Index)), LenB(Emoticon(Index)))
    Emoticon(Index).Command = "/"
End Sub

' ***********
' ** Party **
' ***********
Sub ClearParty(ByVal PartyNum As Long)
    Call ZeroMemory(ByVal VarPtr(Party(PartyNum)), LenB(Party(PartyNum)))
End Sub

Sub SaveTempGuildMember(ByVal Index As Long, ByVal Login As String)
    Dim filename As String
    Dim F As Long

    filename = App.path & "\data\accounts\" & Trim$(Login) & "\data.bin"
    
    F = FreeFile
    
    Open filename For Binary As #F
    Put #F, , TempGuildMember(Index)
    Close #F
End Sub

Sub LoadTempGuildMember(ByVal Index As Long, ByVal Login As String)
    Dim filename As String
    Dim F As Long
    
    Call ClearTempGuildMember(Index)
    filename = App.path & "\data\Accounts\" & Trim$(Login) & "\data.bin"
    F = FreeFile
    Open filename For Binary As #F
    Get #F, , TempGuildMember(Index)
    Close #F
End Sub

Sub ClearTempGuildMember(ByVal Index As Long)
    Call ZeroMemory(ByVal VarPtr(TempGuildMember(Index)), LenB(TempGuildMember(Index)))
End Sub

Sub SaveSwitches()
    Dim I As Long, filename As String
    
    filename = App.path & "\data\switches.ini"
    
    For I = 1 To MAX_SWITCHES
        Call PutVar(filename, "Switches", "Switch" & CStr(I) & "Name", Switches(I))
    Next
End Sub

Sub SaveVariables()
    Dim I As Long, filename As String
    
    filename = App.path & "\data\variables.ini"
    
    For I = 1 To MAX_VARIABLES
        Call PutVar(filename, "Variables", "Variable" & CStr(I) & "Name", Variables(I))
    Next
End Sub

Sub LoadSwitches()
    Dim I As Long, filename As String
    
    filename = App.path & "\data\switches.ini"
    
    For I = 1 To MAX_SWITCHES
        Switches(I) = GetVar(filename, "Switches", "Switch" & CStr(I) & "Name")
    Next
End Sub

Sub LoadVariables()
    Dim I As Long, filename As String
    
    filename = App.path & "\data\variables.ini"
    
    For I = 1 To MAX_VARIABLES
        Variables(I) = GetVar(filename, "Variables", "Variable" & CStr(I) & "Name")
    Next
End Sub
