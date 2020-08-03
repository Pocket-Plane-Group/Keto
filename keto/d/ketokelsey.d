CHAIN IF WEIGHT #30 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoKelsey1", "GLOBAL", 0)~ THEN BJ#KLSY pinstory
@0  DO ~SetGlobal("PGKetoKelsey1", "GLOBAL", 1)~
== BFWKETO @1 
== BJ#KLSY @2
== BFWKeto @3
== BJ#KLSY @4
== BFWKeto @5
= @6
== BJ#KLSY @7
= @8
== BFWKeto @9
= @10
== BJ#KLSY @11
== BFWKeto @12
= @13
== BJ#KLSY @14
== BFWKeto @15
EXIT

CHAIN IF WEIGHT #25 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
OR(2)
AreaType(DUNGEON)
TimeOfDay(NIGHT)
Global("PGKetoKelsey2", "GLOBAL", 0)~ THEN BFWKETO infravision
@16 
DO ~SetGlobal("PGKetoKelsey2", "GLOBAL", 1)~
= @17 
== BJ#KLSY @18 
== BFWKeto @19
= @20
== BJ#KLSY @21
== BFWKeto @22
= @23
== BJ#KLSY @24
= @25
== BFWKeto @26
== BJ#KLSY @27
EXIT

CHAIN IF WEIGHT #32 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
G("PGKetoKnowsHistory",0)
Global("PGKetoKelsey3", "GLOBAL", 0)~ THEN BJ#KLSY Ketostudied
@28 
DO ~SetGlobal("PGKetoKelsey3", "GLOBAL", 1)~
= @29 
== BFWKeto @30 
= @31
== BJ#KLSY @32
= @33
= @34
= @35
== BFWKETO @36
== BJ#KLSY @37
= @38
== BFWKeto @39
= @40
== BJ#KLSY @41
== BFWKETO @42
== BJ#KLSY @43
= @44
== BFWKeto @45
== BJ#KLSY @46
= @47
== BFWKeto @48
== BJ#KLSY @49
== BFWKeto @50
= @51
== BJ#KLSY @52
== BFWKeto @53
== BJ#KLSY @54
== BFWKeto @55
EXIT

CHAIN IF WEIGHT #28 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
Global("PGKetoKelsey4", "GLOBAL", 0)~ THEN BFWKETO scrolls
@56 
DO ~SetGlobal("PGKetoKelsey4", "GLOBAL", 1)~
= @57 
== BJ#KLSY @58 
= @59
== BFWKeto @60
= @61
== BJ#KLSY @62
= @63
== BFWKeto @64
= @65
= @66
== BJ#KLSY @67
= @68
== BFWKeto @69
= @70
= @71
== BJ#KLSY @72
== BFWKeto @73
== BJ#KLSY @74
== BFWKeto @75
= @76
== BJ#KLSY @77
== BFWKeto @78
EXIT

CHAIN IF WEIGHT #20 ~InParty("J#Kelsey")
See("J#Kelsey")
!StateCheck("J#Kelsey",STATE_SLEEPING)
AreaType(DUNGEON)
Global("PGKetoKelsey5", "GLOBAL", 0)~ THEN BFWKETO dungeoncheese
@79 
DO ~SetGlobal("PGKetoKelsey5", "GLOBAL", 1)~
== BJ#KLSY @80 
== BFWKeto @81
== BJ#KLSY @82
== BFWKeto @83
= @84
== BJAN IF ~IsValidForPartyDialogue("Jan")~ THEN @85
== IMOEN2J IF ~IsValidForPartyDialogue("Imoen2")~ THEN @86
== BFWKeto @87
== BJ#KLSY @88
= @89
== BFWKeto @90
== BJ#KLSY @91
== BFWKeto @92
== BJ#KLSY @93
== BFWKeto @94
== BJ#KLSY @95
== BFWKeto @96
== BJ#KLSY @97
== BFWKeto @98
= @99
EXIT

