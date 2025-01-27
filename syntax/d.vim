" Syntax highlighting for Infinity Engine's BAF files.
"
" Author: Alejandro Exojo <suy@badopi.org>

if exists("b:current_syntax")
    finish
endif

" Comments
syntax match dComment /\/\/.*$/

syntax match dOperator /\~/

syntax region dCommentM start=/\/\*/ end=/\*\// contains=NONE

syntax region dString start=/"/ skip=/\\"/ end=/"/ contains=NONE

syntax keyword dKeyword
            \ IF
            \ THEN
            \ END
            \ RESPONSE
            \ OR
            \ Myself
            \ Player1
            \ Player2
            \ Player3
            \ Player4
            \ Player5
            \ Player6
            \ CD_STATE_NOTVALID
            \ SAY
            \ REPLY
            \ EXIT
            \ DO
            \ BEGIN
            \ CHAIN
            \ EXTERN
            \ GOTO
            \ APPEND

syntax keyword dTrigger
            \ Acquired
            \ AttackedBy
            \ Help
            \ Joins
            \ Leaves
            \ ReceivedOrder
            \ Said
            \ TurnedBy
            \ Unusable
            \ Alignment
            \ Allegiance
            \ Class
            \ Exists
            \ General
            \ Global
            \ HP
            \ HPGT
            \ HPLT
            \ LOS
            \ Morale
            \ MoraleGT
            \ MoraleLT
            \ Race
            \ Range
            \ Reputation
            \ ReputationGT
            \ ReputationLT
            \ See
            \ Specifics
            \ Time
            \ TimeOfDay
            \ HitBy
            \ HotKey
            \ TimerExpired
            \ True
            \ Trigger
            \ Die
            \ TargetUnreachable
            \ Delay
            \ NumCreature
            \ NumCreatureLT
            \ NumCreatureGT
            \ ActionListEmpty
            \ HPPercent
            \ HPPercentLT
            \ HPPercentGT
            \ Heard
            \ False
            \ HaveSpell
            \ HaveSpellRES
            \ HaveAnySpells
            \ BecameVisible
            \ GlobalGT
            \ GlobalLT
            \ OnCreation
            \ StateCheck
            \ NotStateCheck
            \ NumTimesTalkedTo
            \ NumberOfTimesTalkedTo
            \ NumTimesTalkedToGT
            \ NumTimesTalkedToLT
            \ Reaction
            \ ReactionGT
            \ ReactionLT
            \ GlobalTimerExact
            \ GlobalTimerExpired
            \ GlobalTimerNotExpired
            \ PartyHasItem
            \ InParty
            \ CheckStat
            \ CheckStatGT
            \ CheckStatLT
            \ RandomNum
            \ RandomNumGT
            \ RandomNumLT
            \ Died
            \ Killed
            \ Entered
            \ Gender
            \ PartyGold
            \ PartyGoldGT
            \ PartyGoldLT
            \ Dead
            \ Opened
            \ Closed
            \ Detected
            \ Reset
            \ Disarmed
            \ Unlocked
            \ OutOfAmmo
            \ HaveUsableWeapon
            \ NumTimesInteracted
            \ NumTimesInteractedGT
            \ NumTimesInteractedLT
            \ BreakingPoint
            \ PickPocketFailed
            \ StealFailed
            \ DisarmFailed
            \ PickLockFailed
            \ HasItem
            \ HasItemType
            \ InteractingWith
            \ InWeaponRange
            \ HasWeaponEquiped
            \ Happiness
            \ HappinessGT
            \ HappinessLT
            \ TimeGT
            \ TimeLT
            \ NumInParty
            \ NumInPartyGT
            \ NumInPartyLT
            \ UnselectableVariable
            \ UnselectableVariableGT
            \ UnselectableVariableLT
            \ Clicked
            \ NumDead
            \ NumDeadGT
            \ NumDeadLT
            \ Detect
            \ Contains

