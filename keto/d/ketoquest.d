
//    is drinking sound


// Global("PGBardCompoDone","GLOBAL",1) to get rid of various bard competition types
//

BEGIN PGKMOM
BEGIN PGKDAD


BEGIN ~PGULGA~

IF ~~ THEN BEGIN UlgaDefault
SAY @3000
END




// Various talks with bartenders in Amn.

// For UHINN01

CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)
Global("PGKetoInviteVinPt1", "GLOBAL", 0)~ THEN UHINN01 KetoInviteVincenzosPt1
@3001 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1) SetGlobal("PGKetoInviteVinPt1", "GLOBAL", 1) SetGlobalTimer("PGKetoInviteVinTimer","GLOBAL",400)~
== FWKetoJ @3002
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3003
== FWKetoJ IF ~!Dead("uhinn02")~ THEN  @3004
== FWKETOJ IF ~!Dead("uhinn02")~ THEN @3005 //Very deliberate,
== FWKETOJ IF ~!Dead("uhinn02")~ THEN @3006 // Even more deliberate.
== FWKETOJ IF ~!Dead("uhinn02")~ THEN @3007 // Super sing-songy at this point.
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3008
== FWKetoJ IF ~!Dead("uhinn02")~ THEN @3009
== UHINN01 IF ~!Dead("uhinn02")~ THEN @3010
== UHINN01 @3011
== FWKetoJ @3012
== UHINN01 @3013
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3014
== FWKetoJ IF ~!Dead("uhinn02")~ THEN  @3015
== FWKETOJ @3016
== JANJ IF ~InParty("Jan")~ THEN @3017 //Soundset abuse.
== FWKetoJ @3018
END
++ @3019 EXTERN FWKETOJ KetoSoYouAre
++ @3020 EXTERN FWKETOJ KetoCantTakeAnywhere
++ @3021 EXTERN FWKETOJ KetoYoureSensitive
++ @3022 EXTERN FWKETOJ KetoCantTakeAnywhere
++ @3023 EXTERN FWKETOJ KetoStuck

APPEND FWKETOJ

IF ~~ THEN KetoSoYouAre
SAY @3024
IF ~~ THEN GOTO KetoInviteVincenzosPt2
END

IF ~~ THEN KetoStuck
SAY @3025
IF ~~ THEN GOTO KetoInviteVincenzosPt2
END

IF ~~ THEN KetoCantTakeAnywhere
SAY @3026
IF ~~ THEN GOTO KetoInviteVincenzosPt2
END

IF ~~ THEN KetoYoureSensitive
SAY @3027
IF ~~ THEN GOTO KetoInviteVincenzosPt2
END

END

// Was: IF ~InParty("Keto") Global("PGKetoInviteVinPt1", "GLOBAL", 1)~ THEN ... but since we're GOTOing it, we don't need that, right?

CHAIN FWKetoJ KetoInviteVincenzosPt2
@3028 DO ~SetGlobal("PGKetoInviteVinPt1", "GLOBAL", 2)~
==  UHINN01 @3029
== FWKetoJ @3030
==  UHINN01 @3031
== FWKetoJ @3032
==  UHINN01 @3033
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3034
== UHINN01 IF ~!Dead("uhinn02")~ THEN @3035
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3036
== FWKetoJ @3037
== UHINN01 @3038
== UHINN02 IF ~!Dead("uhinn02")~ THEN @3039
== UHINN01 IF ~!Dead("uhinn02")~ THEN @3040
== UHINN01 @3041 DO ~SetGlobal("PGKetoGotInviteFromVince", "GLOBAL", 1)
GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)
SetGlobalTimer("PGKetoContestTalkTimer","GLOBAL",ONE_DAY)~
END
++ @3042 EXTERN FWKETOJ KetoBossy
++ @3043 EXTERN FWKETOJ KetoChanceLifetime2
++ @3044 EXTERN FWKETOJ KetoYesPrize
++ @3045 EXTERN FWKETOJ KetoButBut
+ ~Class(Player1, BARD_ALL)~ + @3046 EXTERN FWKETOJ KetoDontBeJealousPooky
++ @3047 EXTERN FWKETOJ KetoIfYouCanReadThisBlockYouAreTooClose

APPEND FWKETOJ

IF ~~ THEN KetoBossy
SAY @3048
=
@3049
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoChanceLifetime2
SAY @3050  // same as before
=
@3051 
++ @3052 GOTO KetoQuestHappy
++ @3053 GOTO KetoMoneySnark
++ @3054 GOTO KetoUnderstandsKinda
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3055 GOTO KetoUnderstandsTotally
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3056 GOTO KetoArtisticSelfishness
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3057 GOTO KetoNotKidding
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3058 GOTO KetoSelfish2
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3059 GOTO KetoWaste
++ @3060 GOTO KetoWalksOut
END

IF ~~ THEN KetoYesPrize
SAY @3061
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoButBut
SAY @3062
=
@3063
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoDontBeJealousPooky
SAY @3064
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoIfYouCanReadThisBlockYouAreTooClose
SAY @3065
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoArtisticSelfishness
SAY @3066
IF ~~ GOTO KetoChanceLifetime2
END

IF ~~ THEN KetoSelfish2
SAY @3067
=
@3068
=
@3069
IF ~~ DO ~DestroyItem("PGKScr1") SetGlobal("PGKetoWentAlone","GLOBAL",1) SetGlobalTimer("PGKetoReturnsTimer","GLOBAL",THREE_DAYS) LeaveParty() EscapeAreaMove("AR1105",705,542,7)~
EXIT
END

END


// EscapeAreaMove("AR0903",852,1235,7)

// MoveGlobal("AR1105","Keto",[705.542])

// More of Vince, just some brief bar chat for when Keto has the invite

CHAIN
IF WEIGHT #-2 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 1)
Global("PGKetoPreContestVince1", "GLOBAL", 0)~ THEN UHINN01 KetoChatPreContestVincenzo1
@3070 DO ~SetGlobal("PGKetoPreContestVince1", "GLOBAL", 1)~
== FWKetoJ @3071
EXIT


// For TRINNK01
CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN TRINNK01 KetoInviteTrademeet
@3072 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3073
=
@3074
== TRINNK01 @3075
== FWKetoJ @3076
== TRINNK01 @3077
== FWKetoJ @3078
= @3079
== TRINNK01 @3080
== FWKetoJ @3081
== TRINNK01 IF ~Global("geniesgone","GLOBAL",0)~ THEN @3082
== TRINNK01 IF ~Global("geniesgone","GLOBAL",1)~ THEN @3083
== TRINNK01 @3084 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== FWKetoJ @3085
END
++ @3086 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3089 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1



//For FFBART
CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN FFBART KetoInviteFiveFlagons
@3093 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3094
== FFBART @3095
== FWKetoJ @3096
== FFBART @3097
== FWKetoJ @3098
== FFBART @3099
=
@3100
== FWKetoJ @3101
== FFBART @3102 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== FWKetoJ @3103
END
++ @3086 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3089 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1

//For SEVBAR01
CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN SEVBAR01 KetoInviteSevenVales
@3104 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3105
== SEVBAR01 @3106
=
@3107
== FWKetoJ @3108
== SEVBAR01 @3109
== FWKetoJ @3110
== SEVBAR01 @3111
== FWKetoJ @3112
== SEVBAR01 @3113
=
@3114
=
@3115 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== FWKetoJ @3116
END
++ @3086 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3089 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1


//For THUMB

CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN THUMB KetoInviteSeasBounty
@3117 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3118 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== THUMB @3119
== FWKetoJ @3120
== THUMB @3121 // Err. I can't remember if I meant to type 'ass' or if that is supposed to be 'class.'
== FWKetoJ @3122
END
++ @3086 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3089 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1


// For WINNKEEP

CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN WINNKEEP KetoInviteMithrest
@3123 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3124
== WINNKEEP @3125
== FWKetoJ @3126
== WINNKEEP @3127
== FWKetoJ @3128
== WINNKEEP @3129
== FWKetoJ @3130
== WINNKEEP @3131 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== FWKetoJ @3116
END
++ @3086 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3089 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1

// For BERNARD

