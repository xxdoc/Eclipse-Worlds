Attribute VB_Name = "modEnumerations"
Option Explicit

' The order of the packets must match with the server's packet enumeration

' Packets sent by server to client
Public Enum ServerPackets
    SAlertMsg = 1
    SLoginOk
    SNewCharClasses
    SInGame
    SPlayerInv
    SPlayerInvUpdate
    SPlayerWornEq
    SPlayerHP
    SPlayerMP '
    SPlayerStats
    SPlayerPoints
    SPlayerLevel
    SPlayerGuild
    SPlayerSprite
    SPlayerTitles
    SPlayerStatus
    SPlayerPK
    SPlayerData
    SPlayerMove
    SPlayerWarp
    SNpcMove
    SPlayerDir
    SNpcDir
    SAttack
    SNpcAttack
    SCheckForMap
    SMapData
    SMapItemData
    SMapNpcData
    SMapNpcTarget
    SMapDone
    SGlobalMsg
    SAdminMsg
    SPlayerMsg
    SMapMsg
    SSpawnItem
    SItemEditor
    SUpdateItem
    SREditor
    SSpawnNpc
    SNpcDead
    SNpcEditor
    SUpdateNpc
    SEditMap
    SEditEvent
    SShopEditor
    SUpdateShop
    SSpellEditor
    SUpdateSpell
    SSpells
    SSpell
    SLeft
    SResourceCache
    SResourceEditor
    SUpdateResource
    SSendPing
    SDoorAnimation
    SActionMsg
    SPlayerEXP
    SBlood
    SAnimationEditor
    SUpdateAnimation
    SAnimation
    SMapNpcVitals
    SSpellCooldown
    SClearSpellBuffer
    SSayMsg
    SOpenShop
    SResetShopAction
    SStunned
    SMapWornEq
    sbank
    STrade
    SCloseTrade
    STradeUpdate
    STradeStatus
    STradeRequest
    SPartyInvite
    SPartyUpdate
    SPartyVitals
    STarget
    SHotbar
    SGuildMembers
    SGuildInvite
    SMapReport
    SNpcSpellBuffer
    SCheckpoint
    SUpdateLogs
    SFriendsList
    SFoesList
    SHighIndex
    SEntitySound
    SSendNews
    SSound
    SBanEditor
    SUpdateBan
    STitleEditor
    SUpdateTitle
    SMoralEditor
    SUpdateMoral
    SClassEditor
    SUpdateClass
    SCloseClient
    SLeaveGame
    SEmoticonEditor
    SUpdateEmoticon
    SCheckEmoticon
    SSpawnEvent
    SEventMove
    SEventDir
    SEventChat
    SEventStart
    SEventEnd
    SPlayBGM
    SPlaySound
    SFadeoutBGM
    SStopSound
    SSwitchesAndVariables
    SMapEventData
    SChatBubble
    SSpecialEffect
    
    ' Character editor
    SPlayersOnline
    SAllCharacters
    SExtendedPlayerData
    
    SAccessVerificator
    ' Make sure SMSG_COUNT is below everything else
    SMSG_COUNT
End Enum

' Packets sent by client to server
Public Enum ClientPackets
    CNewAccount = 1
    CDelAccount
    CLogin
    CAddChar
    CUseChar
    CSayMsg
    CEmoteMsg
    CGlobalMsg
    CAdminMsg
    CPrivateMsg
    CPlayerMove
    CPlayerDir
    CUseItem
    CAttack
    CWarpMeTo
    CWarpToMe
    CWarpTo
    CSetSprite
    CSetPlayerSprite
    CRequestNewMap
    CMapData
    CNeedMap
    CMapGetItem
    CMapDropItem
    CMapRespawn
    CMapReport
    COpenMaps
    CKickPlayer
    CMutePlayer
    CBanPlayer
    CRequestPlayerData
    CRequestPlayerStats
    CRequestSpellCooldown
    CRequestEditMap
    CRequestEditEvent
    CRequestEditItem
    CSaveItem
    CRequestEditNPC
    CSaveNPC
    CRequestEditShop
    CSaveShop
    CRequestEditSpell
    CSaveSpell
    CSetAccess
    CWhosOnline
    CSetMOTD
    CSetSMotd
    CSetGMotd
    CSearch
    CSpells
    CCastSpell
    CLeaveGame
    CSwapInvSlots
    CSwapSpellSlots
    CSwapHotbarSlots
    CRequestEditResource
    CSaveResource
    CCheckPing
    CUnequip
    CRequestItems
    CRequestNPCs
    CRequestResources
    CSpawnItem
    CUseStatPoint
    CRequestEditAnimation
    CSaveAnimation
    CRequestAnimations
    CRequestSpells
    CRequestShops
    CRequestLevelUp
    CForgetSpell
    CCloseShop
    CBuyItem
    CSellItem
    CSwapBankSlots
    CDepositItem
    CWithdrawItem
    CCloseBank
    CAdminWarp
    CFixItem
    CTradeRequest
    CAcceptTradeRequest
    CDeclineTradeRequest
    CCanTrade
    CTradeItem
    CUntradeItem
    CHotbarChange
    CPartyMsg
    CGuildCreate
    CGuildChangeAccess
    CGuildInvite
    CAcceptGuild
    CDeclineGuild
    CAcceptTrade
    CDeclineTrade
    CGuildRemove
    CGuildDisband
    CGuildMsg
    CBreakSpell
    CFriendsList
    CAddFriend
    CRemoveFriend
    CFoesList
    CAddFoe
    CRemoveFoe
    CAcceptParty
    CDeclineParty
    CPartyRequest
    CPartyLeave
    CUpdateData
    CSaveBan
    CRequestEditBans
    CRequestBans
    CSetTitle
    CRequestEditTitles
    CSaveTitle
    CRequestTitles
    CChangeStatus
    CRequestEditMorals
    CSaveMoral
    CRequestMorals
    CRequestEditClasses
    CSaveClass
    CRequestClasses
    CDestoryItem
    CRequestEditEmoticons
    CSaveEmoticon
    CRequestEmoticons
    CCheckEmoticon
    CEventChatReply
    CEvent
    CSwitchesAndVariables
    CRequestSwitchesAndVariables
    
    ' Character editor
    CRequestAllCharacters
    CRequestPlayersOnline
    CRequestExtendedPlayerData
    CCharacterUpdate
    
    CTarget
    
    ' Make sure CMSG_COUNT is below everything else
    CMSG_COUNT