" I don't know why, but nvim complains if I don't split this in two...
syntax keyword dTrigger
            \ OpenState
            \ NumItems
            \ NumItemsGT
            \ NumItemsLT
            \ NumItemsParty
            \ NumItemsPartyGT
            \ NumItemsPartyLT
            \ IsOverMe
            \ AreaCheck
            \ HasItemEquiped
            \ NumCreatureVsParty
            \ NumCreatureVsPartyLT
            \ NumCreatureVsPartyGT
            \ CombatCounter
            \ CombatCounterLT
            \ CombatCounterGT
            \ AreaType
            \ TrapTriggered
            \ PartyMemberDied
            \ OR
            \ InPartySlot
            \ SpellCast
            \ SpellCastRES
            \ InLine
            \ PartyRested
            \ Level
            \ LevelGT
            \ LevelLT
            \ Summoned
            \ GlobalsEqual
            \ GlobalsGT
            \ GlobalsLT
            \ LocalsEqual
            \ LocalsGT
            \ LocalsLT
            \ ObjectActionListEmpty
            \ OnScreen
            \ InActiveArea
            \ SpellCastOnMe
            \ SpellCastOnMeRES
            \ CalanderDay
            \ CalanderDayGT
            \ CalanderDayLT
            \ Name
            \ SpellCastPriest
            \ SpellCastPriestRES
            \ SpellCastInnate
            \ SpellCastInnateRES
            \ IsValidForPartyDialog
            \ IfValidForPartyDialog
            \ IsValidForPartyDialogue
            \ IfValidForPartyDialogue
            \ PartyHasItemIdentified
            \ HasBounceEffects
            \ HasImmunityEffects
            \ HasItemSlot
            \ PersonalSpaceDistance
            \ InMyGroup
            \ RealGlobalTimerExact
            \ RealGlobalTimerExpired
            \ RealGlobalTimerNotExpired
            \ NumInPartyAlive
            \ NumInPartyAliveGT
            \ NumInPartyAliveLT
            \ Kit
            \ IsGabber
            \ IsActive
            \ CharName
            \ FallenRanger
            \ FallenPaladin
            \ InventoryFull
            \ HasItemEquipedReal
            \ XP
            \ XPGT
            \ XPLT
            \ G
            \ GGT
            \ GLT
            \ ModalState
            \ InMyArea
            \ TookDamage
            \ DamageTaken
            \ DamageTakenGT
            \ DamageTakenLT
            \ Difficulty
            \ DifficultyGT
            \ DifficultyLT
            \ InPartyAllowDead
            \ AreaCheckObject
            \ ActuallyInCombat
            \ WalkedToTrigger
            \ LevelParty
            \ LevelPartyGT
            \ LevelPartyLT
            \ HaveSpellParty
            \ AmIInWatchersKeepPleaseIgnoreTheLackOfApostophe
            \ InWatchersKeep
            \ AreaCheckAllegiance
            \ IsTouchGUI
            \ HasDLC
            \ BeenInParty
            \ NextTriggerObject
            \ ExtendedStateCheck
            \ CheckSpellState
            \ NearLocation
            \ NearSavedLocation
            \ Switch
            \ IsWeaponRanged
            \ ButtonDisabled
            \ HasItemCategory
            \ NightmareModeOn
            \ OriginalClass
            \ CutSceneBroken
            \ WeaponEffectiveVs
            \ INI
            \ reserved1_40EE
            \ reserved2_40EF
            \ reserved3_40F0
            \ ModalStateObject
            \ WeaponCanDamage
            \ NumKilledByParty
            \ NumKilledByPartyGT
            \ NumKilledByPartyLT
            \ CanTurn
            \ BitCheck
            \ CanEquipRanged
            \ ImmuneToSpellLevel
            \ StoryModeOn
            \ IsForcedRandomEncounterActive
            \ reserved_40FC
            \ ClassLevel
            \ ClassLevelGT
            \ ClassLevelLT
            \ SecretDoorDetected
            \ reserved_4101
            \ HaveKnownSpell
            \ HaveKnownSpellRES
            \ CheckItemSlot
            \ CurrentAmmo
            \ reserved_4105
            \ reserved_4106
            \ reserved_4107
            \ reserved_4108
            \ reserved_4109
            \ Proficiency
            \ ProficiencyGT
            \ ProficiencyLT