CHAIN
IF WEIGHT #-1 ~RealGlobalTimerExpired("PGKetoQuestTimer","GLOBAL")
InParty("Keto")
See("Keto")
Global("PGKetoInvite", "GLOBAL", 0)~ THEN BERNARD KetoInviteCC
@3132 DO ~SetGlobal("PGKetoInvite", "GLOBAL", 1)~
== FWKetoJ @3133
== BERNARD @3134
== FWKetoJ @3135
== VICONIJ IF ~IsValidForPartyDialogue("Viconia")~ THEN @3136
== FWKetoJ @3137
== BERNARD @3138
== FWKetoJ @3139
== BERNARD @3140
== FWKetoJ @3141 DO ~GiveItemCreate("PGKScr1", "Keto", 1, 0, 0)~
== BERNARD @3142
== FWKetoJ @3143
END
++ @3144 EXTERN FWKETOJ KetoCritic
++ @3087 EXTERN FWKETOJ KetoStrangePeople
++ @3088 EXTERN FWKETOJ KetoAppreciated
++ @3145 EXTERN FWKETOJ KetoPessimist
++ @3090 EXTERN FWKETOJ KetoHurrying
++ @3091 EXTERN FWKETOJ KetoBigSurprise
++ @3092 EXTERN FWKETOJ KetoReadsInvite1

APPEND FWKETOJ

IF ~~ THEN KetoCritic
SAY @3146
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoStrangePeople
SAY @3147
=
@3148
++ @3149 GOTO KetoRightSock
++ @3150 GOTO KetoLeftSock
++ @3151 GOTO KetoRuder
++ @3152 GOTO KetoUseful
++ @3153 GOTO KetoNotAsMuch
END

IF ~~ THEN KetoRightSock
SAY @3154
++ @3155 GOTO KetoLearnSomethingNew
++ @3156 GOTO KetoGladYoureInterested
++ @3157 GOTO KetoHarHar
END

IF ~~ THEN KetoLeftSock
SAY @3158
++ @3156 GOTO KetoGladYoureInterested
++ @3159 GOTO KetoJustAsWell
++ @3160 GOTO KetoHarHar
END

IF ~~ THEN KetoLearnSomethingNew
SAY @3161
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoGladYoureInterested
SAY @3162
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoHarHar
SAY @3163
= @3164
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoJustAsWell
SAY @3165
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoRuder
SAY @3166
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoUseful
SAY @3167
=
@3168
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoNotAsMuch
SAY @3169
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoAppreciated
SAY @3170
=
@3171
=
@3172
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoPessimist
SAY @3173
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoHurrying
SAY @3174
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoBigSurprise
SAY @3175
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoReadsInvite1
SAY @3176
=
@3177
++ @3178 GOTO KetoYoureRight
++ @3179 GOTO KetoReadsInvite2
++ @3180 GOTO KetoAddressedToMe
++ @3181 GOTO KetoYoureRight
END

IF ~~ THEN KetoYoureRight
SAY @3182
IF ~~ GOTO KetoReadsInvite2
END

IF ~~ THEN KetoAddressedToMe
SAY @3183
IF ~~ GOTO KetoReadsInvite1
END

IF ~~ THEN KetoReadsInvite2
SAY @3184
=
@3185

// Cute, but... no. ++ ~"You have been selected... " Isn't that how letters start when someone is trying to sell you a subscription to 'Scrivener's Tales Monthly'?~ GOTO KetoWinner
++ @3186 + KetoGetALoadOf
++ @3187 + KetoCutItOut
++ @3188 + KetoShaking
END

/*
Cute, but, no.
IF ~~ THEN KetoWinner
SAY ~No, those read, "You May Already Be A Winner!" This is completely different.~
== GOTO KetoGetALoadOf
END
*/

IF ~~ THEN KetoGetALoadOf
SAY @3189
IF ~~ GOTO KetoReadsInvite3
END

IF ~~ THEN KetoCutItOut
SAY @3190
IF ~~ GOTO KetoGetALoadOf
END

IF ~~ THEN KetoShaking
SAY @3191 // gulp?
= @3192
=
@3193 // (another gulp)
=
@3194
IF ~~ GOTO KetoReadsInvite3
END

IF ~~ THEN KetoReadsInvite3
SAY @3195
IF ~~ GOTO KetoReadsInvite4
END

IF ~~ THEN KetoReadsInvite4
SAY @3196
IF ~~ GOTO KetoChanceLifetime
END

IF ~~ THEN KetoChanceLifetime
SAY @3050 
=
@3197
= @3198
++ @3052 GOTO KetoQuestHappy
++ @3199 GOTO KetoMoneySnark
++ @3200 GOTO KetoUnderstandsKinda
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3055 GOTO KetoUnderstandsTotally
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3201 GOTO KetoNotKidding
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3202 GOTO KetoSelfish
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3203 GOTO KetoWaste
++ @3204 GOTO KetoWalksOut
END

