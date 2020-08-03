BEGIN ~FWKETO~
BEGIN FWKETOJ

CHAIN IF ~G("KetoTale",0)
/*!Dead("sterk")
!Dead("jerry")
!Dead("belle")
!Dead("ffbart")*/
See(Player1)~ THEN FWKETO KetoTale
@0  DO ~SG("KetoTale",1)~
=
@1 
== FFBART IF ~!Dead("FFBART")~ THEN @2
== FWKETO IF ~!Dead("FFBART")~ THEN @3
= IF ~!Dead("FFBART")~ THEN @4
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis")~ THEN
@5
== HAERDAJ IF ~IsValidForPartyDialog("HaerDalis")~ THEN
@6
== FWKETO
@7
== FWKETO
@8
== FWKETO
@9
/*== FFCUST07
~Wait, girlie, ye weren't even past the entrance yet.~
= ~Not that'm paying attention or nothing... just me and me grog...~*/
== FWKETO
@10
== FFCUST08 IF ~!Dead("Jerry")~ THEN @11
== FWKETO
@12
== BANOMEN IF ~IsValidForPartyDialog("Anomen")~ THEN
@13
== FWKETO @14
== BJAN IF ~IsValidForPartyDialog("Jan")~ THEN
@15
== FWKETO
@16
== FWKETO
@17
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN
@18
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN
@19
/*== FFCUST07
~Wait, there, girlie, ye mean ye ran like a lily from a batch o' *kobolds*?~*/
== FFCUST08 IF ~!Dead("Jerry")~ THEN @20
== FWKETO
@21
/*== FFCUST07
~Har har! Be the funniest thing I heard since Jamtoes o'er here ran under an orc! ...not that I been paying a whit o' attention to what ye been saying, now, girlie, aye?~*/
== FFCUST08 IF ~!Dead("Jerry")~ THEN
@22
/*=
~What? H'rothgar, what's so funny about running under orcs? Confuses em good, it does.~*/
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN
@23
== FFCUST09 IF ~!Dead("sterk")~ THEN
@24
== FFCUST09 IF ~!Dead("sterk")~ THEN
@25
== FWKETO @26
== YOSHJ IF ~IsValidForPartyDialog("Yoshimo")~ THEN @27
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("KetoHaerDalis","LOCALS",0)~ THEN FWKETO KetoSeesHD
@28 
DO ~SetGlobal("KetoHaerDalis","LOCALS",1)~
== HAERDAJ
@29
== FWKETO
@30
=
@31
== HAERDAJ IF ~Global("PlanarPrison","GLOBAL",2)~ THEN
@32
== FWKETO IF ~Global("PlanarPrison","GLOBAL",2)~ THEN
@33
== HAERDAJ IF ~Global("PlanarPrison","GLOBAL",2)~ THEN
@34
== HAERDAJ IF ~GlobalGT("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@35
== FWKETO IF ~GlobalGT("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@36
== HAERDAJ IF ~GlobalGT("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@37
== HAERDAJ IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@38
== FWKETO IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@39
== HAERDAJ IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@40
== FWKETO IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@41
== HAERDAJ IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@42
== FWKETO @43
END FWKETO Introduction

APPEND FWKETO

IF ~Global("KetoTale","GLOBAL",1)
Global("TalkedToKeto","GLOBAL",0)~ THEN BEGIN Introduction
SAY @44 
IF ~~ THEN REPLY @45 GOTO Later
++ @46 + Thanks
IF ~~ THEN REPLY @47  GOTO LaterHmmph
IF ~~ THEN REPLY @48  GOTO Thanks
IF ~~ THEN REPLY @49  GOTO Inquiries
IF ~~ THEN REPLY @50  GOTO Hmmph
IF ~Gender(Player1,MALE)
CheckStatGT(Player1,12,CHR)~ THEN REPLY @51  GOTO Blush1
IF ~Gender(Player1,MALE)
CheckStatLT(Player1,13,CHR)~ THEN REPLY @51 GOTO Blush2
IF ~Class(Player1,BARD)~ THEN REPLY @52  GOTO Bard
END


IF ~~ THEN BEGIN Later
SAY @53
= @54
IF ~~ THEN DO ~SetGlobal("TalkedToKeto","GLOBAL",1)
RunAwayFrom(Player1,5)~
EXIT
END

IF ~~ THEN BEGIN LaterHmmph
SAY @55
= @56
IF ~~ THEN DO ~SetGlobal("TalkedTOKeto","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN Thanks
SAY @57
IF ~~ THEN REPLY @58  GOTO Familiar
IF ~~ THEN REPLY @59  GOTO Chicken
IF ~~ THEN REPLY  @60  GOTO Mock
IF ~~ THEN REPLY  @61  GOTO Travelling
IF ~Class(Player1,BARD)~ THEN REPLY @62  GOTO Stories
END

IF ~~ THEN BEGIN Blush1
SAY @63
IF ~~ THEN DO ~TakePartyGold(5)~ GOTO Inquiries
END

IF ~~ THEN BEGIN Blush2
SAY @64
IF ~~ THEN GOTO Inquiries
END

IF ~~ THEN BEGIN Bard
SAY @65
IF ~~ THEN REPLY @66  GOTO Stories
++ @67 + Stories
IF ~~ THEN REPLY @68  GOTO Arrogant
IF ~Gender(Player1,MALE)
CheckStatGT(Player1,12,CHR)~ THEN REPLY @69  GOTO Blush1
IF ~Gender(Player1,MALE)
CheckStatLT(Player1,13,CHR)~ THEN REPLY @69  GOTO Blush2
END

IF ~~ THEN BEGIN Inquiries
SAY @70
IF ~Gender(Player1,MALE)
CheckStatGT(Player1,15,CHR)~ THEN REPLY @71  GOTO Slap1
IF ~Gender(Player1,MALE)
CheckStatLT(Player1,16,CHR)~ THEN REPLY @71  GOTO Slap2
IF ~Gender(Player1,FEMALE)~ THEN REPLY @71  GOTO Slap3
IF ~~ THEN REPLY @72  GOTO Intro
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @73 GOTO Irenicus
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @74  GOTO Guild
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @75  GOTO Cowled
IF ~Global("TalkedToInspector","GLOBAL",1)
!Global("TannerExposed","GLOBAL",1)~ THEN REPLY @76  GOTO Murders
IF ~~ THEN REPLY @77  GOTO Familiar
END

IF ~~ THEN BEGIN Familiar
SAY @78
IF ~~ THEN REPLY @79 GOTO Ego
IF ~~ THEN REPLY @80  GOTO Ego
IF ~CheckStatGT(Player1,9,CHR)~ THEN REPLY @81  GOTO Fanyes
IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY @81 GOTO Fanno
IF ~~ THEN REPLY @82  GOTO Inquiries
END

IF ~~ THEN BEGIN Chicken
SAY @83
IF ~~ THEN REPLY @84  GOTO Hmmph
IF ~~ THEN REPLY @85  GOTO Stories
IF ~~ THEN REPLY @86 GOTO Inquiries
END

IF ~~ THEN BEGIN Mock
SAY @87
IF ~~ THEN REPLY @88  GOTO Familiar
IF ~~ THEN REPLY @89  GOTO Inquiries
IF ~~ THEN REPLY @90  GOTO Hmmph
IF ~~ THEN REPLY @91  GOTO Later
END

IF ~~ THEN BEGIN Stories
SAY @92
=
@93
IF ~~ THEN REPLY @94 DO ~TakePartyGold(5)~ GOTO Inquiries
IF ~~ THEN REPLY @95  GOTO Mock
++ @96 + Inquiries
IF ~Class(Player1,BARD)~ THEN REPLY @97  GOTO Inquiries
END

IF ~~ THEN BEGIN Arrogant
SAY @98
=
@99
IF ~~ THEN REPLY @100  GOTO Intro
IF ~~ THEN REPLY @101  GOTO Hmmph
IF ~~ THEN REPLY @102  GOTO YouKnow
END

IF ~~ THEN BEGIN Slap1
SAY @103
IF ~~ THEN GOTO Inquiries
END

IF ~~ THEN BEGIN Slap2
SAY @104
= @105
IF ~~ THEN DO ~TakePartyGold(50)
SetGlobal("TalkedToKeto","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Slap3
SAY @106
IF ~~ THEN GOTO Inquiries
END

IF ~~ THEN BEGIN Intro
SAY @107
IF ~~ THEN REPLY @108  GOTO Confirm
IF ~~ THEN REPLY @109 GOTO Hmmph
IF ~~ THEN REPLY @110  GOTO Inquiries
END

IF ~~ THEN BEGIN Irenicus
SAY @111
IF ~~ THEN REPLY @112 GOTO Later
IF ~~ THEN REPLY @113  GOTO Inquiries
END

IF ~~ THEN BEGIN Guild
SAY @114
= @115
=
@116
=
@117
IF ~~ THEN REPLY @118  GOTO Tough
IF ~~ THEN REPLY @119  GOTO Later
IF ~~ THEN REPLY @113  GOTO Inquiries
END

IF ~~ THEN BEGIN Cowled
SAY @120
=
@121
IF ~~ THEN REPLY @122  GOTO Tough
IF ~~ THEN REPLY @123  GOTO Later
IF ~~ THEN REPLY @113  GOTO Inquiries
END

IF ~~ THEN BEGIN Murders
SAY @124
= @125
= @126
IF ~CheckStatLT(Player1,13,INT)~ THEN REPLY @127 GOTO Inquiries
IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @128 GOTO Inquiries
IF ~~ THEN REPLY @129  GOTO Tough
IF ~~ THEN REPLY @130  GOTO Later
END

IF ~~ THEN BEGIN Fanyes
SAY @131
= @132
= @133
IF ~~ THEN REPLY @134  GOTO Inquiries
IF ~~ THEN REPLY @135  GOTO Along
IF ~~ THEN REPLY @136  GOTO Along
END

IF ~~ THEN BEGIN Fanno
SAY @137
= @138
= @139
IF ~~ THEN DO ~SetGlobal("TalkedToKeto","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN YouKnow
SAY @140
=
@141
IF ~~ THEN REPLY @142  GOTO Confirm
IF ~~ THEN REPLY @143  GOTO Later
IF ~~ THEN REPLY @144  GOTO Confirm
END

IF ~~ THEN BEGIN Confirm
SAY @145
IF ~CheckStatGT(Player1,9,CHR)~ THEN REPLY @146  GOTO Fanyes
IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY @146  GOTO Fanno
IF ~~ THEN REPLY @147  GOTO Later
END

IF ~~ THEN BEGIN Travelling
SAY @148
IF ~~ THEN REPLY @149  GOTO Inquiries
IF ~~ THEN REPLY @150  GOTO Later
IF ~~ THEN REPLY @151 GOTO Intro
END

IF ~~ THEN BEGIN Tough
SAY @152
IF ~~ THEN REPLY @153  GOTO Inquiries
IF ~~ THEN REPLY @154 GOTO Sober
IF ~~ THEN REPLY @155 GOTO Later
IF ~~ THEN REPLY @156  DO ~TakePartyGold(5)~ GOTO Inquiries
END

IF ~~ THEN BEGIN Sober
SAY @157
IF ~~ THEN REPLY @158  GOTO Later
IF ~~ THEN REPLY @159  GOTO Inquiries
END

IF ~~ THEN BEGIN Ego2
SAY @160
IF ~~ THEN REPLY @161  GOTO Confirm
++ @162 + ConfirmA
IF ~~ THEN REPLY @163  GOTO Later
END

IF ~~ ConfirmA
SAY @164
IF ~~ GOTO Confirm
END

IF ~~ THEN BEGIN Along
SAY @165
= @166
= @167
IF ~~ THEN REPLY @168  GOTO LaterB
++ @169 + KetoJoins
IF ~~ THEN REPLY @170  GOTO KetoJoins
END

IF ~~ THEN BEGIN LaterB
SAY @171
IF ~~ THEN DO ~SetGlobal("TalkedToKeto","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN KetoJoins
SAY @172
=
@173
IF ~~ THEN REPLY @174  GOTO KetoJoinsA
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @175  GOTO KetoJoinsB
IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @176  GOTO KetoJoinsC
IF ~~ THEN REPLY @177 DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KetoJoinsA
SAY @178
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KetoJoinsB
SAY @179
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KetoJoinsC
SAY @180
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~Global("TalkedToKeto","GLOBAL",1)~ THEN BEGIN Again
SAY @181 
IF ~~ THEN REPLY @182  GOTO Eh
IF ~~ THEN REPLY @183  GOTO Right
IF ~~ THEN REPLY @184  GOTO Eh
END

IF ~~ THEN BEGIN Eh
SAY @185
IF ~~ THEN REPLY @186  GOTO Right
++ @187 + justcome
IF ~!Class(Player1,BARD)~ THEN REPLY @188  GOTO OkayA
IF ~GLT("Chapter",%bg2_chapter_4%) !Class(Player1,BARD)~ THEN REPLY @189  GOTO OkayA
IF ~Class(Player1,BARD)~ THEN REPLY @190  GOTO OkayB
IF ~GLT("Chapter",%bg2_chapter_4%) Class(Player1,BARD)~ THEN REPLY @191  GOTO OkayB
++ @192 + nogame
END

IF ~~ THEN BEGIN Right
SAY @53
IF ~~ THEN DO ~SetGlobal("TalkedToKeto","GLOBAL",2)~ EXIT
END

IF ~~ justcome
SAY @193
= @194
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ nogame
SAY @195
= @196
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END


IF ~~ THEN BEGIN OkayA
SAY @197
= @198
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN OkayB
SAY @199
= @200
IF ~~ THEN DO ~SetGlobal("KetoJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~Global("TalkedToKeto","GLOBAL",2)~  THEN BEGIN Last
SAY @201
IF ~~ THEN REPLY @202  GOTO Eh
IF ~~ THEN REPLY @203  GOTO Right
END

END






CHAIN FWKETO Hmmph
@204
== FWKETO IF ~!Dead("Jerry")~ THEN @205
== FFCUST08 IF ~!Dead("Jerry")~ THEN @206
// XXX Keto picks our pockets here?
== FWKETO IF ~!Dead("Jerry")~ THEN @207 DO ~TakePartyGold(50)
SetGlobal("TalkedToKeto","GLOBAL",1)~
== FWKETO IF ~Dead("Jerry")~ THEN @208 DO ~TakePartyGold(50) SetGlobal("TalkedToKeto","GLOBAL",1)~
EXIT

CHAIN FWKETO Ego
@209 
=
@210
=
@211
== FWKETO IF ~Gender(Player1,MALE)~ THEN @212
== FWKETO IF ~Gender(Player1,FEMALE)~ THEN @213
= @214
END
IF ~CheckStatGT(Player1,9,CHR)~ THEN REPLY @215  GOTO Fanyes
IF ~CheckStatLT(Player1,10,CHR)~ THEN REPLY @215 GOTO Fanno
IF ~~ THEN REPLY @216  GOTO Ego2
IF ~~ THEN REPLY @217  GOTO Later
IF ~~ THEN REPLY @218  GOTO Ego2