syntax keyword dAction
            \ ActionOverride
            \ Activate
            \ ActivatePortalCursor
            \ AddAreaFlag
            \ AddAreaType
            \ AddExperienceParty
            \ AddExperiencePartyCR
            \ AddExperiencePartyGlobal
            \ AddFamiliar
            \ AddFeat
            \ AddGlobals
            \ AddHP
            \ AddJournalEntry
            \ AddKit
            \ AddMapNote
            \ AddMapNoteColor
            \ AddPartyexperience
            \ AddSpecialAbility
            \ AddStoreItem
            \ AddSuperKit
            \ AddWayPoint
            \ AddWorldmapAreaFlag
            \ AddXP2DA
            \ AddXPObject
            \ AddXPVar
            \ AddXPWorth
            \ AddXPWorthOnce
            \ AdvanceTime
            \ AllowAreaResting
            \ Ally
            \ AmbientActivate
            \ AnkhegEmerge
            \ AnkhegHide
            \ ApplyDamage
            \ ApplyDamagePercent
            \ ApplySpell
            \ ApplySpellRES
            \ AttachTransitionToDoor
            \ Attack
            \ AttackNoSound
            \ AttackOneRound
            \ AttackReevaluate
            \ BackStab
            \ BanterBlockFlag
            \ BanterBlockTime
            \ BashDoor
            \ BattleSong
            \ Berserk
            \ BitClear
            \ BitGlobal
            \ BitSet
            \ BreakInstants
            \ BuyStuff
            \ CallLightning
            \ Calm
            \ ChangeAIScript
            \ ChangeAIType
            \ ChangeAlignment
            \ ChangeAnimation
            \ ChangeAnimationNoEffect
            \ ChangeClass
            \ ChangeColor
            \ ChangeCurrentScript
            \ ChangeDialog
            \ ChangeEnemyAlly
            \ ChangeFaction
            \ ChangeGender
            \ ChangeGeneral
            \ ChangeRace
            \ ChangeSpecifics
            \ ChangeStat
            \ ChangeStoreMarkup
            \ ChangeTeam
            \ ChangeTileState
            \ ChunkCreature
            \ ClearActions
            \ ClearAllActions
            \ ClearPartyEffects
            \ ClearSpriteEffects
            \ ClickLButtonObject
            \ ClickLButtonPoint
            \ ClickRButtonObject
            \ ClickRButtonPoint
            \ CloseDoor
            \ ContainerEnable
            \ Continue
            \ ContinueGame
            \ CopyGroundPilesTo
            \ CreateCreature
            \ CreateCreatureAtFeet
            \ CreateCreatureAtLocation
            \ CreateCreatureCopyPoint
            \ CreateCreatureDoor
            \ CreateCreatureEffect
            \ CreateCreatureImpassable
            \ CreateCreatureImpassableAllowOverlap
            \ CreateCreatureImpassableAllowOverlapEffect
            \ CreateCreatureImpassableEffect
            \ CreateCreatureObject
            \ CreateCreatureObjectCopy
            \ CreateCreatureObjectCopyEffect
            \ CreateCreatureObjectDoor
            \ CreateCreatureObjectEffect
            \ CreateCreatureObjectOffScreen
            \ CreateCreatureObjectOffset
            \ CreateCreatureOffScreen
            \ CreateItem
            \ CreateItemGlobal
            \ CreateItemNumGlobal
            \ CreateVisualEffect
            \ CreateVisualEffectObject
            \ CutAllowScripts
            \ CutSceneId
            \ Damage
            \ DayNight
            \ Deactivate
            \ DeathMatchPositionArea
            \ DeathMatchPositionGlobal
            \ DeathMatchPositionLocal
            \ Debug
            \ DebugOutput
            \ DeleteJournalEntry
            \ DemoEnd
            \ DestroyAllDestructableEquipment
            \ DestroyAllEquipment
            \ DestroyAllFragileEquipment
            \ DestroyGold
            \ DestroyGroundPiles
            \ DestroyItem
            \ DestroyItemObject
            \ DestroyPartyGold
            \ DestroyPartyItem
            \ DestroySelf
            \ DetectSecretDoor
            \ Dialog
            \ DialogForceInterrupt
            \ DialogInterrupt
            \ Dialogue
            \ DialogueForceInterrupt
            \ DialogueInterrupt
            \ DisableAI
            \ DisableFogDither
            \ DisableSpriteDither
            \ DisplayMessage
            \ DisplayString
            \ DisplayStringHead
            \ DisplayStringHeadDead
            \ DisplayStringHeadNoLog
            \ DisplayStringHeadOwner
            \ DisplayStringNoName
            \ DisplayStringNoNameDlg
            \ DisplayStringNoNameHead
            \ DisplayStringPoint
            \ DisplayStringPointLog
            \ DisplayStringWait
            \ DoubleClickLButtonObject
            \ DoubleClickLButtonPoint
            \ DoubleClickRButtonObject
            \ DoubleClickRButtonPoint
            \ DropInventory
            \ DropInventoryEX
            \ DropInventoryEXExclude
            \ DropItem
            \ EnableFogDither
            \ EnablePortalTravel
            \ EnableSpriteDither
            \ EndCredits
            \ EndCutSceneMode
            \ EndGame
            \ Enemy
            \ EquipItem
            \ EquipItemEx
            \ EquipMostDamagingMelee
            \ EquipRanged
            \ EquipWeapon
            \ EraseJournalEntry
            \ EscapeArea
            \ EscapeAreaDestroy
            \ EscapeAreaMove
            \ EscapeAreaNoSee
            \ EscapeAreaObject
            \ EscapeAreaObjectMove
            \ ExitPocketPlane
            \ ExpansionEndCredits
            \ Explore
            \ ExploreMapChunk
            \ ExportParty
            \ Face
            \ FaceObject
            \ FaceSavedLocation
            \ FadeFromBlack
            \ FadeFromColor
            \ FadeToAndFromColor
            \ FadeToBlack
            \ FadeToColor
            \ FakeEffectExpiryCheck
            \ FillSlot
            \ FinalSave
            \ FindTraps
            \ FixEngineRoom
            \ FloatMessage
            \ FloatMessageFixed
            \ FloatMessageFixedRnd
            \ FloatMessageRnd
            \ FloatRebus
            \ FlyToPoint
            \ Follow
            \ FollowCreature
            \ FollowObjectFormation
            \ FollowPath
            \ ForceAIScript
            \ ForceAttack
            \ ForceFacing
            \ ForceHide
            \ ForceLeaveAreaLUA
            \ ForceMarkedSpell
            \ ForceRandomEncounter
            \ ForceRandomEncounterEntry
            \ ForceSpell
            \ ForceSpellPoint
            \ ForceSpellPointRES
            \ ForceSpellPointRange
            \ ForceSpellPointRangeRES
            \ ForceSpellRES
            \ ForceSpellRESNoFeedback
            \ ForceSpellRange
            \ ForceSpellRangeRES
            \ ForceUseContainer
            \ Formation
            \ FullHeal
            \ FullHealEx
            \ GameOver
            \ GenerateModronMaze
            \ GeneratePartyMember
            \ GetItem
            \ GiveExperience
            \ GiveGoldForce
            \ GiveItem
            \ GiveItemCreate
            \ GiveObjectGoldGlobal
            \ GiveOrder
            \ GivePartyAllEquipment
            \ GivePartyGold
            \ GivePartyGoldGlobal
            \ GlobalANDGlobal
            \ GlobalAddGlobal
            \ GlobalBAND
            \ GlobalBANDGlobal
            \ GlobalBOR
            \ GlobalBORGlobal
            \ GlobalBitGlobal
            \ GlobalMAX
            \ GlobalMAXGlobal
            \ GlobalMIN
            \ GlobalMINGlobal
            \ GlobalORGlobal
            \ GlobalSHL
            \ GlobalSHLGlobal
            \ GlobalSHR
            \ GlobalSHRGlobal
            \ GlobalSet
            \ GlobalSetGlobal
            \ GlobalShout
            \ GlobalSubGlobal
            \ GlobalXOR
            \ GlobalXORGlobal
            \ GoToStartScreen
            \ GroupAttack
            \ Help
            \ Hide
            \ HideAreaOnMap
            \ HideCreature
            \ HideGUI
            \ IncInternal
            \ IncMoraleAI
            \ IncrementChapter
            \ IncrementExtraProficiency
            \ IncrementGlobal
            \ IncrementGlobalOnce
            \ IncrementGlobalOnceEx
            \ IncrementInternal
            \ IncrementKillStat
            \ IncrementProficiency
            \ Interact
            \ JoinParty
            \ JoinPartyEx
            \ JoinPartyOverride
            \ JournalEntryDone
            \ JumpToObject
            \ JumpToPoint
            \ JumpToPointInstant
            \ JumpToSavedLocation
            \ Kill
            \ KillFloatMessage
            \ LayHands
            \ Leader
            \ LeaveArea
            \ LeaveAreaLUA
            \ LeaveAreaLUAEntry
            \ LeaveAreaLUAPanic
            \ LeaveAreaLUAPanicEntry
            \ LeaveAreaName
            \ LeaveParty
            \ Lock
            \ LockScroll
            \ Log
            \ MakeGlobal
            \ MakeGlobalOverride
            \ MakeUnselectable
            \ MarkObject
            \ MarkSpellAndObject
            \ MatchHP
            \ MoraleDec
            \ MoraleInc
            \ MoraleSet
            \ MoveBetweenAreas
            \ MoveBetweenAreasEffect
            \ MoveContainerContents
            \ MoveCursorPoint
            \ MoveGlobal
            \ MoveGlobalObject
            \ MoveGlobalObjectOffScreen
            \ MoveGlobalsTo
            \ MoveToCampaign
            \ MoveToCenterOfScreen
            \ MoveToExpansion
            \ MoveToObject
            \ MoveToObjectFollow
            \ MoveToObjectNoInterrupt
            \ MoveToObjectOffset
            \ MoveToObjectUntilSee
            \ MoveToOffset
            \ MoveToPoint
            \ MoveToPointNoInterrupt
            \ MoveToPointNoRecticle
            \ MoveToSavedLocation
            \ MoveToSavedLocationn
            \ MoveViewObject
            \ MoveViewPoint
            \ MoveViewPointUntilDone
            \ MultiPlayerSync
            \ NIDSpecial1
            \ NIDSpecial10
            \ NIDSpecial11
            \ NIDSpecial12
            \ NIDSpecial2
            \ NIDSpecial3
            \ NIDSpecial4
            \ NIDSpecial5
            \ NIDSpecial6
            \ NIDSpecial7
            \ NIDSpecial8
            \ NIDSpecial9
            \ NoAction
            \ OpenDoor
            \ OverrideAreaDifficulty
            \ Panic
            \ PauseGame
            \ PermanentStatChange
            \ PickLock
            \ PickPockets
            \ PickUpItem
            \ PlayBardSong
            \ PlayDead
            \ PlayDeadInterruptable
            \ PlayDeadInterruptible
            \ PlaySequence
            \ PlaySequenceGlobal
            \ PlaySequenceTimed
            \ PlaySong
            \ PlaySound
            \ PlaySoundNotRanged
            \ PlaySoundPoint
            \ PlaySoundThroughVoice
            \ PlayerDialog
            \ PlayerDialogue
            \ Plunder
            \ Polymorph
            \ PolymorphCopy
            \ PolymorphCopyBase
            \ PolymorphEx
            \ ProtectObject
            \ ProtectPoint
            \ QuitGame
            \ RandomFace
            \ RandomFly
            \ RandomRun
            \ RandomRunContinuous
            \ RandomTurn
            \ RandomWalk
            \ RandomWalkContinuous
            \ RandomWalkContinuousTime
            \ RandomWalkTime
            \ RealSetGlobalTimer
            \ ReallyForceSpell
            \ ReallyForceSpellDead
            \ ReallyForceSpellDeadRES
            \ ReallyForceSpellLevel
            \ ReallyForceSpellLevelAnywhere
            \ ReallyForceSpellPoint
            \ ReallyForceSpellPointRES
            \ ReallyForceSpellRES
            \ Recoil
            \ RegainPaladinHood
            \ RegainRangerHood
            \ RemoveAreaFlag
            \ RemoveAreaType
            \ RemoveFamiliar
            \ RemoveMapNote
            \ RemovePaladinHood
            \ RemoveRangerHood
            \ RemoveSpell
            \ RemoveSpellRES
            \ RemoveStoreItem
            \ RemoveTraps
            \ RemoveWorldmapAreaFlag
            \ ReputationInc
            \ ReputationSet
            \ ResetFogOfWar
            \ ResetJoinRequests
            \ ResetMorale
            \ ResetPlayerAI
            \ Rest
            \ RestNoSpells
            \ RestParty
            \ RestPartyEx
            \ RestUntilHealed
            \ RestorePartyLocations
            \ RestoreZoomLevel
            \ ReturnToSavedLocation
            \ ReturnToSavedLocationDelete
            \ ReturnToSavedPlace
            \ ReturnToStartLoc
            \ RevealAreaOnMap
            \ RunAwayFrom
            \ RunAwayFromEx
            \ RunAwayFromNoInterrupt
            \ RunAwayFromNoInterruptNoLeaveArea
            \ RunAwayFromNoLeaveArea
            \ RunFollow
            \ RunToObject
            \ RunToObjectFollow
            \ RunToPoint
            \ RunToPointNoRecticle
            \ RunToSavedLocation
            \ RunToSavedPlace
            \ RunningAttack
            \ RunningAttackNoSound
            \ SG
            \ SaveGame
            \ SaveLocation
            \ SaveObjectLocation
            \ SavePlace
            \ ScreenShake
            \ SelectWeaponAbility
            \ SendTrigger
            \ SetAnimState
            \ SetApparentNameSTRREF
            \ SetAreaFlags
            \ SetAreaRestFlag
            \ SetAreaScript
            \ SetBeenInPartyFlags
            \ SetBestWeapon
            \ SetCorpseEnabled
            \ SetCreatureAreaFlag
            \ SetCriticalPathObject
            \ SetCursorState
            \ SetCutSceneBreakable
            \ SetCutSceneLite
            \ SetDialog
            \ SetDialogue
            \ SetDialogueRange
            \ SetDoorFlag
            \ SetDoorLocked
            \ SetEncounterProbability
            \ SetExtendedNight
            \ SetFaction
            \ SetGabber
            \ SetGlobal
            \ SetGlobalRandom
            \ SetGlobalRandomPlus
            \ SetGlobalTimer
            \ SetGlobalTimerOnce
            \ SetGlobalTimerRandom
            \ SetGlobalTint
            \ SetHP
            \ SetHPPercent
            \ SetHomeLocation
            \ SetInternal
            \ SetInterrupt
            \ SetItemFlags
            \ SetLeavePartyDialogFile
            \ SetLeavePartyDialogueFile
            \ SetMarkedSpell
            \ SetMasterArea
            \ SetMazeEasier
            \ SetMazeHarder
            \ SetMoraleAI
            \ SetMusic
            \ SetMyTarget
            \ SetName
            \ SetNamelessClass
            \ SetNamelessDeath
            \ SetNamelessDeathParty
            \ SetNamelessDisguise
            \ SetNoOneOnTrigger
            \ SetNoWaitX
            \ SetNumTimesTalkedTo
            \ SetPlayerSound
            \ SetPortalCursor
            \ SetQuestDone
            \ SetRegularNameSTRREF
            \ SetRenderable
            \ SetRestEncounterChance
            \ SetRestEncounterProbabilityDay
            \ SetRestEncounterProbabilityNight
            \ SetSavedLocation
            \ SetSavedLocationPoint
            \ SetScriptName
            \ SetSequence
            \ SetStartPos
            \ SetTeam
            \ SetTeamBit
            \ SetTextColor
            \ SetToken
            \ SetTokenGlobal
            \ SetTokenObject
            \ SetVisualRange
            \ SetWorldmap
            \ SetZoomViewport
            \ SetupWish
            \ SetupWishObject
            \ Shout
            \ ShowFirstTimeHelp
            \ SinisterPoof
            \ SmallWait
            \ SmallWaitRandom
            \ SoundActivate
            \ SpawnPtActivate
            \ SpawnPtDeactivate
            \ SpawnPtSpawn
            \ Spell
            \ SpellCastEffect
            \ SpellHitEffectPoint
            \ SpellHitEffectSprite
            \ SpellNoDec
            \ SpellNoDecRES
            \ SpellPoint
            \ SpellPointNoDec
            \ SpellPointNoDecRES
            \ SpellPointRES
            \ SpellRES
            \ SpellWait
            \ StartCombatCounter
            \ StartCutScene
            \ StartCutSceneEx
            \ StartCutSceneMode
            \ StartCutScenePST
            \ StartDialog
            \ StartDialogInterrupt
            \ StartDialogNoName
            \ StartDialogNoSet
            \ StartDialogNoSetInterrupt
            \ StartDialogOverride
            \ StartDialogOverrideInterrupt
            \ StartDialogue
            \ StartDialogueInterrupt
            \ StartDialogueNoSet
            \ StartDialogueNoSetInterrupt
            \ StartMovie
            \ StartMusic
            \ StartRainNow
            \ StartRandomTimer
            \ StartSong
            \ StartStore
            \ StartTimer
            \ StateOverrideFlag
            \ StateOverrideTime
            \ StaticPalette
            \ StaticSequence
            \ StaticStart
            \ StaticStop
            \ StickySinisterPoof
            \ StopJoinRequests
            \ StopMoving
            \ StorePartyLocations
            \ StoreZoomLevel
            \ Swing
            \ SwingOnce
            \ TakeCreatureItems
            \ TakeItemListParty
            \ TakeItemListPartyNum
            \ TakeItemReplace
            \ TakeObjectGoldGlobal
            \ TakePartyGold
            \ TakePartyItem
            \ TakePartyItemAll
            \ TakePartyItemNum
            \ TakePartyItemRange
            \ TeleportParty
            \ TextScreen
            \ TimedMoveToPoint
            \ TomsStringDisplayer
            \ TransferInventory
            \ TransformItem
            \ TransformItemAll
            \ TransformPartyItem
            \ TransformPartyItemAll
            \ TriggerActivation
            \ TriggerWalkTo
            \ Turn
            \ TurnAMT
            \ UnHide
            \ UndoExplore
            \ UnhideGUI
            \ Unlock
            \ UnlockScroll
            \ UseContainer
            \ UseDoor
            \ UseItem
            \ UseItemAbility
            \ UseItemPoint
            \ UseItemPointSlot
            \ UseItemSlot
            \ UseItemSlotAbility
            \ VEquip
            \ VerbalConstant
            \ VerbalConstantHead
            \ Wait
            \ WaitAnimation
            \ WaitForVoiceChannel
            \ WaitRandom
            \ WaitSync
            \ WaitWait
            \ Weather
            \ XEquipItem
            \ ZoomLock


highlight link dComment				Comment
highlight link dCommentM			Comment
highlight link dString				String
highlight link dKeyword				Keyword
highlight link dTrigger				Function
highlight link dAction				Statement
highlight link dOperator			Operator

let b:current_syntax = "d"