End Enum

Public HandleDataSub(CMSG_COUNT) As Long

' Stats used by Players, NPCs and Classes
Public Enum Stats
    Strength = 1
    Endurance
    Intelligence
    Agility
    Spirit
    
    ' Make sure Stat_Count is below everything else
    Stat_Count
End Enum

' Vitals used by Players, NPCs and Classes
Public Enum Vitals
    HP = 1
    MP
    
    ' Make sure Vital_Count is below everything else
    Vital_Count
End Enum

' Equipment used by Players
Public Enum Equipment
    Weapon = 1
    Body
    Head
    Shield
    Legs
    Hands
    Feet
    Ring1
    Ring2
    Neck
    back
    Accessory1
    Accessory2
    
    ' Make sure Equipment_Count is below everything else
    Equipment_Count
End Enum

' Layers in a map
Public Enum MapLayer
    Ground = 1
    Mask
    Cover
    Fringe
    Roof
    
    ' Make sure Layer_Count is below everything else
    Layer_Count
End Enum

' Sound entities
Public Enum SoundEntity
    seAnimation = 1
    seItem
    seNPC
    seResource
    seSpell
    
    ' Make sure SoundEntity_Count is below everything else
    SoundEntity_Count
End Enum
' Message status
Public Enum Status
    Error = 1
    Correct
    Neutral
    Info_
    
    ' Make sure SoundEntity_Count is below everything else
    Status_Count
End Enum
Public Enum Skills
    Herbalism = 1
    Alchemy
    Farming
    Crafting
    Woodcutting
    Fletching
    Firemaking
    Mining
    Smithing
    Fishing
    Cooking
    Prayer
    
    ' Make sure Skill_Count is below everything else
    Skill_Count
End Enum

Public Enum OptionButtons
    Opt_Music = 1
    Opt_Sound
    Opt_WASD
    Opt_Level
    Opt_Guilds
    Opt_PlayerVitals
    Opt_NpcVitals
    Opt_Title
    Opt_BattleMusic
    Opt_Mouse
    Opt_SwearFilter
    Opt_Weather
    Opt_AutoTile
    Opt_Debug
    Opt_Blood
    
    ' Make sure Opt_Count is below everything else
    Opt_Count
End Enum

Public Enum Proficiency
    Cloth = 1
    Leather
    Mail
    Plate
    Sword
    Dagger
    Bow
    Crossbow
    Mace
    Axe
    Spear
    staff
    
    ' Make sure Proficiency_Count is below everything else
    Proficiency_Count
End Enum

Public Enum MoveRouteOpts
    MoveUp = 1
    MoveDown
    MoveLeft
    MoveRight
    MoveRandom
    MoveTowardsPlayer
    MoveAwayFromPlayer
    StepForward
    StepBack
    Wait100ms
    Wait500ms
    Wait1000ms
    TurnUp
    TurnDown
    TurnLeft
    TurnRight
    Turn90Right
    Turn90Left
    Turn180
    TurnRandom
    TurnTowardPlayer
    TurnAwayFromPlayer
    SetSpeed8xSlower
    SetSpeed4xSlower
    SetSpeed2xSlower
    SetSpeedNormal
    SetSpeed2xFaster
    SetSpeed4xFaster
    SetFreqLowest
    SetFreqLower
    SetFreqNormal
    SetFreqHigher
    SetFreqHighest
    WalkingAnimOn
    WalkingAnimOff
    DirFixOn
    DirFixOff
    WalkThroughOn
    WalkThroughOff
    PositionBelowPlayer
    PositionWithPlayer
    PositionAbovePlayer
    ChangeGraphic
End Enum

' Event Types
Public Enum EventType
    ' Message
    evAddText = 1
    evShowText
    evShowChoices
    ' Game Progression
    evPlayerVar
    evPlayerSwitch
    evSelfSwitch
    ' Flow Control
    evCondition
    evExitProcess
    ' Player
    evChangeItems
    evRestoreHP
    evRestoreMP
    evLevelUp
    evChangeLevel
    evChangeSkills
    evChangeClass
    evChangeSprite
    evChangeGender
    evChangePK
    ' Movement
    evWarpPlayer
    evSetMoveRoute
    ' Character
    evPlayAnimation
    ' Music and Sounds
    evPlayBGM
    evFadeoutBGM
    evPlaySound
    evStopSound
    'Etc...
    evCustomScript
    evSetAccess
    'Shop/Bank
    evOpenBank
    evOpenShop
    'New
    evGiveExp
    evShowChatBubble
    evLabel
    evGotoLabel
    evSpawnNpc
    evFadeIn
    evFadeOut
    evFlashWhite
    evSetFog
    evSetWeather
    evSetTint
    evWait
End Enum