IF ~~ THEN KetoQuestHappy
SAY @3205
IF ~~ DO ~SetGlobalTimer("PGKetoHappyTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN KetoMoneySnark
SAY @3206
=
@3207
++ @3208 GOTO KetoTeensyDestiny
++ @3209 GOTO KetoQuestHappy
++ @3210 GOTO KetoCheap
END

IF ~~ THEN KetoTeensyDestiny
SAY @3211
=
@3212
++ @3213 GOTO KetoQuestHappy
IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3214 GOTO KetoSelfish
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @3215 GOTO KetoWaste
++ @3216 GOTO KetoUnderstandsKinda
++ @3217 GOTO KetoWalksOut2
END

// XXX Do we want a GivePartyAllEquipment on this?

IF ~~ THEN KetoCheap
SAY @3218
=
@3219
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN KetoUnderstandsKinda
SAY @3220
=
@3221
=
@3222
IF ~~ DO ~SetGlobalTimer("PGKetoUnhappyTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN KetoUnderstandsTotally
SAY @3223
IF ~~ DO ~SetGlobalTimer("PGKetoHappyTimer","GLOBAL",TWO_DAYS)~ EXIT
END

// XXX Do we want a GivePartyAllEquipment on this?

IF ~~ THEN KetoNotKidding
SAY @3224
=
@3225
=
@3219
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN KetoSelfish
SAY @3226
=
@3227
=
@3228
IF ~~ DO ~DestroyItem("PGKScr1") SetGlobal("PGKetoWentAlone","GLOBAL",1) SetGlobalTimer("PGKetoReturnsTimer","GLOBAL",THREE_DAYS) LeaveParty() EscapeAreaMove("AR1105",705,542,7)~ EXIT
END

IF ~~ THEN KetoWaste
SAY @3229
=
@3230
=
@3231
IF ~~ DO ~DestroyItem("PGKScr1") SetGlobal("PGKetoWentAlone","GLOBAL",1)  SetGlobalTimer("PGKetoReturnsTimer","GLOBAL",THREE_DAYS) LeaveParty() EscapeAreaMove("AR1105",705,542,7)~ EXIT
END

IF ~~ THEN KetoWalksOut
SAY @3232
=
@3225
=
@3219
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN KetoWalksOut2
SAY @3232
=
@3233
=
@3219
IF ~~ DO ~LeaveParty() EscapeArea()~ EXIT
END

/////////////////////////////////FollowUp If Party hasn't gone to UH by the end of the timer

IF WEIGHT #-999 ~Global("KetoNoWannaLeave", "GLOBAL", 2)~ whydidyouleaveumar
SAY @3234
= @3235
IF ~~ DO ~SetGlobal("KetoNoWannaLeave", "GLOBAL", 3)
ActionOverride("PGLYRICA",DestroySelf())
ActionOverride("PGBARRY",DestroySelf())
ActionOverride("PGPENNY",DestroySelf())
ActionOverride("PGPOPPY",DestroySelf())
ActionOverride("PGGMIONE",DestroySelf())
ActionOverride("PGPRU",DestroySelf())
ActionOverride("PGSTACY",DestroySelf())
ActionOverride("PGJOULES",DestroySelf())
ActionOverride("PGFRILLY",DestroySelf())
ActionOverride("PGTEWES",DestroySelf())
DestroyItem("PGKScr1") LeaveParty() EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Global("PGKetoImpatient", "GLOBAL", 1)
GlobalTimerExpired("PGKetoHappyTimer","GLOBAL")~ THEN KetoQuestImpatient
SAY @3236 
++ @3237 DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoPacified
++ @3238  DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoCantWait
++ @3239  DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoYouNever
END

IF WEIGHT #0 ~Global("PGKetoImpatient", "GLOBAL", 1)
GlobalTimerExpired("PGKetoUnhappyTimer","GLOBAL")~ THEN KetoQuestImpatient
SAY @3240 
= @3241
// I'm starting to get nervous. If we don't leave for the Umar Hills soon, I'll miss the competition in Imnesvale.~
++ @3242 DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoHasToGo
++ @3238 DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoCantWait
++ @3243 DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoYouNever
++ @3239 DO ~SetGlobal("PGKetoImpatient", "GLOBAL", 2)~ GOTO KetoYouNever
END

IF ~~ KetoPacified
SAY @3244
IF ~~ EXIT
END

IF ~~ THEN KetoHasToGo
SAY @3245
=
@3246
=
@3247
IF ~~ DO ~DestroyItem("PGKScr1") SetGlobal("PGKetoWentAlone","GLOBAL",1) SetGlobalTimer("PGKetoReturnsTimer","GLOBAL",THREE_DAYS) LeaveParty() EscapeAreaMove("AR1105",705,542,7)~ EXIT
END

IF ~~ THEN KetoCantWait
SAY @3248
=
@3249
=
@3247
IF ~~ DO ~DestroyItem("PGKScr1") SetGlobal("PGKetoWentAlone","GLOBAL",1) SetGlobalTimer("PGKetoReturnsTimer","GLOBAL",THREE_DAYS) LeaveParty() EscapeAreaMove("AR1105",705,542,7)~ EXIT
END

IF WEIGHT #0 ~Global("PGKetoMeantIt", "GLOBAL", 1)~ KetoYouNever
SAY @3250
=
@3251
=
@3219
IF ~~ DO ~DestroyItem("PGKScr1") LeaveParty() EscapeArea()~ EXIT
END

END

BEGIN PGSCRAP

CHAIN IF ~True()~ THEN PGSCRAP dialogue
@3252
== PGSCRAP IF ~!Dead("ShadeL")~ THEN @32520
== PGSCRAP @3253 DO ~RealSetGlobalTimer("PGKetoQuestOutcomeTimer","GLOBAL",45) EscapeArea()~
EXIT


// Set PGKetoQuestStatus to 3 when everybody's spawned

BEGIN PGTEWES

// Could probably stand to give Tewes some sort of "I am/I am not introducing Jasper" bit, but maybe that's not necessary if she only speaks with DisplayStringHead.

IF ~OR(8)
Dead("PGLyrica")
Dead("PGBarry")
Dead("PGPenny")
Dead("PGPoppy")
Dead("PGGmione")
Dead("PGPru")
Dead("PGJoules")
Dead("PGFrilly")~ corvishomicide
SAY @3254
IF ~~ DO ~ActionOverride("PGLYRICA",EscapeArea())
         ActionOverride("PGBARRY",EscapeArea())
         ActionOverride("PGPENNY",EscapeArea())
         ActionOverride("PGPOPPY",EscapeArea())
         ActionOverride("PGGMIONE",EscapeArea())
         ActionOverride("PGPRU",EscapeArea())
         ActionOverride("PGSTACY",EscapeArea())
         ActionOverride("PGJOULES",EscapeArea())
         ActionOverride("PGFRILLY",EscapeArea())
         EscapeArea()~ EXIT
END


IF ~!IsGabber("Keto")~ greenroom
SAY @3255
+ ~Class(Player1,BARD_ALL) Global("PesteredTewes","LOCALS",0)~ + @3256 DO ~SetGlobal("PesteredTewes","LOCALS",1)~ + ignored
+ ~Class(Player1,BARD_ALL) Global("PesteredTewes","LOCALS",0)~ + @3257 DO ~SetGlobal("PesteredTewes","LOCALS",1)~ + ignored
+ ~Class(Player1,BARD_ALL)~ + @3258 EXIT
IF ~~ EXIT
END

IF ~~ ignored
SAY @3259
IF ~~ EXIT
END

IF ~IsGabber("Keto")
GlobalGT("KetoWinsContest", "GLOBAL",0)~ itsketo
SAY @3260 
+ ~!PartyHasItem("PGKScr1")~ + @3261 + droppedit
+ ~PartyHasItem("PGKScr1")~ + @3262 + hereyouare
++ @3263 + sniff
END

IF ~~ droppedit
SAY @3264
IF ~~ EXIT
END

IF ~~ hereyouare
SAY @3265
IF ~~ DO ~SetGlobal("PGKetoQuestStatus","GLOBAL",4)
TakePartyItemNum("PGKScr1",1)
DestroyItem("PGKScr1")
ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCut0a")~
EXIT
END

IF ~~ sniff
SAY @3266
IF ~~ EXIT
END


//// XXX <CHARNAME>, we need to have a talk and determine the outcome of my quest.


APPEND FWKETOJ
IF WEIGHT #0 ~Global("KetoDecideQuestOutcome", "GLOBAL",1)~ THEN questdecide1
SAY @3267  //Start phrase with deep breath.
++ @3268 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide2
IF ~InParty("Minsc")~ THEN REPLY @3269 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ EXTERN MINSCJ ketoquest1
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3270 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide4
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3271 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide5
++ @3272 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide3
++ @3273 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide6
++ @3274 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide7
++ @3275 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide8
++ @3276 DO ~SetGlobal("KetoDecideQuestOutcome", "GLOBAL", 2)~ + questdecide9
END
END

CHAIN MINSCJ ketoquest1
@3277
== FWKETOJ @3278
END
++ @3279 EXTERN FWKETOJ questdecide14
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3280 EXTERN FWKETOJ questdecide15
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3280 EXTERN FWKETOJ questdecide16
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 EXTERN FWKETOJ questdecide12
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 EXTERN FWKETOJ questdecide34
++ @3282 EXTERN FWKETOJ questdecide10
+ ~!Class(Player1, BARD_ALL)~ + @3283 EXTERN FWKETOJ questdecide4
+ ~Class(Player1, BARD_ALL)~ + @3284 EXTERN FWKETOJ questdecide5
++ @3285 EXTERN FWKETOJ questdecide7
++ @3286 EXTERN FWKETOJ questdecide8

APPEND FWKETOJ
IF ~~ questdecide2
SAY @3287
++ @3288 + questdecide10
++ @3289 + questdecide11
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 + questdecide12
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 + questdecide34
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3290 + questdecide4
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3291 + questdecide5
++ @3285 + questdecide7
++ @3292 + questdecide8
++ @3293 + questdecide13
END

IF ~~ questdecide3
SAY @3294
++ @3295 + questdecide14
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3280 + questdecide15
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3280 + questdecide16
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 + questdecide12
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3281 + questdecide34
++ @3282 + questdecide10
IF ~!Class(Player1, BARD_ALL)~ THEN REPLY @3283 + questdecide4
IF ~Class(Player1, BARD_ALL)~ THEN REPLY @3296 + questdecide5
++ @3285 + questdecide7
++ @3286 + questdecide8
END

IF ~~ questdecide4
SAY @3297
= @3298
++ @3299 + questdecide17
++ @3300 + questdecide18
++ @3301 + questdecide19
++ @3302 + questdecide20
++ @3303 + questdecide18
++ @3304 + questdecide8
++ @3305 + questdecide21
END

IF ~~ questdecide5
SAY @3306
=
@3307
++ @3299 + questdecide17
++ @3300 + questdecide18
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3301 + questdecide19
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3301 + questdecide39
++ @3308 + questdecide20
++ @3303 + questdecide18
++ @3304 + questdecide8
++ @3305 + questdecide21
END

IF ~~ questdecide6
SAY @3309
++ @3310 + questdecide17
++ @3285 + questdecide7
++ @3311 + questdecide8
++ @3312 + questdecide22
END


// I really didn't understand the humming thing.

IF ~~ questdecide7
SAY @3313
= @3314
++ @3315 + questdecide26
++ @3316 + questdecide23
++ @3317 + questdecide24
++ @3318 + questdecide25
END

IF ~~ questdecide8
SAY @3319
++ @3320 + questdecide27
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3321 + questdecide28
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3321 + questdecide40
++ @3322 + questdecide29
IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_5%)~ THEN REPLY @3323 + questdecide27
IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_5%)~ THEN REPLY @3324 + questdecide27
IF ~GlobalGT("Chapter", "GLOBAL", %bg2_chapter_4%)~ THEN REPLY @3325 + questdecide27
++ @3326 + questdecide28
END