/*

Bleh.

CHAIN IF WEIGHT #35 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoKelsey6", "GLOBAL", 0)~ THEN BJ#KLSY ketoverses
~Keto, are you hoping to write a certain number of verses or find a particularly cozy tavern before our time together is done? Not that I'm eager to part, but what would tell you that it's time to do something else?~ [PGKEKL06]
DO ~SetGlobal("PGKetoKelsey6", "GLOBAL", 1)~
== BFWKeto ~I'm not really sure. I signed on since I figured there would be no shortage of interesting happenings, and I certainly wasn't wrong.~ [FWKETOP7]
= ~Things just keep escalating, so I'm not sure I could leave at any point and not just feel like a complete coward.~
= ~Heh, besides, were I on my own, I'd still be traveling--just alone, and likely very bored.~
== BJ#KLSY ~I know the feeling. But isn't there anyone who you might want to visit? You know, that might... miss you?~
== BFWKeto ~Oh, aye, there are a few wayside inns and taverns I've frequented before that I wouldn't mind dropping by again.  Maybe seek out some of the others in my profession that I'd met and see how they fare.  Of course, finding them would be a task in itself, heh.~
== BJ#KLSY ~That sounds like swapping one kind of wandering for another. How does one traveling bard find another, anyway?~
== BFWKeto ~Mostly by accident.  We tend to stop and perform wherever we can, though, so it's usually just by being at the same place at the right time.~
== BJ#KLSY ~Anything a little more personal than that? Family? Friends who don't sing or play an instrument? Little old ladies who gave you candy when you were a little girl?~
== BFWKeto ~No, not really.  Where I lay my beer is home, heh.  Been that way for a few years now.~
== BFWKeto IF ~OR(2) G("J#KelseyRomanceActive",0) G("J#KelseyRomanceActive",3)~ THEN ~But what about you, Kelsey?  Who's waiting and hoping you'll stop with the adventuring foolishness someday?~
== BFWKETO IF ~OR(2) G("J#KelseyRomanceActive",1) G("J#KelseyRomanceActive",2)~ THEN ~But what about you, Kelsey?  What's on your horizon?~
== BJ#KLSY IF ~OR(2) G("J#KelseyRomanceActive",0) G("J#KelseyRomanceActive",3)~ THEN ~Nobody as special as I would like, I'm afraid. It has been a couple of years since I've been back home, but I'm not sure I can go there and have anything nice to say to my uncle, or my mother, for that matter.~
== BJ#KLSY IF ~OR(2) G("J#KelseyRomanceActive",0) G("J#KelseyRomanceActive",3)~ THEN ~I have my work, and the flexibility to travel with people more interesting than caravan drivers when I feel like it.~
== BJ#KLSY IF ~OR(2) G("J#KelseyRomanceActive",1) G("J#KelseyRomanceActive",2)~ THEN ~I'd like to stay with <CHARNAME>, obviously. It has been a couple of years since I've been back home, but I'm not sure I can go there and have anything nice to say to my uncle, or my mother, for that matter.~
== BJ#KLSY IF ~OR(2) G("J#KelseyRomanceActive",1) G("J#KelseyRomanceActive",2)~ THEN ~I have my work, and the flexibility to travel with people more interesting than caravan drivers when I feel like it. Lucky for me, or I might never have met <CHARNAME> at all.~
== BFWKETO ~Well, then, it doesn't seem your journeys are close to over yet, either.  For all the fondness I have for the road, I can't help but wonder what it's like to have someplace to return home to.~
== BJ#KLSY ~You've not been home since you started on the road? You must have been quite young. Why not check in?~
== BFWKeto ~Doubt I could ever find it.  No, maybe I'll establish a new home for me one of these days... but I don't think it'll be soon.~
== BJ#KLSY ~Find it? Is this some sort of bardic metaphor I'm not getting, Keto?~
== BFWKeto ~Heh, of sorts.~
= ~Oh, don't worry yourself over it, Kelsey.  I'm fine.  Lonely, maybe, but fine.  Come on, the road won't get any shorter while we wonder what to do when we get to the end.~
== BJ#KLSY ~Anybody ever tell you that you're abruptly melancholy?~
== BFWKeto ~Blame it on the wine.~
EXIT

*/

CHAIN IF WEIGHT #38 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoKelsey7", "GLOBAL", 0)~ THEN BJ#KLSY ketoname
@100 
DO ~SetGlobal("PGKetoKelsey7", "GLOBAL", 1)~
== BFWKeto @101 
== BJ#KLSY @102
== BFWKeto @103
== BJ#KLSY @104
== BFWKeto @105
= @106
== BJ#KLSY @107
== BFWKeto @108
= @109
== BJ#KLSY @110
= @111
== BFWKeto @112
== BJ#KLSY @113
== BFWKeto @114
EXIT



CHAIN IF WEIGHT #-1 ~Global("PGKetoKelseyYoshitalk","LOCALS",2)~ THEN BJ#KLSY ketoyoshweep
@115 
DO ~SetGlobal("PGKetoKelseyYoshiTalk", "LOCALS", 3)~
== BFWKETO @116 
== BJ#KLSY @117
== BFWKeto @118
== BJ#KLSY @119
== BFWKeto @120
= @121
== BJ#KLSY @122
== BFWKeto @123
= @124
== BJ#KLSY @125
== BFWKeto @126
= @127
== BJ#KLSY @128
== BFWKETO @129
== BJ#KLSY @130
= @131
= @132 DO ~RestParty()~
EXIT


