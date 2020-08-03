BEGIN ~FWKETOP~

IF ~Global("PGKetoWentAlone","GLOBAL",2)~ imback
SAY @300
= @301
= @302
= @303
= @304
= @305
= @306
+ ~G("PGAskedCait",0)~ + @307 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3) SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @308 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3) SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @309 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3) SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @310 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3)~ + justmove
++ @311 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3)~ + afteryou
++ @312 DO ~SetGlobal("PGKetoWentAlone","GLOBAL",3)~ + WhereTo
END



IF ~GlobalTimerNotExpired("PGKetoReturnsTimer","GLOBAL")~ ketowaitsforcompetition
SAY @313 
= @314
= @315
IF ~~ EXIT
END

// the bit where Keto tracks down the PC after the competition goes here



IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)~ THEN BEGIN KetoUnhappy
SAY @316 
IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
END

IF ~Global("KetoKicked","LOCALS",0)~ THEN BEGIN KickedOut
SAY @317 
IF ~~ THEN REPLY @318 GOTO WhereTo
IF ~~ THEN REPLY @319 DO ~JoinParty()
SetGlobal("KetoKicked","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN WhereTo
SAY @320
IF ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ THEN REPLY @321 GOTO GotIt
IF ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ THEN REPLY @322  DO ~SetGlobal("KetoKicked","LOCALS",1)
SetGlobal("KetoIsElsewhere","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN GotIt
SAY @323
IF ~~ THEN DO ~SetGlobal("KetoKicked","LOCALS",1)
MoveGlobal("AR0704","Keto",[464.658])~ EXIT
END

IF ~Global("KetoKicked","LOCALS",1)~ THEN BEGIN MeetAgain
SAY @324 
=
@325
IF ~~ THEN REPLY @326 DO ~SetGlobal("KetoKicked","LOCALS",0)
JoinParty()~ EXIT
IF ~~ THEN REPLY @327 EXIT
END

IF ~~ cait
SAY @328
= @329
= @330
+ ~G("PGAskedCait",0)~ + @307 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @308 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @309 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @310 + justmove
++ @311 + afteryou
++ @312 + WhereTo
END

IF ~~ memories
SAY @331
= @332
= @333
+ ~G("PGAskedCait",0)~ + @307 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @308 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @309 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @310 + justmove
++ @311 + afteryou
++ @312 + WhereTo
END

IF ~~ change
SAY @334
= @335
+ ~G("PGAskedCait",0)~ + @307 DO ~SetGlobal("PGAskedCait","GLOBAL",1)~ + cait
+ ~G("PGAskedMemories",0)~ + @308 DO ~SetGlobal("PGAskedMemories","GLOBAL",1)~ + memories
+ ~G("PGAskedAdopt",0)~ + @309 DO ~SetGlobal("PGAskedAdopt","GLOBAL",1)~ + change
++ @310 + justmove
++ @311 + afteryou
++ @312 + WhereTo
END

IF ~~ justmove
SAY @336
= @337
IF ~~ DO ~GiveItemCreate("PGKCLOAK","Keto",1,1,1)
GiveItemCreate("PGKLTRS","Keto",1,1,1)
SetGlobal("KetoKicked","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ afteryou
SAY @338
IF ~~ DO ~GiveItemCreate("PGKCLOAK","Keto",1,1,1)
GiveItemCreate("PGKLTRS","Keto",1,1,1)
SetGlobal("KetoKicked","LOCALS",0)
JoinParty()~ EXIT
END