IF ~~ questdecide9
SAY @3327
=
@3328 //This second line is muttered crossly to herself.) xxx I'm not sure we'll be voicing this deeply...
++ @3329 + questdecide30
++ @3330 + questdecide31
IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_5%)~ THEN REPLY @3331 + questdecide29
IF ~GlobalLT("Chapter", "GLOBAL", %bg2_chapter_5%)~ THEN REPLY @3332 + questdecide29
IF ~GlobalGT("Chapter", "GLOBAL", %bg2_chapter_4%)~ THEN REPLY @3325 + questdecide27
END

IF ~~ questdecide10
SAY @3333
IF ~~ GOTO questdecide17
END

IF ~~ questdecide11
SAY @3334
++ @3335 + questdecide32
++ @3336 + questdecide32
++ @3337 + questdecide32
++ @3338 + questdecide32
++ @3339 + questdecide33
END

IF ~~ questdecide12
SAY @3340
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide13
SAY @3341
++ @3342 + questdecide17
++ @3343 + questdecide35
++ @3344 DO ~SetGlobal("MoteInBhaalspawnsEye", "GLOBAL", 1)~ + questdecide36
END

IF ~~ questdecide14
SAY @3345
IF ~~ GOTO questdecide17
END

IF ~~ questdecide15
SAY @3346
=
@3347
++ @3348 + questdecide17
++ @3349 + questdecide17
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3350 + questdecide37
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3350 + questdecide41
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3351 + questdecide38
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3351 + questdecide42
END

IF ~~ questdecide16
SAY @3352
=
@3353
++ @3348 + questdecide17
++ @3349 + questdecide17
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3350 GOTO questdecide37
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3350 GOTO questdecide41
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3351 GOTO questdecide38
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3351 GOTO questdecide42
END

IF ~~ questdecide17
SAY @3354 
=
@3355 
=
@3356
=
@3357
IF ~Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3358 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ + questdecide43
IF ~!Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3358 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ + questdecide44
IF ~Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3359 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 1)~ + questdecide43
IF ~!Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3359 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 1)~ + questdecide45
IF ~Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3360 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 2)~ + questdecide43
IF ~!Global("MoteInBhaalspawnsEye", "GLOBAL", 1) !Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3360 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 2)~ + questdecide46
IF ~Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3358 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide43
IF ~ Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3359 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide43
IF ~ Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3360  DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide43
IF ~!Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3358 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide47
IF ~ !Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3359 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide47
IF ~ !Global("MoteInBhaalspawnsEye", "GLOBAL", 1) Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3360 DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ + questdecide47
END

IF ~~ questdecide18
SAY @3361
IF ~~ GOTO questdecide17
END

IF ~~ questdecide19
SAY @3362
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END


IF ~~ questdecide20
SAY @3363
IF ~~ GOTO questdecide17
END

IF ~~ questdecide21
SAY @3364
=
@3365
IF ~~ GOTO questdecide17
END

IF ~~ questdecide22
SAY @3366
= @3367
IF ~~ GOTO questdecide17
END

IF ~~ questdecide23
SAY @3368
=
@3369
IF ~~ GOTO questdecide17
END

IF ~~ questdecide24
SAY @3370
=
@3369
IF ~~ GOTO questdecide17
END

IF ~~ questdecide25
SAY @3371
IF ~~ GOTO questdecide17
END

IF ~~ questdecide26
SAY @3372
= @3373
IF ~~ GOTO questdecide17
END

IF ~~ questdecide27
SAY @3374
= @3375
IF ~~ GOTO questdecide17
END

IF ~~ questdecide28
SAY @3376
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide29
SAY @3377
IF ~~ GOTO questdecide17
END

IF ~~ questdecide30
SAY @3378
IF ~~ GOTO questdecide17
END

IF ~~ questdecide31
SAY @3379
IF ~~ GOTO questdecide17
END

IF ~~ questdecide32
SAY @3380
IF ~~ GOTO questdecide17 //Could put in a tier of replies here, but I'm getting tired, and we need to get to 17, anyway.
END

IF ~~ questdecide33
SAY @3381
++ @3382 + questdecide48
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3383 + questdecide49
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3383 + questdecide54
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3384 + questdecide50
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3384 + questdecide55
END

IF ~~ questdecide34
SAY @3385
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide35
SAY @3386
IF ~~ GOTO questdecide17
END

IF ~~ questdecide36
SAY @3387
= @3388
IF ~~ GOTO questdecide17
END

IF ~~ questdecide37
SAY @3389
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide38
SAY @3390
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide39
SAY @3362
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide40
SAY @3391
= @3392
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide41
SAY @3393
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide42
SAY @3390
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END


//You know, this "Stuff gets in <CHARNAME>'s eyes" business seemed much cuter and more like a natural conversation at 3am.
// It's a neat little easter-eggy way to get to the pancakes reference. Plus, I think you needed the reward of writing a distraction. :)

IF ~~ questdecide43
SAY @3394
= @3395
IF ~Global("KetoWinsContest", "GLOBAL", 1)~ THEN REPLY @3396 + questdecide45
IF ~Global("KetoWinsContest", "GLOBAL", 2)~ THEN REPLY @3396 + questdecide46
IF ~Global("KetoWinsContest", "GLOBAL", 3)~ THEN REPLY @3396 + questdecide44
IF ~Global("KetoWinsContest", "GLOBAL", 4)~ THEN REPLY @3396 + questdecide47
IF ~Global("KetoWinsContest", "GLOBAL", 1)~ THEN REPLY @3397 + questdecide56
IF ~Global("KetoWinsContest", "GLOBAL", 2)~ THEN REPLY @3397 + questdecide57
IF ~Global("KetoWinsContest", "GLOBAL", 3)~ THEN REPLY @3397 + questdecide58
IF ~Global("KetoWinsContest", "GLOBAL", 4)~ THEN REPLY @3397 + questdecide59
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3398 + questdecide51
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ THEN REPLY @3398 + questdecide52
END

IF ~~ questdecide44
SAY @3399
= @3400
IF ~~ GOTO questdecide53
END

IF ~~ questdecide45
SAY @3401
IF ~Global("PGKetoNightYoshiSong","GLOBAL",2)~ GOTO questdecide47
IF ~!Global("PGKetoNightYoshiSong","GLOBAL",2)~ GOTO questdecide53
END

IF ~~ questdecide46
SAY @3402
IF ~~ GOTO questdecide53
END

IF ~~ questdecide47
SAY @3403
IF ~~ EXIT
END

IF ~~ questdecide48
SAY @3404
IF ~~ GOTO questdecide17
END

IF ~~ questdecide49
SAY @3405
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide50
SAY @3406
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide51
SAY @3407
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 3)~ EXIT
END

IF ~~ questdecide52
SAY @3407
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide53
SAY @3408
IF ~~ EXIT
END

IF ~~ questdecide54
SAY @3405
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide55
SAY @3406
IF ~~ DO ~SetGlobal("KetoWinsContest", "GLOBAL", 4)~ EXIT
END

IF ~~ questdecide56
SAY @3409
=
@3410
IF ~~ GOTO questdecide60
END

IF ~~ questdecide57
SAY @3411
IF ~~ GOTO questdecide60
END

IF ~~ questdecide58
SAY @3412
=
@3413
IF ~~ GOTO questdecide60
END

IF ~~ questdecide59
SAY @3414
IF ~~ EXIT
END

IF ~~ questdecide60
SAY @3408
=
@3415 // XXX Also apply effect to PC that will blind for several rounds. Those Umar dust clouds are dangerous!~
IF ~~ EXIT
END

END

// Local Color

// - Stacy Xyxius: Tough guy lute player at Vincenzo's. We don't see him perform, but the PC can pick a fight with
//him by making fun of his girly-sounding name. Also possible: after fight, party could get a broken lute (he
//smashed his guitar, get it?) off the body, which could be repaired by the guy in the Promenade, SHOP03.CRE, who
//upgrades the Horn of Valhalla to gain an instrument or club item. (Want Sim for voicing)

BEGIN PGSTACY

IF ~NumTimesTalkedTo(0)~ THEN stacystart
SAY @3416 
++ @3417 GOTO StacyIsStacy
++ @3418 GOTO StacyRepeats
++ @3419 GOTO StacyRepeats
++ @3420 GOTO StacyAgrees
++ @3421 GOTO StacyMatters
END

IF ~NumTimesTalkedTo(1) Global("PPGStacyLikes", "LOCALS", 0)~ THEN stacy2
SAY @3422 
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(2) Global("PPGStacyLikes", "LOCALS", 0)~ THEN stacy3
SAY @3423
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(3) Global("PPGStacyLikes", "LOCALS", 0)~ THEN stacy4
SAY @3424
IF ~~ DO ~Enemy() Attack([PC])~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("PPGStacyLikes", "LOCALS", 1)~ THEN stacy5
SAY @3425
=
@3426
IF ~~ EXIT
END

IF ~~ StacyIsStacy
SAY @3427 
// "Ick-zee-ous"
++ @3428 GOTO StacyDump
++ @3429 GOTO StacyDump
++ @3430 GOTO StacyBruce
++ @3431 GOTO StacyNotGirly
END

IF ~~ StacyRepeats
SAY @3432
++ @3433 GOTO StacyIsStacy
++ @3421 GOTO StacyMatters
++ @3434 GOTO StacyAgrees
++ @3435 GOTO StacyBurp
END

IF ~~ StacyMatters
SAY @3436
++ @3437 GOTO StacyIsStacy2
++ @3438 GOTO StacyFight
++ @3439 GOTO StacyAgrees
++ @3440 + StacyFight
++ @3441 GOTO StacyFlowers
++ @3442 GOTO StacyIsStacy2
++ @3443 GOTO StacyFlowers2
END

IF ~~ StacyAgrees
SAY @3444
IF ~~ EXIT
END

IF ~~ StacyDump
SAY @3445
++ @3446 GOTO StacyFight
++ @3447 GOTO StacyGirlyMan
++ @3448 + StacyDamnStraight
++ @3449 GOTO StacyDamnStraight
IF ~PartyGoldGT(2)~ THEN REPLY @3450 GOTO StacyMate
IF ~PartyGoldLT(3)~ THEN REPLY @3451 GOTO StacyCheap
++ @3452 GOTO StacyNoDrink
++ @3453  GOTO StacyInThatCase
END


IF ~~ StacyBurp
SAY @3454 
=
@3455 
IF ~~ EXIT
END

IF ~~ StacyBruce
SAY @3456
=
@3457
IF ~~ EXIT
END

IF ~~ StacyIsStacy2
SAY @3458
IF ~Gender(Player1, MALE)~ THEN REPLY @3459 GOTO StacyNotGirly
IF ~Gender(Player1, FEMALE)~ THEN REPLY @3460 GOTO StacyNotGirly
++ @3461 GOTO StacyHowAbout
IF ~PartyGoldGT(2)~ THEN REPLY @3462 GOTO StacyMate
IF ~PartyGoldLT(3)~ THEN REPLY @3463 GOTO StacyCheap
++ @3464 GOTO StacyNoDrink
++ @3465  GOTO StacyInThatCase
++ @3466 GOTO StacyFlowers
END

IF ~~ StacyFight
SAY @3467
IF ~~ DO ~Enemy() Attack([PC])~ EXIT
END

IF ~~ StacyGirlyMan
SAY @3468
IF ~~ GOTO StacyFight
END

IF ~~ StacyDamnStraight
SAY @3469
IF ~~ DO ~SetGlobal("PPGStacyLikes", "LOCALS", 1)~ EXIT
END

IF ~~ StacyFlowers
SAY @3470
IF ~~ EXIT
END

IF ~~ StacyCheap
SAY @3471
IF ~~ EXIT
END

IF ~~ StacyMate
SAY @3472
IF ~~ DO ~SetGlobal("PPGStacyLikes", "LOCALS", 1) TakePartyGold(2)~ EXIT
END

IF ~~ StacyNoDrink
SAY @3473
IF ~~ EXIT
END

IF ~~ StacyInThatCase
SAY @3474
=
@3475
IF ~~ EXIT
END

IF ~~ StacyFlowers2
SAY @3476
IF ~~ EXIT
END

IF ~~ StacyHowAbout
SAY @3477
IF ~~ GOTO StacyFight
END

IF ~~ StacyNotGirly
SAY @3478
++ @3479 GOTO StacyFists
++ @3480 GOTO StacyManly
++ @3481 GOTO StacyPatronizing
++ @3482 GOTO StacyStraight
++ @3483 GOTO StacyFeedingTime
++ @3484 GOTO StacyCracks
END

IF ~~ StacyFists
SAY @3485
IF ~~ DO ~Enemy() Attack([PC])~ EXIT
END

IF ~~ StacyPatronizing
SAY @3486
++ @3487 GOTO StacyNoDrink
IF ~PartyGoldGT(2)~ THEN REPLY @3488 GOTO StacyMate
IF ~PartyGoldLT(3)~ THEN REPLY @3489 GOTO StacyCheap
++ @3490 GOTO StacyCracks
END

IF ~~ StacyManly
SAY @3491
++ @3487 GOTO StacyNoDrink
IF ~PartyGoldGT(2)~ THEN REPLY @3488 GOTO StacyMate
IF ~PartyGoldLT(3)~ THEN REPLY @3489 GOTO StacyCheap
++ @3484 GOTO StacyCracks
END

IF ~~ StacyStraight
SAY @3492
IF ~~ EXIT
END

IF ~~ StacyFeedingTime
SAY @3493
IF ~~ DO ~Enemy() Attack([PC])~ EXIT
END

IF ~~ StacyCracks
SAY @3494
IF ~~ DO ~Enemy() Attack([PC])~ EXIT
END

I_C_T PGSTACY StacyGirlyMan PGStacyGirlyMan
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3495
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3496
END

I_C_T PGSTACY StacyDamnStraight PGStacyDamnStraight
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3497
== PGSTACY IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3498
== PGSTACY IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3499
END

I_C_T PGSTACY StacyDump PGStacyDump
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3500
== PGSTACY IF ~IsValidForPartyDialogue("Imoen2")~ THEN @3501
END



//Penny Madrigal, (PGPENNY) and groupies. Grim as Penny, Moreina (Germione) and Kate (Poppy). Groupies are Germione (PGGMIONE) and Poppy (PGPOPPY), and, theoretically, their cutspy for unison gushing (PGGROUPI). If the unison sounds can't be mixed in an acceptable fashion, we can always go back to staggering, but I think it would be super cool to simulate some .cres talking at the same time.

BEGIN PGPOPPY
BEGIN PGGMIONE
BEGIN PGGROUPI
BEGIN PGPENNY

IF ~Global("PGPennyChat1","LOCALS", 0)
TimeOfDay(DAY)~ THEN BEGIN PennyIntro1
SAY @3502
++ @3503 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~ GOTO HiImPenny
++ @3504 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~ GOTO PennySureIsNice
++ @3505  DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~ GOTO PennySureIsJovial
IF ~Class(LastTalkedToBy(Myself), BARD_ALL)~ THEN REPLY @3506 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyBard
IF ~OR(2) Class(LastTalkedToBy(Myself), FIGHTER_ALL) Class(LastTalkedToBy(Myself), PALADIN_ALL)~ THEN REPLY @3507 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyFighter
IF ~Class(LastTalkedToBy(Myself), CLERIC_ALL)~ THEN REPLY @3508 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyPriest
IF ~Class(LastTalkedToBy(Myself), THIEF_ALL)~ THEN REPLY @3509 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyThief
IF ~OR(2) Class(LastTalkedToBy(Myself), DRUID_ALL) Class(LastTalkedToBy(Myself), RANGER_ALL)~ THEN REPLY @3510 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyRanger
IF ~Class(LastTalkedToBy(Myself), MONK)~ THEN REPLY @3511 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyMonk
IF ~OR(2) Class(LastTalkedToBy(Myself), MAGE_ALL) Class(LastTalkedToBy(Myself), SORCERER)~ THEN REPLY @3512 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyMage
END

IF ~Global("PGPennyChat1","LOCALS", 0)
!TimeOfDay(DAY)~ THEN BEGIN PennyIntronight
SAY @3502
// yeah, yeah, it's the same because we don't have the line voiced.
++ @3503 GOTO HiImPenny
++ @3504 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~ GOTO PennySureIsNice
++ @3505 GOTO PennySureIsJovial
IF ~Class(LastTalkedToBy(Myself), BARD_ALL)~ THEN REPLY @3506 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyBard
IF ~OR(2) Class(LastTalkedToBy(Myself), FIGHTER_ALL) Class(LastTalkedToBy(Myself), PALADIN_ALL)~ THEN REPLY @3507 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyFighter
IF ~Class(LastTalkedToBy(Myself), CLERIC_ALL)~ THEN REPLY @3508 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyPriest
IF ~Class(LastTalkedToBy(Myself), THIEF_ALL)~ THEN REPLY @3509 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyThief
IF ~OR(2) Class(LastTalkedToBy(Myself), DRUID_ALL) Class(LastTalkedToBy(Myself), RANGER_ALL)~ THEN REPLY @3510 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyRanger
IF ~Class(LastTalkedToBy(Myself), MONK)~ THEN REPLY @3511 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyMonk
IF ~OR(2) Class(LastTalkedToBy(Myself), MAGE_ALL) Class(LastTalkedToBy(Myself), SORCERER)~ THEN REPLY @3512 DO ~SetGlobal("PGPennyChat1","LOCALS", 1)~  GOTO PennyMage
END

IF ~~ THEN BEGIN PennySureIsNice
SAY @3514
IF ~~ EXIT // we could put drunkenness and gulp sound and stuff here but. Eh.
END

IF ~~ THEN BEGIN PennyBard
SAY @3515
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyFighter
SAY @3516
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyPriest
SAY @3517
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyThief
SAY @3518
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyMonk
SAY @3519
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyMage
SAY @3520
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyDainty
SAY @3521
IF ~~ THEN EXIT
END


// GAH!!!!! Forgot default Penny material for after the first talk!
IF ~True()~ THEN BEGIN PennyDefault
SAY @3522
++ @3523 GOTO PennySureIsNice
++ @3524 GOTO PennyH20
++ @3525 GOTO PennyTooBad
++ @3526 GOTO PennyPerish
END

IF ~~ THEN BEGIN PennyH20
SAY @3527
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyPerish
SAY @3528
++ @3529 GOTO PennySureIsNice
++ @3530 GOTO PennySureIsNice
++ @3531 GOTO PennySureIsNice
++ @3532 GOTO PennyWellSaid
++ @3525 GOTO PennyTooBad
++ @3533 GOTO PennyLimits
END

IF ~~ THEN BEGIN PennyWellSaid
SAY @3534
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PennyLimits
SAY @3535
IF ~~ THEN EXIT
END



CHAIN
IF ~~ THEN PGPENNY HiImPenny
@3536
== PGGMIONE @3537 
== PGPOPPY @3538 
== PGGROUPI @3539 
== PGPENNY @3540
END
++ @3504 GOTO PennySureIsNice
++ @3505 GOTO PennySureIsJovial
++ @3541 GOTO PennyCantHelpIt
++ @3542 GOTO PennyDainty


CHAIN
IF ~~ THEN PGPENNY PennySureIsJovial
@3543
== PGPOPPY @3544
== PGGMIONE @3545 
== PGPOPPY @3546
== PGGMIONE @3546
== PGGROUPI @3548 
== PGPENNY @3549
EXIT


CHAIN
IF ~~ THEN PGPENNY PennyRanger
@3550 
== PGGMIONE @3551  
== PGPOPPY @3552 
== PGGMIONE @3553 
== PGPOPPY @3554 
== PGGMIONE @3555
== PGGROUPI @3556 
== PGPENNY @3557
EXIT


CHAIN
IF ~~ THEN PGPENNY PennyCantHelpIt
@3558
== PGGROUPI @3559
EXIT




CHAIN
IF ~InParty("Aerie") See("Aerie") Global("PGPennyHitOnAerie","LOCALS",0)~ THEN PGPENNY PennyAerie
@3560 DO ~SetGlobal("PGPennyHitOnAerie","LOCALS",1)~
== AERIEJ @3561
== PGPENNY @3562
== PGGMIONE @3563
== PGPOPPY @3564
EXIT


CHAIN
IF ~~ THEN PGPENNY PennyTooBad
@3565
== PGGMIONE @3556
== PGPOPPY @3556
EXIT



// PGPOPPY
CHAIN
IF ~Global("PGPoppyBiggestFan","LOCALS",0)~ THEN PGPOPPY PoppyDefault
@3567  DO ~SetGlobal("PGPoppyBiggestFan","LOCALS",1)~
== PGGMIONE @3568
== PGPOPPY @3569
EXIT

// PGGMIONE

CHAIN
IF ~Global("PGGermioneBiggestFan","LOCALS",0)~ THEN PGGMIONE GermioneDefault
@3570  DO ~SetGlobal("PGGermioneBiggestFan","LOCALS",1)~
== PGPOPPY @3571  
== PGGMIONE @3572
== PGPOPPY @3573
EXIT

CHAIN
IF ~RandomNum(2,1)~ THEN PGGMIONE GermioneKorgan
@3574  // giggly voicing
== KORGANJ IF ~IsValidForPartyDialogue("Korgan") Global("PGKorganGermione","GLOBAL",0)~ THEN @3575 DO ~SetGlobal("PGKorganGermione","GLOBAL",1)~
== PGGMIONE @3576
EXIT

CHAIN
IF ~RandomNum(2,2)~ THEN PGGMIONE Germione2
@3577
EXIT

CHAIN
IF ~RandomNum(2,1)~ THEN PGPOPPY Poppy1
@3578 
EXIT

CHAIN
IF ~RandomNum(2,2)~ THEN PGPOPPY Poppy1
@3579 
EXIT


// Sir Joules (Maybe get Scarhart to voice?)

BEGIN PGJOULES

CHAIN
IF ~InParty("Nalia")
See("Nalia")
Global("PGTalkedNalia","LOCALS",0)~ THEN PGJOULES JoulesNalia
@3580  DO ~SetGlobal("PGTalkedNalia","LOCALS",1)~
== NALIAJ @3581
= @3582
== PGJOULES @3583
=
@3584
== NALIAJ @3585
== PGJOULES @3586
== NALIAJ @3587
== PGJOULES @3588
=
@3589
== NALIAJ @3590
EXIT

// Joules On Random.

APPEND PGJOULES

IF ~RandomNum(4,1)~ joules1
SAY @3591
IF ~~ EXIT
END

IF ~RandomNum(4,2)~ joules2
SAY @3592
IF ~~ EXIT
END

IF ~RandomNum(4,3)~ joules3
SAY @3593
IF ~~ EXIT
END

IF ~RandomNum(4,4)~ joules4
SAY @3594 
IF ~~ EXIT
END

END

//Amaryllis (was Frilly Gestures) (PGFRILLY)- To go with "Maids When You're Young." A wenchy wench, adapted to bridge the gulf between my gross portrayal of Sir Joules as an elitist, and his song of the opposite message.

BEGIN PGFRILLY

CHAIN
IF ~See("PGJOULES")
Global("PGFrillyFlirts", "LOCALS", 0)~ THEN PGFRILLY AmaryllisJoules
@3595 DO ~SetGlobal("PGFrillyFlirts", "LOCALS", 1)~
=
@3596
== PGJOULES @3597 
== PGFRILLY @3598
== PGJOULES @3599
== PGFRILLY @3600
EXIT

APPEND PGFRILLY

IF ~True()~ THEN AmaryllisDefault
SAY @3601 
IF ~~ EXIT
END

END


// Prudence Dubhthistle - Meek, shy, sweet. She's not a pushy performer like some of these other characters, full of ego or flair. She is most comfortable with her music for company and is a bit overwhelmed by all the adoration that comes her way with performing. Keto will recognize her. Want Eral to voice, as will be using her songs with this one.

BEGIN PGPRU

CHAIN
IF ~See(Player1)
InParty("Keto")
Global("PGPrudence1", "LOCALS", 0)~ THEN PGPRU KetoSpotsPru
@3602 
DO ~SetGlobal("PGPrudence1", "LOCALS", 1)~
== FWKetoJ @3603 
= @3604 
END
++ @3605 EXTERN FWKETOJ KetoTalkingAbout
++ @3606 EXTERN FWKETOJ KetoPrudenceIsNice
++ @3607 EXTERN FWKETOJ KetoMustFret
++ @3608 EXTERN FWKETOJ KetoWhatTheyMean

// On Random: Prudence

APPEND PGPRU

IF ~RandomNum(3,1)~ pru1
SAY @3609
IF ~~ EXIT
END

IF ~RandomNum(3,2)~ pru2
SAY @3610
=
@3611
IF ~~ EXIT
END

IF ~RandomNum(3,3)~ pru3
SAY @3612
IF ~~ EXIT
END

END

APPEND FWKETOJ

IF ~~ THEN BEGIN KetoTalkingAbout
SAY @3613
IF ~~ THEN GOTO KetoIntrosPrudence
END

IF ~~ THEN BEGIN KetoPrudenceIsNice
SAY @3614
IF ~~ THEN GOTO KetoIntrosPrudence
END

IF ~~ THEN BEGIN KetoMustFret
SAY @3615
IF ~~ THEN GOTO KetoIntrosPrudence
END

IF ~~ THEN BEGIN KetoWhatTheyMean
SAY @3616
IF ~~ THEN GOTO KetoIntrosPrudence
END

IF ~~ THEN BEGIN KetoIntrosPrudence
SAY @3617
= @3618
= @3619
++ @3620 GOTO KetoQuitTeasing
++ @3621 GOTO KetoIAmJealous
++ @3622 GOTO KetoLikeHerSoMuch
++ @3623 GOTO KetoIDontDislikeHer
END

IF ~~ THEN BEGIN KetoQuitTeasing
SAY @3624
IF ~~ THEN GOTO KetoPrusDeadly
END

IF ~~ THEN BEGIN KetoIAmJealous
SAY @3625
=
@3626
IF ~~ THEN GOTO KetoPrusDeadly
END

IF ~~ THEN BEGIN KetoLikeHerSoMuch
SAY @3627
++ @3628 EXIT
++ @3629 EXTERN PGPRU KetoDearPrudence
++ @3630 GOTO KetoWhew
++ @3631 GOTO KetoFishhooks
END

IF ~~ THEN BEGIN KetoIDontDislikeHer
SAY @3632
=
@3633
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KetoWhew
SAY @3634
=
@3635
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KetoFishhooks
SAY @3636
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN KetoPrusDeadly
SAY @3637
IF ~~ THEN EXTERN PGPRU KetoDearPrudence
END

END

CHAIN PGPRU KetoDearPrudence
@3638 DO ~SetGlobal("PGPrudence2", "LOCALS", 1)~
== FWKetoJ @3639
== PGPRU @3640
== FwKetoJ @3641
== PGPRU @3642
=
@3643
== FWKetoJ @3644
== PGPRU @3645
=
@3646
== FWKetoJ @3647
= @3648
== PGPRU @3649
== FWKetoJ @3650
== PGPRU @3651
=
@3652
== FWKetoJ @3653
EXIT


//Lyrica (PGLYRICA) Oh, she is just too much. J-Lo meets Madeleine Khan meets Greta Garbo with the diva I-am-too-good-for-this act. I throw in the Madeleine Khan there, because there should be some humor to her overreacting (The actress character MK did guesting on "The Carol Burnett Show" in the Eunice and Mama skits). Want Sorschana to voice. I think she can handle the elitist-but-kooky bit. Benny Pinter (PGBARRY) is Lyrica's agent, suffering, but on the smarmy side. If he looked like someone, it would be Joe Pesci.

BEGIN PGBARRY
BEGIN PGLYRICA

CHAIN
IF ~See("PGBarry")
Global("PGTalkedToLyrica","LOCALS",0)~ THEN PGLYRICA LyricaSpeaks
@3654  DO ~SetGlobal("PGTalkedToLyrica","LOCALS",1)~
== PGBARRY @3655
== PGLYRICA @3656 
=
@3657 
== PGBARRY @3658 
END
++ @3659 EXTERN PGBARRY BarryLyricaIntro
++ @3660 EXTERN PGBARRY BarryLyricaIntro
++ @3661 EXTERN PGBARRY BarryIntro
++ @3662 EXTERN PGBARRY BarryFans

APPEND PGBARRY

IF ~~ THEN BEGIN BarryLyricaIntro
SAY @3663
++ @3664 GOTO BarryShesADiva
++ @3665 GOTO BarryIntro
++ @3666 GOTO BarryFine
++ @3667 GOTO BarryFans
END

IF ~~ THEN BEGIN BarryShesADiva
SAY @3668
IF ~~ GOTO BarryIntro
END

IF ~~ THEN BEGIN BarryIntro
SAY @3669
=
@3670
=
@3671
=
@3672
=
@3673
=
@3674
++ @3675 GOTO BarryMore
++ @3676 GOTO BarryFans
++ @3677 DO ~GivePartyGold(50)~ EXIT
++ @3678 GOTO BarryChump
++ @3679 GOTO Barry100
++ @3680 GOTO BarryWiseGuy
END

IF ~~ THEN BEGIN BarryFans
SAY @3681
IF ~~ DO ~GiveItemCreate("PGLyrScr",Player1,1,0,0)~ EXIT
// XXX Need PGLyrScr, autograph scroll
END

IF ~~ THEN BEGIN BarryFine
SAY @3682
IF ~~ EXIT
END

IF ~~ THEN BEGIN BarryMore
SAY @3683
++ @3684 GOTO BarryPublicity
++ @3685 DO ~GivePartyGold(150)~ EXIT
++ @3680 GOTO BarryWiseGuy
++ @3686 GOTO BarryFine
END

IF ~~ BarryPublicity
SAY @3687
IF ~~ DO ~GivePartyGold(20) GiveItemCreate("PGLyrScr",Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN BarryChump
SAY @3688
IF ~~ EXIT
END

IF ~~ THEN BEGIN Barry100
SAY @3689
IF ~~ DO ~GivePartyGold(100)~ EXIT
END

IF ~~ THEN BEGIN BarryWiseGuy
SAY @3690
IF ~~ EXIT
END

END

//Random or something. I don't know.

CHAIN
IF ~See("PGBarry")
Global("LyricaDrawingRoom","LOCALS",0)~ THEN PGLYRICA LyricaDrawingRoom
@3691  DO ~SetGlobal("LyricaDrawingRoom","LOCALS",1)~
=
@3692
== PGBARRY @3693
== PGLYRICA @3694
= @3695
== PGBARRY @3696
== PGLYRICA @3697
== PGBARRY @3698
== PGLYRICA @3699
EXIT

CHAIN
IF ~See("PGBarry")
Global("LyricaEyes","LOCALS",0)~ THEN PGLYRICA LyricaStalked
@3700  DO ~SetGlobal("LyricaEyes","LOCALS",1)~
== PGBARRY @3701 
== PGLYRICA @3702 
== PGBARRY @3703 
== PGLYRICA @3704
=
@3705
=
@3706
END
++ @3707 GOTO LyricaScreams
+ ~PartyHasItem("MISC47")~ + @3708 GOTO LyricaScreams
++ @3709 GOTO LyricaScreams
++ @3710 + LyricaCrazy
++ @3711 + LyricaReconsiders

APPEND PGLYRICA

IF ~~ THEN BEGIN LyricaScreams
SAY @3712
IF ~~ DO ~RunAwayFrom(Player1,45)~ EXIT
END

IF ~~ THEN BEGIN LyricaCrazy
SAY @3713
IF ~~ DO ~RunAwayFrom(Player1,45)~ EXIT
END

IF ~~ THEN BEGIN LyricaReconsiders
SAY @3714
=
@3715
IF ~~ EXIT
END

END

CHAIN IF ~True()~ THEN PGLYRICA default
@3716 
EXIT

CHAIN IF ~True()~ THEN PGBARRY default
@3717
EXIT


APPEND FWKETOJ

IF WEIGHT #-1 ~Global("PGKetoBlewIt","GLOBAL",1)~ KetoFailedPCTalk
SAY @3718
IF ~~ DO ~SetGlobal("PGKetoBlewIt","GLOBAL",2)
SetGlobal("PGBardCompoDone","GLOBAL",1)
AddXPObject(Player1,3000)
AddXPObject(Player2,3000)
AddXPObject(Player3,3000)
AddXPObject(Player4,3000)
AddXPObject(Player5,3000)
AddXPObject(Player6,3000)
EraseJournalEntry(@4000)
AddJournalEntry(@4001,QUEST_DONE)~ GOTO failed2
END

IF ~~ failed2
SAY @3719
++ @3720 + LostNotTheEnd
+ ~Class(Player1, BARD_ALL)~ + @3721 + LostSplinter
// Tread the boards
+ ~Class(Player1, BARD_ALL)~ + @3722 + LostLearnedNothing
+ ~!Class(Player1, BARD_ALL)~ + @3723 + LostLearnedNothing
++ @3724 + LostJustPlaying
++ @3725 + LostBackOnRoad
END

IF ~~ LostJustPlaying
SAY @3726
= @3727
IF ~~ GOTO LostNotTheEnd
END

IF ~~ LostNotTheEnd
SAY @3728
= @3729
IF ~~ GOTO LostWrapup
END

IF ~~ LostSplinter
SAY @3730
IF ~~ GOTO LostNotTheEnd
END

IF ~~ LostBackOnRoad
SAY @3731
IF ~~ GOTO LostWrapup
END

IF ~~ LostWrapup
SAY @3732
= @3733
IF ~~ EXIT
END

IF ~~ LostLearnedNothing
SAY @3734
= @3735
IF ~~ DO ~GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
END

END

CHAIN IF WEIGHT #-1 ~Global("PGKetoPlaced","GLOBAL",1)~ THEN FWKETOJ ketoplacedchain
@3736 DO ~SetGlobal("PGKetoPlaced","GLOBAL",2)
AddXPObject(Player1,5000)
AddXPObject(Player2,5000)
AddXPObject(Player3,5000)
AddXPObject(Player4,5000)
AddXPObject(Player5,5000)
AddXPObject(Player6,5000)
EraseJournalEntry(@4000)
AddJournalEntry(@4002,QUEST_DONE)~
== PGKMOM @3737
== FWKetoJ @3738
END PGKDAD ketoendsequence1

CHAIN IF WEIGHT #-1 ~Global("PGKetoWonYoshimo","GLOBAL",1)~ THEN FWKETOJ ketowonyoshimo
@3739 DO ~SetGlobal("PGKetoWonYoshimo","GLOBAL",2)
SetGlobal("PGBardCompoDone","GLOBAL",1)
AddXPObject(Player1,7500)
AddXPObject(Player2,7500)
AddXPObject(Player3,7500)
AddXPObject(Player4,7500)
AddXPObject(Player5,7500)
AddXPObject(Player6,7500)
EraseJournalEntry(@4000)
AddJournalEntry(@4003,QUEST_DONE)~
= @3740
== PGKMOM @3741
== FWKetoJ @3742
END PGKDAD ketoendsequence1



CHAIN PGKDAD ketoendsequence1
@3743
== PGKMOM @3744
== FWKetoJ @3745
== PGKDAD @3746
== PGKMOM @3747
== FWKetoJ @3748
= @3749
== PGKDAD @3750
== FWKetoJ @3751
== PGKDAD @3752
== FWKetoJ @3753
== PGKMOM @3754
== PGKDAD @3755
== PGKMOM @3756
== PGKDAD @3757
== FWKetoJ @3758
= @3759
= @3760
= @3761
= @3762
= @3763
== PGKMOM @3764
== FWKetoJ @3765
= @3766
== PGKDAD @3767
== PGKMOM @3768
// This letter thing - could be a device for unravelling What Really Happened for use in the far off future of Keto ToB. Say, Keto pauses to read a snippet of one of her old letters to the PC, talk ensues, blahblahblah.
== FWKetoJ @3769
= @3770
== PGKDAD @3771
== FWKetoJ @3772
== PGKMOM @3773
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT2g")~
EXIT



CHAIN IF WEIGHT #-1 ~Global("PGKetoWonMirror","GLOBAL",1)~ THEN FWKETOJ ketowonmirrorchain
@3739 DO ~SetGlobal("PGKetoWonMirror","GLOBAL",2)
SetGlobal("PGBardCompoDone","GLOBAL",1)
AddXPObject(Player1,7500)
AddXPObject(Player2,7500)
AddXPObject(Player3,7500)
AddXPObject(Player4,7500)
AddXPObject(Player5,7500)
AddXPObject(Player6,7500)
EraseJournalEntry(@4000)
AddJournalEntry(@4003,QUEST_DONE)~
== PGKMOM @3741
== FWKetoJ @3742
END PGKDAD ketoendsequence1


APPEND FWKETOJ
IF WEIGHT #-1 ~OR(2)
Global("PGKetoPlaced","GLOBAL",2)
Global("PGKetoWonMirror","GLOBAL",2)~ ketowrapup2
SAY @3774
= @3775
IF ~Global("PGKetoPlaced","GLOBAL",2)~ DO ~SetGlobal("PGKetoPlaced","GLOBAL",3) SetGlobal("PGBardCompoDone","GLOBAL",1)~ GOTO ketoplaced3
IF ~Global("PGKetoWonMirror","GLOBAL",2)~ DO ~SetGlobal("PGKetoWonMirror","GLOBAL",3) SetGlobal("PGBardCompoDone","GLOBAL",1)~ GOTO ketoplaced3
END

IF WEIGHT #-1 ~OR(2)
Global("PGKetoWonYoshimo","GLOBAL",2)~ ketowrapup3
SAY @3776
IF ~~ DO ~SetGlobal("PGKetoWonYoshimo","GLOBAL",3) SetGlobal("PGBardCompoDone","GLOBAL",1)~ GOTO ketoplaced3
END

IF ~~ ketoplaced3
SAY @3777
++ @3778 + bored
++ @3779 + reunited
++ @3780 + reunited
++ @3781 + care4you
++ @3782 + hearty
END

IF ~~ bored
SAY @3783
IF ~~ GOTO placedmain2
END

IF ~~ reunited
SAY @3784
IF ~~ GOTO placedmain2
END

IF ~~ care4you
SAY @3785
IF ~~ GOTO placedmain2
END

IF ~~ hearty
SAY @3786
IF ~~ GOTO placedmain2
END

END

CHAIN FWKETOJ placedmain2
@3787

== FWKETOJ IF ~!Global("KetoWinsContest", "GLOBAL", 1)
!Global("KetoWinsContest", "GLOBAL", 4)~ THEN @3788
== FWKETOJ IF ~!Global("KetoWinsContest", "GLOBAL", 1)
!Global("KetoWinsContest", "GLOBAL", 4)~ THEN @3789
== FWKETOJ IF ~OR(2)
Global("KetoWinsContest", "GLOBAL", 1)
Global("KetoWinsContest", "GLOBAL", 4)~ THEN @3790
== FWKETOJ @3791
= @3792
END
+ ~G("PGAskedCait",0)~ + @3793 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @3794 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @3795 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @3796 + justmove
++ @3797 + afteryou

APPEND FWKETOJ
IF ~~ cait
SAY @3798
= @3799
= @3800
+ ~G("PGAskedCait",0)~ + @3793 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @3794 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @3795 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @3796 + justmove
++ @3797 + afteryou
END

IF ~~ memories
SAY @3801
= @3802
= @3803
+ ~G("PGAskedCait",0)~ + @3793 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @3794 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @3795 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @3796 + justmove
++ @3797 + afteryou

END

IF ~~ change
SAY @3804
= @3805
+ ~G("PGAskedCait",0)~ + @3793 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @3794 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @3795 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @3796 + justmove
++ @3797 + afteryou

END

IF ~~ justmove
SAY @3806
= @3807
IF ~~ EXIT
END

IF ~~ afteryou
SAY @3808
IF ~~ EXIT
END

END

/*

// CreateCreature points AR1105
 [757.437] - PGLYRICA
 [783.450] - PGBARRY
 [639.546] - PGPENNY
 [674.496] - PGPOPPY
 [714.499] - PGGMIONE
 [913.234] - PGPRU
 [679.613] - PGSTACY
 [860.352] - PGJOULES
 [906.318] - PGFRILLY
 [331.582] - PGTEWES // TEWES

 // CreateCreature points AR1100
 [3035.1952] - PGULGA
 
 [4372.3087] - PGKDAD
 [4404.3129] - PGKMOM

 [4225.3112] - Center of stage for performers, Jassy intros, Tewes
 [4195.3000] - Jassy stands here "in the wings" during performances
 [4053.3062] - Solo performer stands here "in the wings" during intro
 [4235.3015] - Second of a pair of performers stands here during intro
 [4200.3125] - Chorus of Two, Twins perform
 [4250.3100] - Chorus of Two, Twins perform

 [4178.3243] - Audience member
 [4290.3233] - Audience member
 [4326.3188] - Audience member
 [4363.2965] - Audience member
 [4415.2955] - Audience member
 [4450.3030] - Audience member
 [4460.3065] - Audience member
 [4330.3255] - Audience member
 [4270.3265] - Audience member
 [4090.3295] - Audience member
 [4050.3280] - Audience member

 [4408.3172] - PGBARRY
 [4025.3220] - PGPOPPY
 [4090.3260] - PGGMIONE
 
 [4418.3135] - Player 1
 [4448.3100] - Player 2
 [4530.3115] - Player 3
 [4560.3080] - Player 4
 [4600.3060] - Player 5
 [4605.3125] - Player 6
 */


