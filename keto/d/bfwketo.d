// NEED TO USE THESE CUTOFFS:

// PGKetoSober=1
// "PGAerieKetoBreakup","GLOBAL",1)
// Global("PGPCJerkToKeto","GLOBAL",1)
// PGKetoKnows>0
// PGKetoKnowsHistory



BEGIN BFWKETO

CHAIN IF WEIGHT #-1 ~Global("PGAerieKetoShowdown","GLOBAL",1)~ THEN AERIEJ ketoshowdown
@400
DO ~SetGlobal("PGAerieKetoShowdown","GLOBAL",2)
SetGlobal("PGAerieKetoBreakup","GLOBAL",1)~
== FWKETOJ @401 
== AERIEJ @402
== FWKETOJ @403
= @404
== AERIEJ @405
== FWKETOJ @406
== AERIEJ @407
= @408
== FWKETOJ @409
// == AERIEJ ~So that's it, isn't it?  Y-you weren't good enough for him, so now you have to tear us apart?~
== AERIEJ @410
== FWKETOJ @411
== AERIEJ @412
== FWKETOJ @413
== AERIEJ @414
== FWKETOJ @415
== AERIEJ @416
== FWKETOJ @417
== AERIEJ @418
== FWKETOJ @419
== AERIEJ @420
== HAERDAJ @421
= @422
== FWKETOJ @423
== HAERDAJ @424
== FWKETOJ @425
EXIT

CHAIN
IF
~Global("PGGoodLuckAno", "LOCALS", 1)~ THEN BFWKETO goodluckano
@426  DO ~SetGlobal("PGGoodLuckAno", "LOCALS", 2)~
== BANOMEN @427
= @428
== BFWKeto @429
== BANOMEN @430
== BFWKETO @431
== BANOMEN @432
== BFWKETO @433
== BANOMEN @434
== BFWKETO @435
== BANOMEN @436
== BFWKETO @437
== BANOMEN @438
== BFWKETO @439
EXIT


CHAIN
IF WEIGHT #-1 ~Global("PGWakeUpKeto","GLOBAL",2)~ THEN BANOMEN getup
@440
DO ~SetGlobal("PGWakeUpKeto","GLOBAL",3)~
== BFWKETO @441 
== BANOMEN @442
== BFWKETO @443
== BANOMEN @444
= @445
== BFWKETO @446
= @447
== BANOMEN @448
EXIT


CHAIN IF ~Global("PGKetoNightYoshiSong","GLOBAL",1)~ THEN BFWKETO nightyoshisong
@449 
DO ~SetGlobal("PGKetoNightYoshiSong","GLOBAL",2)~
== BYOSHIM @450
== BFWKeto @451
= @452
== BYOSHIM @453
== BFWKETO @454
= @455
= @456
== BYOSHIM @457
== BFWKETO @458
DO ~RestParty()~
EXIT


CHAIN IF ~Global("PGKetoJanBattle","LOCALS",1) ~ THEN BFWKETO twasfun
@459 
DO ~SetGlobal("PGKetoJanBattle","LOCALS",2)~
== BJAN @460
= @461
== BFWKeto @462
== BJAN @463
== BFWKeto @464
== BJAN @465
== BFWKeto @466
== BJAN @467
== BFWKeto @432
== BJAN @468
EXIT

CHAIN
IF WEIGHT #-1 ~Global("PPGMazzyKeto2","GLOBAL",2)~ THEN BMAZZY HairTalk2
@469 DO ~SetGlobal("PPGMazzyKeto2","GLOBAL", 3)~
== BFWKeto @470 
== BMAZZY @471
== BFWKeto @472
== BMAZZY @473
== BFWKeto @474
== BMAZZY @475
== BFWKeto @476
== BMAZZY @477
== BFWKeto @478 DO ~RestParty()~
EXIT

CHAIN IF ~G("PGKetoYoshiFirstWake",2)~ THEN BFWKETO bushesrest
@479 
DO ~SG("PGKetoYoshiFirstWake",3)~
== BYOSHIM @480
= @481
== BYOSHIM IF ~AreaType(OUTDOOR)~ THEN @482
== BFWKETO @483
== BYOSHIM @484
== BFWKETO @485
= @486
= @487
== BYOSHIM @488
EXIT

CHAIN IF ~Global("PGKetoKeldornBoozyWake","GLOBAL",2)~ THEN BFWKETO keldornboozewake
@489 
DO ~SetGlobal("PGKetoKeldornBoozyWake","GLOBAL",3)~
== BKeldor @490
= @491
== BFWKeto @492
== BKeldor @493
= @494
== BFWKeto @495
== BKeldor @496
== BFWKeto @497
== BKeldor @498
== BFWKeto @499
= @500 DO ~RealSetGlobalTimer("PGKetoMockKeldornTimer","GLOBAL",3000)~
== BKeldor @501
EXIT

CHAIN IF ~Global("PGKetoKeldornMockWake","GLOBAL",2)~ THEN BFWKETO keldornmockwake
@502 
DO ~SetGlobal("PGKetoKeldornMockWake","GLOBAL",3)~
== BKELDOR @503
== BFWKETO @504
== BKELDOR @505
== BFWKETO @506
== BKELDOR @507
= @508
== BFWKETO @509
== BKELDOR @510
== BFWKETO @511
== BKELDOR @512
== BFWKETO @513
== BKELDOR @514
== BFWKETO @515
== BKELDOR @516
= @517
== BFWKETO @518
== BKELDOR @519
= @520
EXIT

// Regular banters start here


CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("KetoHaerDalis","LOCALS",0)~ THEN BFWKETO KetoSeesHD
@521 
DO ~SetGlobal("KetoHaerDalis","LOCALS",1)~
== BHAERDA
@522
== BFWKETO
@523
=
@524
== BHAERDA @525
== BHAERDA IF ~Global("HaerDalisGemQuest","GLOBAL",1)
!Global("PlanarPrison","GLOBAL",2)~ THEN
@526
== BHAERDA @527
== BFWKETO @528
== BHAERDA @529
== BFWKETO @530
EXIT


CHAIN IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PGKetoPCDrinkTalk","LOCALS",0)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN BFWKETO pcdrinktalk
@531 
= @532 
END
++ @533 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1)~ + drink2
++ @534 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1)~ + drink3
++ @535 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1)~ + drink4
++ @536 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1)~ + drink5
++ @537 + drink6
++ @538 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1)~ + drink7
++ @539 DO ~SetGlobal("PGKetoPCDrinkTalk","LOCALS",1) SG("PGPCNoDrink",1)~ + neverdrink

APPEND BFWKETO


IF ~~ neverdrink
SAY @540 = @541
IF ~~ GOTO drink2a
END

IF ~~ drink2
SAY @542
IF ~~ GOTO drink2a
END

IF ~~ drink2a
SAY @543
+ ~G("PGPCNoDrink",0)~ + @544 + drink8
++ @545 + drink9
++ @546 + drink10
++ @547 + drink11
++ @548 + drink12
END

IF ~~ drink3
SAY @549
+ ~G("PGPCNoDrink",0)~ + @544 + drink8
++ @550 + drink13
++ @545 + drink9
++ @546 + drink10
++ @551 + drink14
++ @552 + drink16
END

IF ~~ drink4
SAY @553
++ @545 + drink9
++ @554 + drink15
++ @547 + drink11
++ @548 + drink12
++ @555 + drink16
END

IF ~~ drink5
SAY @556
++ @557 + drink17
++ @558 + drink7
++ @547 + drink11
++ @545 + drink9
END

IF ~~ drink6
SAY @559
IF ~~ EXIT
END

IF ~~ drink7
SAY @560
IF ~~ DO ~SetGlobal("PGPCJerkToKeto","GLOBAL",1)~ EXIT
END

IF ~~ drink8
SAY @561
=
@562
=
@563
++ @564 + drink16
++ @565 + drink18
++ @566 + drink19
++ @567 + drink20
END

IF ~~ drink9
SAY @568
=
@569
++ @564 + drink16
++ @570 + drink18
++ @566 + drink19
++ @571 + drink20
END

IF ~~ drink10
SAY @572
=
@573
IF ~~ EXIT
END

IF ~~ drink11
SAY @574
=
@575
IF ~~ EXIT
END

IF ~~ drink12
SAY @576
++ @577 + drink21
++ @578 + drink17
++ @579 + drink19
END

IF ~~ drink13
SAY @580
=
@581
++ @567 + drink20
++ @564 + drink16
++ @565 + drink18
++ @582 + drink19
END

IF ~~ drink14
SAY @583
IF ~~ DO ~SetGlobal("PGPCJerkToKeto","GLOBAL",1)~ EXIT
END

IF ~~ drink15
SAY @584
=
@585
++ @586 + drink22
++ @564 + drink16
++ @565 + drink18
++ @582 + drink19
++ @567 + drink20
END

IF ~~ drink16
SAY @587
++ @588 + drink23
++ @589 + drink20
++ @590 + drink24
++ @582 + drink19
++ @591 + drink18
END

IF ~~ drink17
SAY @592
IF ~~ EXIT
END

IF ~~ drink18
SAY @593
++ @594 + drink25
++ @595 + drink17
++ @596 + drink20
++ @597 + drink19
END

IF ~~ drink19
SAY @598
++ @599 + drink22
++ @600 + drink18
++ @571 + drink20
END

IF ~~ drink20
SAY @601
= @602
=
@603
IF ~~ EXIT
END

IF ~~ drink21
SAY @604
IF ~~ EXIT
END

IF ~~ drink22
SAY @605
++ @565 + drink18
++ @571 + drink20
++ @582 + drink19
++ @606 + drink17
END

IF ~~ drink23
SAY @607
= @608
= @609
IF ~~ EXIT
END

IF ~~ drink24
SAY @610
= @609
IF ~~ EXIT
END

IF ~~ drink25
SAY @611
++ @612 + drink17
++ @613 + drink20
++ @614 + drink19
END

END

/*
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("c6bodhi")
Global("PGImoenBanner", "LOCALS", 0)~ THEN BFWKETO bannerimoen
~What's wrong, Imoen?~ [FWKETO71]
DO ~SetGlobal("PGImoenBanner", "LOCALS", 1)~
== IMOEN2J ~Wrong? Nothing's wrong. This is a banner day, Keto. I can feel the excitement, can't you?~
== BFWKETO ~I'm sorry, that was a really stupid question to ask.  What I mean is, are you doing all right?~
== IMOEN2J ~Don't worry yourself over it.  We'll get all of this worked out. I trust <CHARNAME>.~
EXIT
*/

CHAIN IF ~InParty("Keldorn")
      See("Keldorn")
      !StateCheck("Keldorn",STATE_SLEEPING)
      Global("ketoorder","LOCALS",0) ~ THEN BFWKETO ordertalk
@615  DO ~SetGlobal("Ketoorder","LOCALS",1)~
== BKELDOR @616
== BFWKeto @617
== BKELDOR @618
== BFWKeto @619
== BKELDOR @620
= @621
== BFWKeto @622
== BKELDOR @623
= @624
== BFWKeto IF ~!G("PGKetoKnowsHistory",1)~ THEN @625
== BFWKeto IF ~G("PGKetoKnowsHistory",1)~ THEN @626
EXIT



CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
!Dead("c6bodhi")
Global("PGImoengoodover", "LOCALS", 0)~ THEN BFWKETO imogoodover
@627 
DO ~SetGlobal("PGImoengoodover", "LOCALS", 1)~
== IMOEN2J @628
= @629
== BFWKETO @630
= @631
== IMOEN2J @632
= @633
EXIT

/*
// XXX put in some scripting for this for Imoen in Keto BCS?

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
HPLT("Imoen",15)
Global("PGKetoImoenhurt", "LOCALS", 0)~ THEN BFWKETO imohurt
~Imoen, here, drink this. It'll help you regain your strength.~
DO ~SetGlobal("PGKetoImoenhurt", "LOCALS", 1)~
== IMOEN2J ~Thanks, but I'll be fine.~
= ~Oooh. I'll be all right after a little healing.~
== BFWKETO ~Don't worry, there's more where that came from. Just a sip, you'll be up and about again.~
== IMOEN2J ~Mmmph... oooh, that is better already.  Thanks.~
== BFWKETO ~A little wine to warm the blood is the first step to quick recovery.~
= ~Now could we get some real help over here?~
EXIT
*/

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("PGNaliaKeto4", "GLOBAL", 1)
Global("PGNaliaKeto5", "LOCALS", 0)~ THEN BFWKeto BeggarTalk2
@634  DO ~SetGlobal("PGNaliaKeto5", "LOCALS", 1)~
== BNALIA @635
== BFWKeto @636
= @637
== BNALIA @638
== BFWKeto @639
= @640
= @641
== BNALIA @432
== BFWKeto @642
== BNALIA @643
= @644
== BFWKeto @645
== BNALIA @646
== BFWKeto @647
EXIT



CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
TimeOfDay(DAY)
AreaType(OUTDOOR)
Global("PGKetoImoenoutdoor", "LOCALS", 0)~ THEN BFWKETO brightday
@648 
DO ~SetGlobal("PGKetoImoenoutdoor", "LOCALS", 1)~
= @649 
== IMOEN2J @650
== BFWKETO @651
= @652
== IMOEN2J @653
== BFWKETO @654
== IMOEN2J IF ~!Dead("c6bodhi")~ THEN @655
== IMOEN2J IF ~!Dead("c6bodhi")~ THEN @656
== BFWKETO IF ~!Dead("c6bodhi")~ THEN @657
== IMOEN2J IF ~!Dead("c6bodhi")~ THEN @658
== BFWKETO IF ~!Dead("c6bodhi")~ THEN @659
== IMOEN2J IF ~Dead("c6bodhi")~ THEN @660
== BFWKETO IF ~Dead("c6bodhi")~ THEN @661
== BFWKETO IF ~Dead("c6bodhi")~ THEN @662
== IMOEN2J IF ~Dead("c6bodhi")~ THEN @663
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("PGYoshiGreatFame", "GLOBAL", 0)~ THEN BFWKETO yoshinooneheard
@664 
DO ~SetGlobal("PGYoshiGreatFame", "GLOBAL", 1)~
== BYOSHIM @665
= @666
== BFWKETO @667
== BYOSHIM @668
== BFWKETO @669
== BYOSHIM @670
== BFWKETO @671
EXIT

CHAIN IF WEIGHT #6
~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGYoshiGreatFame", "GLOBAL", 1)~ THEN BYOSHIM ketodebts
@672
DO ~SetGlobal("PGYoshiGreatFame", "GLOBAL", 2)~
== BFWKETO @673 
== BYOSHIM @674
== BFWKETO @675
== BYOSHIM @676
== BFWKETO @677
== BYOSHIM @678
== BFWKETO @679
== BYOSHIM @680
== BFWKETO @681
== BYOSHIM @682
== BFWKETO @683
= @684
EXIT



// XX NEED FLUTEY BIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
AreaType(DUNGEON)
Global("PGYoshiWhistle", "LOCALS", 0)~ THEN BFWKETO whistlinginthedark
@685 
DO ~SetGlobal("PGYoshiWhistle", "LOCALS", 1)~
== BYOSHIM @686
== BFWKETO @687
== BYOSHIM @688
== BFWKETO @689
= @690
== BYOSHIM @691
== BFWKETO @692
== BYOSHIM @693
== BFWKETO @694
== BYOSHIM @695
EXIT

CHAIN
IF WEIGHT #6 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
OR(2)
TimeOfDay(NIGHT)
TimeOfDay(DUSK)
OR(2)
AreaType(DUNGEON)
AreaType(FOREST)
Global("PGKetoYoshimoEyes", "LOCALS", 0)~ THEN BYOSHIM ketoeyeing
@696
DO ~SetGlobal("PGKetoYoshimoEyes", "LOCALS", 1)~
= @697
== BFWKETO @698 
== BYOSHIM @699
== BFWKETO @700
== BYOSHIM @701
EXIT



CHAIN IF WEIGHT #16 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
OR(4)
!InParty("Aerie")
GlobalLT("LoveTalk","LOCALS",6)
Global("HaerDalisRomanceActive","GLOBAL",0)
Global("HaerDalisRomanceActive","GLOBAL",3)
Global("PGHDPastMisunder", "GLOBAL", 0)~ THEN BHAERDA pastmisunderstandings
@702
DO ~SetGlobal("PGHDPastMisunder", "GLOBAL", 1)~
== BFWKETO @703 
== BHAERDA @704
== BFWKETO @705
== BHAERDA @706
EXIT

CHAIN IF
~InParty("Anomen")
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
See("Anomen")
GlobalGT("TalkedCor","GLOBAL",0)
!Dead("Saerk")
!StateCheck("Anomen",STATE_SLEEPING)
Global("PGSorryMoira", "LOCALS", 0)~ THEN BFWKETO SorryMoira
@707
DO ~SetGlobal("PGSorryMoira", "LOCALS", 1)~
== BANOMEN @708
== BFWKETO @709
== BANOMEN @710
== BFWKETO @711
== BANOMEN @712
= @713
== BFWKETO @714
EXIT

CHAIN IF ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGdrinkchallenge","LOCALS",0)~ THEN BKORGAN alechallenge
@715
= @716 DO ~SetGlobal("PGdrinkchallenge","LOCALS",1)~
== BFWKETO @717 
== BKORGAN @718
== BFWKeto @719
== BKORGAN @720
== BFWKeto @721 = @722
== BKORGAN @723
== BFWKeto @724
== BKORGAN @725
== BFWKeto @726
== BKORGAN @727
= @728
== BFWKeto @729
== BKORGAN @730
= @731
= @732
== BFWKeto @733
== BKORGAN @734
EXIT


CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("PGHDPastMisunder", "GLOBAL", 1)~ THEN BFWKETO donttrusthd
@735 
DO ~SetGlobal("PGHDPastMisunder", "GLOBAL", 2)~
== BHAERDA @736
== BFWKETO @737
== BHAERDA @738
== BFWKETO @739
== BHAERDA @740
== BFWKETO @741
== BHAERDA @742
== BFWKETO @743
== BHAERDA @744
= @745
= @746
== BFWKETO @747
EXIT


CHAIN IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,15)
Global("PGKetoDidHighRep","LOCALS",0)~ THEN BFWKETO highrep
@748 
END
IF ~~ REPLY @749 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep2
IF ~~ REPLY @750 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep6
IF ~~ REPLY @751 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep8
IF ~~ REPLY @752 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep4
IF ~~ REPLY @753 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep3
IF ~~ REPLY @754 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep5
IF ~~ REPLY @755 DO ~SetGlobal("PGKetoDidHighRep","LOCALS",1)~ + highrep7

APPEND BFWKETO
IF ~~ highrep2
SAY @756
IF ~~ EXIT
END

IF ~~ highrep3
SAY @757
IF ~~ EXIT
END

IF ~~ highrep4
SAY @758
IF ~~ EXIT
END

IF ~~ highrep5
SAY @759
IF ~~ EXIT
END

IF ~~ highrep6
SAY @760 = @761
IF ~~ EXIT
END

IF ~~ highrep7
SAY @762
IF ~~ EXIT
END

IF ~~ highrep8
SAY @763 = @764
IF ~~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
ReputationGT(Player1,3)
ReputationLT(Player1,8)
Global("PGKetoDidLowRep","LOCALS",0)~ lowrep1
SAY @765 
IF ~~ REPLY @766 DO ~SetGlobal("PGKetoDidLowRep","LOCALS",1)~ + lowrep2
IF ~~ REPLY @767 DO ~SetGlobal("PGKetoDidLowRep","LOCALS",1)~  +  lowrep3
IF ~~ REPLY @768 DO ~SetGlobal("PGKetoDidLowRep","LOCALS",1)~ +  lowrep4
IF ~~ REPLY @769 DO ~SetGlobal("PGKetoDidLowRep","LOCALS",1)~ + lowrep5
IF ~~ REPLY @770 DO ~SetGlobal("PGKetoDidLowRep","LOCALS",1)~ + lowreppower
IF ~~ REPLY @771 + lowrep6
END

IF ~~ lowreppower
SAY @772
IF ~~ EXIT
END

IF ~~ lowrep2
SAY @773
IF ~~ EXIT
END

IF ~~ lowrep3
SAY @774
IF ~~ EXIT
END

IF ~~ lowrep4
SAY @775
IF ~~ EXIT
END

IF ~~ lowrep5
SAY @776
IF ~~ EXIT
END

IF ~~ lowrep6
SAY @777
IF ~~ EXIT
END

END

CHAIN
IF WEIGHT #34
~InParty("Keto")
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoAnomenFearful", "LOCALS", 0)~ THEN BANOMEN ketofearfulfight
@778
DO ~SetGlobal("PGKetoAnomenFearful", "LOCALS", 1)~
= @779
== BFWKETO @780 
== BANOMEN @781
= @782
== BFWKETO @783
== BANOMEN @784
== BFWKETO @785
== BANOMEN @786
EXIT

CHAIN
IF
~InParty("Anomen")
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("PGBelayThatOrder", "LOCALS", 0)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN BFWKETO belay
@787  DO ~SetGlobal("PGBelayThatOrder", "LOCALS", 1)~
== BANOMEN @788
= @789
== BFWKETO @790
== BANOMEN @791
== BFWKETO @792
== BANOMEN @793
EXIT

CHAIN IF
~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("PGKetoPoeTalk","LOCALS",0)~ THEN BFWKETO poestory
@794 
= @795 
END
++ @796 + poerepeat
++ @797 DO ~SetGlobal("PGKetoPoeTalk","LOCALS",1)~ + poetoolong
++ @798 DO ~SetGlobal("PGKetoPoeTalk","LOCALS",1)~ + poefromyou
++ @799 DO ~SetGlobal("PGKetoPoeTalk","LOCALS",1)~ + poepayyou

APPEND BFWKETO
IF ~~ poerepeat
SAY @800
IF ~~ EXIT
END

IF ~~ poetoolong
SAY @801
IF ~~ GOTO poemain
END

IF ~~ poefromyou
SAY @802
IF ~~ GOTO poemain
END

IF ~~ poepayyou
SAY @803
IF ~~ EXIT
END

IF ~~ poemain
SAY @804
= @805
= @806
= @807
= @808
= @809
= @810
= @811
++ @812 + poerunt
++ @813 + poeend
++ @814 + poeallthetime
++ @815 + poepayyou
END

IF ~~ poeend
SAY @816
IF ~~ GOTO poemain2
END

IF ~~ poerunt
SAY @817
IF ~~ GOTO poemain2
END

IF ~~ poeallthetime
SAY @818
IF ~~ GOTO poemain2
END

IF ~~ poemain2
SAY @819
= @820
= @821
IF ~~ EXIT
END

END

CHAIN IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
!G("PGKetoKnowsHistory",1)
Global("PGKetoNameGame","LOCALS",0)~ THEN BFWKETO name1
@822 
END
IF ~~ REPLY @823 + name2
IF ~~ REPLY @824 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name3
IF ~~ REPLY @825 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name4
IF ~~ REPLY @826 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name5
IF ~~ REPLY @827 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name6
IF ~~ REPLY @828 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name7
IF ~~ REPLY @829 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name8
IF ~~ REPLY @830 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name9
IF ~~ REPLY @831 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name10
IF ~~ REPLY @832 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name11
IF ~~ REPLY @833 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name12
IF ~~ REPLY @834 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name13
IF ~~ REPLY @835 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name14
IF ~~ REPLY @836 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name28
IF ~~ REPLY @837 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name29
IF ~~ REPLY @838 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name30
IF ~~ REPLY @839 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name31
IF ~~ REPLY @840 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name32
IF ~~ REPLY @841 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name15
IF ~~ REPLY @842 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name16
IF ~~ REPLY @843 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + name17
++ @844 DO ~SetGlobal("PGKetoNameGame","LOCALS",1)~ + namenotcoming

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("PGYoshiStory", "LOCALS", 0)~ THEN BFWKETO YoshStory
@845 
DO ~SetGlobal("PGYoshiStory", "LOCALS", 1)~
== BYOSHIM @846
== BFWKETO @847
= @848
== BYOSHIM @849
== BFWKETO @850
== BYOSHIM @851
== BFWKETO @852
== BYOSHIM @853
== BFWKETO @854
== BYOSHIM @855
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("PGYoshiKetoLongwayhome", "LOCALS", 0)~ THEN BFWKETO yoshilongway
@856 
DO ~SetGlobal("PGYoshiKetoLongwayhome", "LOCALS", 1)~
== BYOSHIM @857
= @858
== BFWKETO @859
== BYOSHIM @860
== BFWKETO @861
== BYOSHIM @862
== BFWKETO @863
== BYOSHIM @864
= @865
== BFWKETO @866
= @867
== BYOSHIM @868
== BFWKETO @869
EXIT



CHAIN
IF WEIGHT #16 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGHDscarcely","LOCALS",0)~ THEN BHAERDA scarcely
@870
DO ~SetGlobal("PGHDscarcely","LOCALS",1)~
== BFWKETO @871 
== BHAERDA @872
== BFWKETO @873
== BHAERDA @874
== BFWKETO @875
== BHAERDA @876
EXIT

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ketovalyjoke","LOCALS",0)~ THEN BFWKeto ketovalyjoke1
@877 
DO ~SetGlobal("ketovalyjoke","LOCALS",1)~
== BVALYGA @878
== BFWKeto @879 
=
@880
=
@881
== BVALYGA
@882
== BFWKeto
@883
== BVALYGA @884
== BFWKeto @885
= @886
== BVALYGA @887
EXIT

CHAIN
IF WEIGHT #5 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
TimeGT(18)
TimeLT(23)
!Dead("Lavok02")
AreaType(OUTDOOR)
Global("valketosun","LOCALS",0)~ THEN BVALYGA valketosun
@888
DO ~SetGlobal("valketosun","LOCALS",1)~
== BFWKeto @889 
== BVALYGA
@890
== BFWKeto
@891
= @892
== BVALYGA
@893
== BFWKeto
@894
== BVALYGA
@895
== BFWKeto
@896
= @897
== BVALYGA
@898
EXIT


CHAIN IF ~InParty("Edwin")
      See("Edwin")
      Gender("Edwin",FEMALE)
      !StateCheck("Edwin",STATE_SLEEPING)
      Global("ketopeaked","LOCALS",0)~ THEN BFWKETO yapeaked
   @899 
DO ~SetGlobal("ketopeaked","LOCALS",1)~
== BEDWIN @900
== BFWKeto @901 = @902
= @903
== BEDWIN @904
== BFWKeto @905
== BEDWIN @906
EXIT


CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
      Global("ketokorganaletalk","LOCALS",0)~ THEN BFWKETO aletalk
@907  DO ~SetGlobal("Ketokorganaletalk","LOCALS",1)~
== BKORGAN @908
== BFWKeto @909
== BKORGAN @910
= @911
== BFWKeto @912
= @913
== BKORGAN @914
EXIT

CHAIN IF WEIGHT #14 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGedwstudy","LOCALS",0) ~ THEN BEDWIN studying
@915
DO ~SetGlobal("PGedwstudy","LOCALS",1)~
== BFWKeto @916 
== BEDWIN @917
== BFWKeto @918
== BEDWIN @919
== BFWKeto @920
== BEDWIN @921
== BFWKeto @922
== BEDWIN @923
== BFWKeto @924
== BEDWIN @925
== BFWKeto @926
= @927
== BEDWIN @928
EXIT

CHAIN IF WEIGHT #5 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
TimeGT(5)
TimeLT(10)
AreaType(OUTDOOR)
Global("PGcerndsuntalk","LOCALS",0) ~ THEN BCERND suntalk
@929
DO ~SetGlobal("PGcerndsuntalk","LOCALS",1)~
== BFWKETO @930 
= @931 
== BCERND @932
== BFWKETO @933
== BCERND @934
= @935
== BFWKETO @936
== BCERND @937
== BFWKETO @938
== BCERND @939
EXIT

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("ketocerndwc","LOCALS",0) ~ THEN BFWKETO worldtalk
@940 
DO ~SetGlobal("Ketocerndwc","LOCALS",1)~
== BCERND @941
= @942
== BFWKETO @943
EXIT

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
AreaType(FOREST)
Global("ketocerndft","LOCALS",0)~ THEN BFWKETO foresttalk1
@944 
DO ~SetGlobal("Ketocerndft","LOCALS",1)~
== BCERND @945
== BFWKETO @946
== BCERND @947
== BFWKeto @948
== BCERND @949
= @950
== BFWKeto @951
== BCERND @952
== BFWKeto @953
== BCERND @954
= @955
== BFWKETO @956
EXIT



CHAIN IF ~InParty("Jan")
TimeOfDay(MORNING)
AreaType(OUTDOOR)
See("Jan")
!StateCheck("Jan",STATE_SLEEPING)
Global("jankgoodday","LOCALS",0) ~ THEN BFWKETO isgoodday
@957 
DO ~SetGlobal("jankgoodday","LOCALS",1)~
== BJAN @958
== BFWKeto @959
== BJAN @960
= @961
== BFWKeto @962
== BJAN @963
= @964
== BFWKeto @965
== BJAN @966
= @967
== BFWKeto
@968
== BJAN @969
== BFWKETO @970
= @971
== BJAN @972
= @973
= @974
== BFWKETO @975
EXIT

/*
Too much wish fulfillment.
CHAIN IF ~InParty("Jan")
      See("Jan")
      !StateCheck("Jan",STATE_SLEEPING)
      Global("PGketojanappreciate","LOCALS",0) ~ THEN BJAN appreciate
~You know, Keto, I don't think you quite appreciate all the merits of a turnip. I drew up a detailed chart but decided that the quickest way to your heart was through your gullet, so let's talk about turnip beer.
Despite what you may have heard, it's nutritious, tasty, promotes strong nails and healthy hair, and has a bigger kick than Cousin Bertie's five-legged mule. Now, just look at this specimen--~
DO ~SetGlobal("PGketojanappreciate","LOCALS",1)~
== BFWKETO ~Oh, lovely.  Let me see that a moment, would you?~ [FWKETO95]
== BJAN ~Of course, good to know you're developing an eye for vegetables. Now, as I was saying, if you'll look at the sheen on that turnip and examine the delicate marbling, you'll see--hmmmrk!~
== BFWKeto ~No.~
= ~More.~
= ~Turnips.~
= ~Please.~
== BJAN ~Mmmmrph.~
== BFWKETO ~Enjoy munching your turnip for me, Jan.~
EXIT

*/



CHAIN IF ~See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
PartyGoldGT(30000)
GGT("Chapter",%bg2_chapter_4%)
Global("PGKetoNuraStory","LOCALS",0)~ THEN BFWKETO nuratale
@976 
END
++ @977 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nuraalways
++ @978 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nurabehind
++ @979 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nuramain
++ @980 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nurasilent
++ @981 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nurarewards
++ @982 DO ~SetGlobal("PGKetoNuraStory","LOCALS",1)~ + nurafear

APPEND BFWKETO
IF ~~ nurasilent
SAY @983
IF ~~ EXIT
END

IF ~~ nurabehind
SAY @984
IF ~~ GOTO nuramain
END

IF ~~ nurafear
SAY @985
= @986
IF ~~ GOTO nuramain
END

IF ~~ nurarewards
SAY @987
IF ~~ GOTO nuramain
END

IF ~~ nuraalways
SAY @988
IF ~~ GOTO nuramain
END

IF ~~ nuramain
SAY @989
= @990
= @991
= @992
= @993
= @994
= @995
= @996
= @997
= @998
= @999
= @1000
= @1001
++ @1002 + nurabore
++ @1003 + nuranoble
++ @1004 + nurasmallvalue
++ @1005 + nuragreedy
++ @1006 + nuraanymore
END

IF ~~ nurabore
SAY @1007
= @1008
IF ~~ EXIT
END

IF ~~ nuranoble
SAY @1009
IF ~~ EXIT
END

IF ~~ nurasmallvalue
SAY @1010
= @1011
IF ~~ EXIT
END

IF ~~ nuragreedy
SAY @1012
IF ~~ EXIT
END

IF ~~ nuraanymore
SAY @1013
= @1014
= @1015
IF ~~ EXIT
END

END

CHAIN IF ~InParty("Jan")
      See("Jan")
      !StateCheck("Jan",STATE_SLEEPING)
      Global("PGkremindme","LOCALS",0) ~ THEN BFWKETO remindme
@1016 
DO ~SetGlobal("PGkremindme","LOCALS",1)~
== BJAN @1017
== BFWKeto @1018
== BJAN @1019
== BFWKeto @1020
== BJAN @1021
== BFWKeto @1022
== BJAN @1023
== BFWKeto @1024
== BJAN @1025
== BFWKeto @1026
== BJAN @1027
== BFWKeto @1028
= @1029
== BJAN @1030

== BFWKeto @1031
== BJAN @1032
EXIT


CHAIN IF ~InParty("Keto")
      See("Keto")
      !StateCheck("Keto",STATE_SLEEPING)
      Global("PGkeldartist","LOCALS",0)~ THEN BKELDOR artisttalk
@1033
= @1034 DO ~SetGlobal("PGkeldartist","LOCALS",1)~
== BFWKETO @1035 
== BKELDOR @1036
== BFWKeto @1037
== BKELDOR @1038
== BFWKeto @1039
== BKELDOR @1040
== BFWKeto @1041
= @1042
== BKELDOR @1043
== BFWKETO @1044
EXIT


// XXX not if Keto knows her past

CHAIN IF WEIGHT #2 ~InParty("Keto")
      See("Keto")
      !G("PGKetoKnowsHistory",1)
      !StateCheck("Keto",STATE_SLEEPING)
      Global("ketoowie","LOCALS",0) ~ THEN BKELDOR owietalk
@1045
DO ~SetGlobal("ketoowie","LOCALS",1)~
== BFWKETO @1046 
== BKELDOR @1047
== BFWKeto @1048
== BKELDOR @1049
= @1050
== BFWKeto @1051
= @1052
= @1053
== BKELDOR  @1054
== BFWKeto @1055
== BKELDOR @1056
== BFWKeto @1057
= @1058
== BKELDOR @1059
EXIT


CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
AreaType(CITY)
Global("ketovalct","LOCALS",0)~ THEN BFWKeto ketovalcitytalk
@1060 
= @1061  DO ~SetGlobal("ketovalct","LOCALS",1)~
== BVALYGA @1062 =
@1063
== BFWKETO @1064
== BVALYGA @1065
== BFWKeto @1066 = @1067
EXIT



CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
AreaType(FOREST)
Global("ketocerndft2","LOCALS",0) ~ THEN BFWKeto foresttalk2
@1068 
DO ~SetGlobal("ketocerndft2","LOCALS",1)~
== BCERND @1069
== BFWKeto @1070
== BCERND @1071
= @1072
== BFWKETO @1073
EXIT

CHAIN
IF WEIGHT #49 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGJaheiraKeto1", "LOCALS",0)~ THEN BJAHEIR PecanTalk
@1074 DO ~SetGlobal("PGJaheiraKeto1", "LOCALS",1)~
== BFWKeto @1075 
== BJAHEIR @1076
== BFWKeto @1077
== BJAHEIR @1078
== BFWKeto @1079
== BJAHEIR @1080
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(FOREST)
Global("PGJaheiraKeto2","LOCALS", 0)~ THEN BFWKeto QuietForestTalk
@1081  DO ~SetGlobal("PGJaheiraKeto2", "LOCALS",1)~
== BJAHEIR @1082
== BFWKeto @1083
== BJAHEIR @1084
== BFWKeto @1085
== BJAHEIR @1086
== BFWKeto @1087
EXIT

// XXX NEED SOMETHING FOR KETO KNOWING HER ID.

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("PGImoenKeto1", "LOCALS", 0)
!Dead("c6bodhi")~ THEN BFWKeto GloomyImoenTalk
@1088  DO ~SetGlobal("PPGImoenKeto1", "LOCALS", 1)~
== IMOEN2J @1089
== BFWKeto @1090
== IMOEN2J @1091
== BFWKeto @1092
== IMOEN2J @1093
== BFWKeto @1094
== IMOEN2J @1095
== BFWKeto IF ~!G("PGKetoKnowsHistory",1)~ THEN @1096
== IMOEN2J IF ~!G("PGKetoKnowsHistory",1)~ THEN @1097
== BFWKeto @1098
== IMOEN2J  @1099
== BFWKeto @1100
== IMOEN2J @1101
== BFWKeto @1102
== IMOEN2J @1103
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("PGMinscKeto1", "LOCALS", 0)~ THEN BFWKeto BooPouchTalk
@1104 
= @1105  DO ~SetGlobal("PGMinscKeto1", "LOCALS", 1)~
== BMINSC @1106
== BFWKeto @1107
= @1108
== BMINSC @1109
== BFWKeto @1110
= @1111
== BMINSC @1112
== BFWKeto @1113
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("PGMinscKeto2", "LOCALS", 0)~ THEN BFWKeto BooWineTalk
@1114 
= @1115  DO ~SetGlobal("PGMinscKeto2", "LOCALS", 1)~
== BMINSC  @1116
== BFWKeto @1117
== BMINSC @1118
= @1119
== BFWKeto @1120
= @1121
== BMINSC @1122
== BFWKeto @1123
== BMINSC @1124
== BFWKeto @1125
== BMINSC @1126
== BFWKeto @1127
= @1128
== BMINSC  @1129
== BFWKeto @1130
== BMINSC  @1131
== BFWKeto @1132
== BMINSC  @1133
== BFWKeto @1134
== BMINSC  @1135
== BFWKeto @1136
== BMINSC  @1137
== BFWKeto @1138
== BMINSC  @1139
= @1140
== BFWKeto @1141
= @1142
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("PGMazzyKeto1", "LOCALS", 0)~ THEN BFWKeto ScryBattleTalk
@1143  DO ~SetGlobal("PGMazzyKeto1", "LOCALS", 1)~
== BMAZZY @1144
== BFWKeto @1145
== BMAZZY @1146
= @1147
== BFWKeto @1148
== BMAZZY @1149
== BFWKeto @1150
EXIT

CHAIN IF WEIGHT #9 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("edwbards","LOCALS",0)~ THEN BEDWIN edwbards
@1151
DO ~SetGlobal("edwbards","LOCALS",1)~
== BFWKETO @1152 
== BEDWIN @1153
== BFWKeto @1154
== BEDWIN @1155
== BFWKeto @1156
== BEDWIN @1157
EXIT




CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
AreaType(CITY)
Global("PGNaliaKeto1", "LOCALS", 0)~ THEN BFWKeto StreetSammichTalk
@1158  DO ~SetGlobal("PGNaliaKeto1", "LOCALS", 1)~
== BNALIA @1159
== BFWKeto @1160
= @1161
== BNALIA @1162
== BFWKeto @1163
== BNALIA @1164
== BFWKeto @1165
== BNALIA @1166
== BFWKeto @1167
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("PGMinscKeto3", "LOCALS", 0)~ THEN BFWKeto MinscBattleTalk
@1168  DO ~SetGlobal("PGMinscKeto3", "LOCALS", 1)~
== BMINSC @1169
= @1170
== BFWKeto @1171
== BMINSC @1172
== BFWKeto @1173
== BMINSC @1174
== BFWKeto @1175
= @1176
== BMINSC @1177
= @1178
== BFWKeto @1179
EXIT

CHAIN
IF ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGMinscKeto4", "LOCALS", 0)~ THEN BMINSC MinscWineTalk
@1180 DO ~SetGlobal("PGMinscKeto4", "LOCALS", 1)~
== BFWKeto @1181 
== BMINSC @1182
== BFWKeto @1183
== BMINSC @1184
= @1185
== BFWKeto @1186
== BMINSC @1187
= @1188
== BFWKeto @1189
== BMINSC @1190
== BFWKeto @1191
== BMINSC  @1192
= @1193
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("PPGMazzyKeto2","GLOBAL",0)~ THEN BFWKeto HairTalk1
@1194  DO ~SG("PPGMazzyKeto2",1)~
== BMAZZY @1195
== BFWKeto @1196
== BMAZZY @1197
EXIT

CHAIN IF ~InParty("Korgan")
      See("Korgan")
      !StateCheck("Korgan",STATE_SLEEPING)
      AreaType(FOREST)
      Global("ketosplinter","LOCALS",0)~ THEN BFWKETO splinterow
@1198  DO ~SetGlobal("Ketosplinter","LOCALS",1)~
== BKORGAN @1199
== BFWKeto @1200
== BKORGAN @1201
== BFWKeto @1202
== BKORGAN @1203
= @1204
== BFWKETO @1205
EXIT

CHAIN IF WEIGHT #10 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoRunStory","LOCALS",0)~ THEN BKORGAN runstory
@1206
DO ~SetGlobal("PGKetoRunStory","LOCALS",1)~
== BFWKETO @1207 
== BKORGAN
@1208
= @1209
= @1210
= @1211
= @1212
== BFWKeto @1213
== BKORGAN @1214
= @1215
= @1216
= @1217
= @1218
== BFWKeto @1219
== BKORGAN @1220
== BFWKeto @1221
== BKORGAN @1222
EXIT


CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("PPGNaliaKeto2", "LOCALS", 0)~ THEN BFWKeto IsaeaSuxTalk
@1223  DO ~SetGlobal("PPGNaliaKeto2", "LOCALS", 1)~
== BNALIA @1224
== BNALIA IF ~G("IsaeaNalia",0)~ THEN @1225
== BFWKeto IF ~G("IsaeaNalia",0)~ THEN @1226
== BNALIA IF ~G("IsaeaNalia",0)~ THEN @1227
== BFWKeto IF ~G("IsaeaNalia",0)~ THEN @1228
== BNALIA IF ~G("IsaeaNalia",0)~ THEN @1229
== BFWKeto IF ~G("IsaeaNalia",0)~ THEN @1230
== BNALIA IF ~!G("IsaeaNalia",0)~ THEN @1231
== BFWKeto IF ~!G("IsaeaNalia",0)~ THEN @1232
== BNALIA IF ~!G("IsaeaNalia",0)~ THEN @1233
== BFWKETO IF ~!G("IsaeaNalia",0)~ THEN @1234
== BFWKETO @1235
== BNALIA @1236
== BFWKeto @1237
== BNALIA @1238
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("PPGNaliaKeto3", "LOCALS", 0)~ THEN BFWKeto SingNaliaTalk
@1239  DO ~SetGlobal("PPGNaliaKeto3", "LOCALS", 1)~
== BNALIA @1240
== BFWKeto @1241
== BNALIA @1242
== BFWKeto @1243
== BNALIA @1244
== BFWKeto @1245
EXIT

// XX NOTE NEED FOR BEGGAR VOICE

CHAIN
IF WEIGHT #-1 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
PartyGoldGT(4)
Global("PGNaliaKeto4","GLOBAL", 0)~ THEN DBEGGAR2 BeggarTalk1
@1246  DO ~SG("PGNaliaKeto4",1) SetNumTimesTalkedTo(0)~
== BNALIA @1247
=
@1248 DO ~TakePartyGold(5)~
== BFWKeto @1249 
== BNALIA @1250
== BFWKeto @1251
== BNALIA @1252
== BFWKeto @1253
== BNALIA @1254
== BFWKeto @1255
== BNALIA @1256
== BFWKeto @1257
== BNALIA @1258
== BFWKeto @1259
= @1260
= @1261
== BNALIA @1262 // Should it be "You don't act like one [of the poor]"?
== BFWKeto @1263
== BNALIA @1264
= @1265
== BFWKeto @1266
== BNALIA @1267
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
TimeGT(8)
TimeLT(18)
AreaType(OUTDOOR)
Global("PGVicKeto1", "LOCALS", 0)~ THEN BFWKeto SquintingTalk
@1268  DO ~SetGlobal("PGVicKeto1", "LOCALS", 1)~
== BVICONI @1269
== BFWKeto @1270
== BVICONI @1271
== BFWKeto @1272
== BVICONI @1273
= @1274
= @1275
== BFWKeto @1276
== BVICONI @1277
EXIT

/*

Duplicate

CHAIN
IF ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("AnomenIsKnight","GLOBAL",1)
GlobalGT("PGKetoAnoFight1", "GLOBAL", 0)
Global("PGAnoKeto7", "LOCALS", 0)~ THEN BANOMEN ThreeNoteTalk
~Keto, you require another approach, I believe.~ DO ~SetGlobal("PGAnoKeto7", "LOCALS", 1)~
== BFWKeto ~Eh? You're not going to try and spar with me again, are you?~ [FWKETOC4]
== BANOMEN ~Quite the opposite. I have concluded that you are not fit for the front line.~
== BFWKeto ~Heh, I thought I did pretty well...~
== BANOMEN ~One lucky blow hardly signifies. Strike that memory in favor of another idea that came to me...~
= ~I have a question, Keto. What do you want from your life?~
== BFWKeto @1736
== BANOMEN ~And? What will you fill your life with?~
== BFWKeto @1738
== BANOMEN ~Frivolity and leisure are all the aspirations you can muster? You are rather one-note, Keto.~
== BFWKeto @1740
== BANOMEN ~Bah, merely variations of the same, irresponsible tune.~
EXIT

*/

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PPGAerieKeto2", "LOCALS", 0)~ THEN BFWKeto CrappySingerTalk
@1278  DO ~SetGlobal("PPGAerieKeto2", "LOCALS", 1)~
== BAERIE @1279
== BFWKeto @1280
= @1281
== BAERIE @1282
== BFWKeto @1283
== BAERIE @1284
== BFWKeto @1285
== BAERIE @1286
= @1287

== BFWKeto @1288
= @1289
== BAERIE @1290
== BFWKeto @1291
== BAERIE @1292
== BFWKETO @1293
== BAERIE @1294
== BFWKeto @1295
EXIT

// moved name convo much higher

APPEND BFWKETO
IF ~~ namenotcoming
SAY @1296
= @1297
IF ~~ REPLY @1298 + name18
IF ~~ REPLY @1299 + name19
IF ~~ REPLY @1300 + name20
END

IF ~~ name2
SAY @1301
IF ~~ EXIT
END

IF ~~ name3
SAY @1302
IF ~~ REPLY @1303  + name18
IF ~~ REPLY @1304 + name19
IF ~Class(Player1,FIGHTER_ALL)~ REPLY @1305 + name20
IF ~~ REPLY @1306  + name19
IF ~~ REPLY @1299 + name19
IF ~~ REPLY @1307 + name21
END

IF ~~ name4
SAY @1308
IF ~~ REPLY @1309 + name18
IF ~~ REPLY @1310 + name19
IF ~~ REPLY @1311 + name20
IF ~~ REPLY @1312 + name19
IF ~~ REPLY @1313 + name21
END

IF ~~ name5
SAY @1314
IF ~~ REPLY @1315  + name20
IF ~~ REPLY @1316 + name20
IF ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID)~ REPLY  @1317 + name20
IF ~~ REPLY @1318 + name19
IF ~~ REPLY @1299 + name19
IF ~~ REPLY @1319 + name21
END

IF ~~ name6
SAY @1320
IF ~~ REPLY @1321  + name20
IF ~~ REPLY @1322 + name18
IF ~~ REPLY @1323  + name19
IF ~~ REPLY @1300 + name20
IF ~~ REPLY @1324  + name21
END

IF ~~ name7
SAY @1325
IF ~~ REPLY @1326  + name19
IF ~~ REPLY @1327 + name19
IF ~~ REPLY @1328 + name18
IF ~~ REPLY @1329 + name19
IF ~~ REPLY @1330 + name21
END

IF ~~ name8
SAY @1331
IF ~~ REPLY @1332  + name19
IF ~~ REPLY @1333  + name20
IF ~~ REPLY @1334  + name20
IF ~~ REPLY @1335  + name20
IF ~~ REPLY @1336  + name21
END

IF ~~ name9
SAY @1337
IF ~~ REPLY @1338  + name20
IF ~~ REPLY @1339  + name20
IF ~~ REPLY @1340 + name20
IF ~~ REPLY @1341  + name19
IF ~~ REPLY @1342  + name21
END

IF ~~ name10
SAY @1343
IF ~~ REPLY @1344  + name20
IF ~~ REPLY @1345  + name18
IF ~~ REPLY @1346 + name19
IF ~~ REPLY @1347  + name20
IF ~~ REPLY @1348  + name21
END

IF ~~ name11
SAY @1349
IF ~~ REPLY @1350 + name19
IF ~~ REPLY @1351  + name19
IF ~~ REPLY @1352  + name19
IF ~~ REPLY @1353  + name20
IF ~~ REPLY @1354  + name21
END

IF ~~ name12
SAY @1355
= @1356
IF ~~ REPLY @1357  + name19
IF ~~ REPLY @1358  + name20
IF ~~ REPLY @1359  + name20
IF ~~ REPLY @1360  + name19
IF ~~ REPLY @1361  + name21
END

IF ~~ name13
SAY @1362

IF ~~ REPLY @1363 + name19
IF ~~ REPLY @1364  + name20
IF ~~ REPLY @1365  + name19
++ @1366 + name18
IF ~~ REPLY @1367 + name18
IF ~~ REPLY @1368  + name21
END

IF ~~ name14
SAY @1369
= @1370
IF ~~ REPLY @1371  + name19
IF ~~ REPLY @1372  + name20
++ @1373 + name18
IF ~~ REPLY @1374  + name20
IF ~~ REPLY @1375  + name21
END

IF ~~ name15
SAY @1376
IF ~~ REPLY @1377  + name19
IF ~~ REPLY @1378  + name19
IF ~~ REPLY @1379  + name20
IF ~~ REPLY @1380  + name20
++ @1381 + name18
IF ~~ REPLY @1382  + name21
END

IF ~~ name16
SAY @1383
IF ~~ REPLY @1384  + name19
IF ~~ REPLY @1385  + name18
IF ~~ REPLY @1386  + name19
IF ~~ REPLY @1387  + name20
IF ~~ REPLY @1388  + name21
END

IF ~~ name17
SAY @1389
IF ~~ EXIT
END

IF ~~ name18
SAY @1390
IF ~~ REPLY @1391 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
++ @1392 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
IF ~~ REPLY @1393 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
IF ~~ REPLY @1394 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
IF ~~ REPLY @1395 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
IF ~~ REPLY @1396 DO ~SetGlobal("PGKetoName18","LOCALS",1)~ + name18A
END

IF ~~ name18A
SAY @1397
= @1398
=
@1399
IF ~~ REPLY @1400  + name18REC
IF ~~ REPLY @1401  + name18DIV
IF ~~ REPLY @1402  + name18B
IF ~~ REPLY @1403  + name18REC
IF ~~ REPLY @1404  + name18REC
IF ~~ REPLY @1405  + name18REC
END

IF ~~ name18REC
SAY @1406
=
@1407
IF ~~ REPLY @1408  + name18B
IF ~~ REPLY @1409  + name18DIV
IF ~~ REPLY @1410  + name18B
IF ~~ REPLY @1411 + name18NO
END

IF ~~ name18DIV
SAY @1412
=
@1413
IF ~~ REPLY @1414  + name18B
IF ~~ REPLY @1415 + name21
IF ~~ REPLY @1416 +name22
END

IF ~~ name18B
SAY @1417
++ @1418 + name27
IF ~Global("PGKetoName19","LOCALS",0)~ REPLY @1419 + name19
IF ~Global("PGKetoName20","LOCALS",0)~ REPLY @1420 + name20
IF ~Global("PGKetoName20","LOCALS",0)~ REPLY @1421  + name20
IF ~~ REPLY @1422  + name27
END

IF ~~ name19
SAY @1423
IF ~Global("PGKetoName18","LOCALS",1)~ REPLY @1424 DO ~SetGlobal("PGKetoName19","LOCALS",1)~  + name20
IF ~Global("PGKetoName18","LOCALS",1)~ REPLY @1425 DO ~SetGlobal("PGKetoName19","LOCALS",1)~  + name20
IF ~Global("PGKetoName18","LOCALS",0)~ REPLY @1426 DO ~SetGlobal("PGKetoName19","LOCALS",1)~  + name18
IF ~Global("PGKetoName18","LOCALS",0)~ REPLY @1427 DO ~SetGlobal("PGKetoName19","LOCALS",1)~ + name18
IF ~Global("PGKetoName20","LOCALS",0)~ REPLY @1428 DO ~SetGlobal("PGKetoName19","LOCALS",1)~ + name20
IF ~~ REPLY @1429 DO ~SetGlobal("PGKetoName19","LOCALS",1)~ + name22
END

IF ~~ name20
SAY @1430
=
@1431
++ @1432 + name22
IF ~Class(Player1, MAGE_ALL)~ REPLY @1433 DO ~SetGlobal("PGKetoName20","LOCALS",1)~  + name19
IF ~Class(Player1, CLERIC_ALL)~ REPLY @1434 DO ~SetGlobal("PGKetoName20","LOCALS",1)~  + name18
IF ~Global("PGKetoName18","LOCALS",1)~ REPLY @1435 DO ~SetGlobal("PGKetoName20","LOCALS",1)~ + name23
IF ~Global("PGKetoName18","LOCALS",0)~ REPLY @1436 DO ~SetGlobal("PGKetoName20","LOCALS",1)~ + name18
IF ~Global("PGKetoName19","LOCALS",1)~ REPLY @1437 DO ~SetGlobal("PGKetoName20","LOCALS",1)~ + name24
IF ~Global("PGKetoName19","LOCALS",0)~ REPLY @1438 DO ~SetGlobal("PGKetoName20","LOCALS",1)~ + name19
IF ~~ REPLY @1439 DO ~SetGlobal("PGKetoName20","LOCALS",1)~ + name22
END

IF ~~ name21
SAY @1440
IF ~~ EXIT
END

IF ~~ name18NO
SAY @1441
IF ~~ EXIT
END


IF ~~ name22
SAY @1442
IF ~~ EXIT
END

IF ~~ name23
SAY @1443
= @1444
=
@1445
IF ~~ REPLY @1446  + name22
++ @1447 + name21
IF ~~ REPLY @1448  + name22
IF ~~ REPLY @1449  + name22
IF ~~ REPLY @1450  + name25
IF ~~ REPLY @1451 + name22
IF ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1, PALADIN)~ REPLY @1452  + name22
END

IF ~~ name24
SAY @1453
IF ~~ REPLY @1454  + name26
IF ~Global("PGKetoName18","LOCALS",0)~ REPLY @1455  + name18
IF ~~ REPLY @1456  + name22
IF ~Global("PGKetoName18","LOCALS",1)~ REPLY @1457 + name22
IF ~~ REPLY @1458  + name22
END

IF ~~ name25
SAY @1459
IF ~~ EXIT
END

IF ~~ name26
SAY @1460
IF ~~ EXIT
END

IF ~~ name27
SAY @1461
IF ~~ EXIT
END

IF ~~ name28
SAY @1462
IF ~~ REPLY @1463  + name20
IF ~~ REPLY @1464 + name19
IF ~~ REPLY @1465  + name20
IF ~~ REPLY @1466 + name18
IF ~~ REPLY @1467 + name21
END

IF ~~ name29
SAY @1468
IF ~~ REPLY @1469  + name19
IF ~Gender(Player1,MALE)~ REPLY @1470  + name19
++ @1471 + name20
++ @1472 + name20
IF ~~ REPLY @1473  + name18
IF ~~ REPLY @1474 + name20
IF ~~ REPLY @1475  + name21
END

IF ~~ name30
SAY @1476
IF ~~ REPLY @1477  + name20
IF ~~ REPLY @1478  + name19
IF ~~ REPLY @1479  + name19
IF ~~ REPLY @1480  + name18
IF ~~ REPLY @1481  + name21
END

IF ~~ name31
SAY @1482
IF ~~ REPLY @1483  + name19
IF ~~ REPLY @1484 + name19
IF ~~ REPLY @1485  + name19
IF ~~ REPLY @1486  + name18
IF ~~ REPLY @1487  + name21
END

IF ~~ name32
SAY @1488
IF ~~ REPLY @1489  + name18
IF ~~ REPLY @1490 + name20
IF ~~ REPLY @1491 + name19
IF ~~ REPLY @1492  + name20
IF ~~ REPLY @1493  + name21
IF ~Alignment(Player1,MASK_GOOD)~ REPLY @1494 + name20
END

END

// XXX NEED KETOCRAK SFX

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("PGVicKeto2", "GLOBAL", 0)~ THEN BFWKeto EarringTalk
@1495  DO ~SetGlobal("PGVicKeto2", "GLOBAL", 1)~
== BVICONI @1496
== BFWKeto @1497
== BVICONI @1498
== BFWKeto @1499
= @1500
== BVICONI @1501
== BFWKeto @1502
== BVICONI @1503
= @1504 
== BFWKeto @1505
== BVICONI @1506
EXIT

CHAIN
IF WEIGHT #42 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGVicKeto3", "LOCALS", 0)~ THEN BVICONI AsIfViccyCares
@1507 DO ~SetGlobal("PGVicKeto3", "LOCALS", 1)~
== BFWKeto @1508 
== BVICONI @1509
= @1510
== BFWKeto @1511
== BVICONI @1512
== BFWKeto @1513
= @1514
== BVICONI @1515
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)
Global("PGVicKeto4", "LOCALS", 0)~ THEN BFWKeto UnderdarkTalk
@1516 
= @1517  DO ~SetGlobal("PGVicKeto4", "LOCALS", 1)~
== BVICONI @1518
== BFWKeto @1519
== BVICONI @1520
== BFWKETO @1521
= @1522
== BVICONI @1523
EXIT

CHAIN
IF WEIGHT #40 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
OR(2)
TimeOfDay(DUSK)
TimeOfDay(NIGHT)
AreaType(OUTDOOR)
Global("PGVicKeto5", "LOCALS", 0)~ THEN BVICONI BumpInDarkTalk
@1524 DO ~SetGlobal("PGVicKeto5", "LOCALS", 1)~
== BFWKeto @1525 
== BVICONI @1526
== BFWKeto @1527
== BVICONI @1528
== BFWKeto @1529
EXIT


CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
AreaType(DUNGEON)
Global("PGJaheiraDungeonTrip","LOCALS", 0)~ THEN BFWKeto JDungeonTrip
@1198 
DO ~SetGlobal("PGJaheiraDungeonTrip","LOCALS", 1)~
== BJAHEIR @1530
== BFWKETO @1531
== BJAHEIR @1532
== BFWKETO @1533
== BJAHEIR @432
== BFWKETO @1534
= @1535
= @1536
== BJAHEIR @1537
= @1538
== BFWKETO @1539
= @1540
== BJAHEIR @1541
== BFWKETO @1542 DO ~PlayDead(5)~
EXIT


CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(FOREST)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PGAerieDeadBirdie","LOCALS",0)~ THEN BFWKETO deadbirdie
@1543  DO ~SetGlobal("PGAerieDeadBirdie","LOCALS",1)~
== BAERIE @1544
== BFWKETO @1545
== BAERIE @1546
== BFWKETO @1547
= @1548
== BAERIE @1549
= @1550
== BFWKETO @1551
== BAERIE @1552
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(CITY)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PGAerieNecklace","LOCALS",0)~ THEN BFWKETO necklace
@1553 
DO ~SetGlobal("PGAerieNecklace","LOCALS",1)~
== BAERIE @1554
== BFWKETO @1555
= @1556
== BAERIE @1557
== BFWKETO @1558
== BAERIE @1559
= @1560
== BFWKETO @1561
== BAERIE @1562
== BFWKETO @1563
== BAERIE @1564
== BAERIE @1565
== BFWKETO @1566
EXIT

/* Duplicate?
CHAIN
IF ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGAerieDail", "LOCALS", 0)~ THEN BAERIE seedail
== BAERIE ~I wish you could see Faenya-Dail, Keto.  I've listened to you speak of the exciting places you've been to, but nothing compares, in my eyes.~
DO ~SetGlobal("PGAerieDail", "LOCALS", 1)~
== BFWKETO ~Where is it?  I'm always looking for a new place to cool my heels and tell a tale.~
== BAERIE @1699
= ~Even I can never go back, but it was so beautiful, Keto.  I--I don't remember as much of it as I would like, but to live in the clouds between heaven and earth, it was... oh, I can't even describe it.~
== BFWKETO @1701
== BAERIE @1702
= @1703
== BFWKETO @1704
== BAERIE @1705
== BFWKETO @1706
== BAERIE ~I-I know that.  I just thought some things were the same for everyone, like wanting to return to a place you will always remember.~
== BFWKETO @1708
= @1709
== BAERIE ~That would be wonderful, Keto.  Thank you for not thinking me silly.~
== BFWKETO @1711
EXIT
*/


// XXX NEED TO TAG KETO NOT KNOWING HISTORY

CHAIN
IF WEIGHT #45 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
!G("PGKetoKnowsHistory",1)
Global("PGKetoJahWhereFrom", "LOCALS", 0)~ THEN BJAHEIR wherefrom
@1567
DO ~SetGlobal("PGKetoJahWhereFrom", "LOCALS", 1)~
== BFWKETO @1568 
== BJAHEIR @1569
= @1570
== BFWKETO @1571
== BJAHEIR @1572
== BFWKETO @1573
== BJAHEIR @1574
= @1575
== BFWKETO @1576
== BJAHEIR @1577
= @1578
== BFWKETO @1579
= @1580
== BJAHEIR @1581
EXIT


CHAIN
IF WEIGHT #8 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Dead("SHADEL")
Global("PGKetoMazzyStory", "GLOBAL", 0)~ THEN BMAZZY storystart
@1582
DO ~SetGlobal("PGKetoMazzyStory", "GLOBAL", 1)~
== BFWKETO @1583 
== BMAZZY @1584
== BFWKETO @1585
== BMAZZY @1586
= @1587
== BFWKETO @1588
== BMAZZY @1589
= @1590
== BFWKETO @1591
== BMAZZY @1592
== BFWKETO @1593
EXIT


CHAIN
IF ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoMazzyStory", "GLOBAL", 1)~ THEN BMAZZY story2
@1594
DO ~SetGlobal("PGKetoMazzyStory", "GLOBAL", 2)~
== BFWKETO @1595 
= @1596 
== BMAZZY @1597
== BFWKETO @1598
= @1599
= @1600
== BMazzy @1601
== BFWKETO @1602
= @1603
== BMAZZY @1604
= @1605
== BFWKETO @1606
== BMAZZY @1607
= @1608
= @1609
== BFWKETO @1610
== BMAZZY @1611
EXIT


CHAIN IF
~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
GGT("JaheiraBanditPlot",2)
OR(2)
G("JaheiraRomanceActive",1)
G("JaheiraRomanceActive",2)
Global("PGKetoJahRomanceTalk","LOCALS",0)~ THEN BFWKETO jaheiratale
@1612 
DO ~SetGlobal("PGKetoJahRomanceTalk","LOCALS",1)~
== BJAHEIR @1613
== BFWKETO @1614
= @1615
== BFWKETO @1616
== BJAHEIR @1617
== BFWKeto @1618
= @1619
= @1620
== BJAHEIR @1621
= @1622
== BFWKETO @1623
= @1624
= @1625
= @1626
= @1627
= @1628
= @1629
= @1630
= @1631
== BJaheir @1632
== BFWKETO @1633
= @1634
== BJAHEIR @1635
== BFWKETO @1636
== BJAHEIR @1637
EXIT




CHAIN
IF
~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoMinsctune", "LOCALS", 0)~ THEN BMINSC thievesvaga
@1638
DO ~SetGlobal("PGKetoMinsctune", "LOCALS", 1)~
== BFWKETO @1639 
== BMINSC @1640
== BFWKETO @1641
== BMINSC @1642
EXIT

CHAIN
IF WEIGHT #15
~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoKorganhungry", "LOCALS", 0)~ THEN BKORGAN hungry
@1643
DO ~SetGlobal("PGKetoKorganhungry", "LOCALS", 1)~
== BFWKETO @1644 
== BKORGAN @1645
= @1646
EXIT


CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
AreaType(FOREST)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PGAerieFeather","LOCALS",0)~ THEN BFWKETO feather
@1647  DO ~SetGlobal("PGAerieFeather","LOCALS",1)~
== BAERIE @1648
== BFWKETO @1649
== BAERIE @1650
== BFWKETO @1651
== BAERIE @1652
== BFWKETO @1653
= @1654
== BAERIE @1655
EXIT

CHAIN
IF WEIGHT #34
~InParty("Keto")
Global("AnomenIsNotKnight","GLOBAL",0)
Global("AnomenIsKnight","GLOBAL",0)
See("Keto")
!AreaCheck("AR0900")
AreaType(CITY)
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoThieves", "LOCALS", 0)~ THEN BANOMEN thievesvaga
@1656
DO ~SetGlobal("PGKetoThieves", "LOCALS", 1)~
== BFWKETO @1657 
= @1658 
== BANOMEN @1659
== BFWKETO @1660
== BANOMEN @1661
EXIT


CHAIN
IF WEIGHT #35
~InParty("Keto")
Global("AnomenIsNotKnight","GLOBAL",1)
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoDrinkie", "LOCALS", 0)~ THEN BANOMEN gimmedrink
@1662
DO ~SetGlobal("PGKetoDrinkie", "LOCALS", 1)~
== BFWKETO @1663 
== BANOMEN @1664
== BFWKETO @1665
== BANOMEN @1666
= @1667
== BFWKETO @1668
== BANOMEN @1669
= @1670
== BFWKETO @1671
== BANOMEN @1672
EXIT


CHAIN IF
~InParty("Anomen")
Global("AnomenIsNotKnight","GLOBAL",1)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("PGAnoGloomy", "LOCALS", 0)~ THEN BFWKETO AnoGloomy
@1673 
DO ~SetGlobal("PGAnoGloomy", "LOCALS", 1)~
== BANOMEN @1674
== BFWKETO @1675
== BANOMEN @1676
== BFWKETO @1677
== BANOMEN @1678
== BFWKETO @1679
== BANOMEN @1680
== BFWKETO @1681
== BANOMEN @1682
EXIT

CHAIN IF
~InParty("Anomen")
Global("AnomenIsNotKnight","GLOBAL",1)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("PGAnoUselessWhelp", "LOCALS", 0)~ THEN BFWKETO uselesswhelp
@1683 
DO ~SetGlobal("PGAnoUselessWhelp", "LOCALS", 1)~
== BANOMEN @1684
== BFWKETO @1685
= @1686
== BANOMEN @1687
= @1688
== BFWKETO @1689
= @1690
== BANOMEN @1691
== BANOMEN IF ~!G("PGKetoKnowsHistory",1)~ THEN @1692
== BFWKETO IF ~!G("PGKetoKnowsHistory",1)~ THEN @1693
== BANOMEN IF ~!G("PGKetoKnowsHistory",1)~ THEN @1694
== BFWKETO IF ~!G("PGKetoKnowsHistory",1)~ THEN @1695
== BANOMEN IF ~!G("PGKetoKnowsHistory",1)~ THEN @1696
EXIT

// XX I think CN Anomen should try to kill Keto in TOB.



CHAIN
IF WEIGHT #28 ~InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
AreaType(OUTDOOR)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PGAerieDail", "LOCALS", 0)~ THEN BAERIE seedail
@1697
DO ~SetGlobal("PGAerieDail", "LOCALS", 1)~
== BFWKETO @1698 
== BAERIE @1699
= @1700
== BFWKETO @1701
== BAERIE @1702
= @1703
== BFWKETO @1704
== BAERIE @1705
== BFWKETO @1706
== BAERIE @1707
== BFWKETO @1708
= @1709
== BAERIE @1710
== BFWKETO @1711
EXIT


CHAIN
IF
~InParty("Keto")
Global("AnomenIsKnight","GLOBAL",1)
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
AreaType(OUTDOOR)
Global("PGKetoAnoFight1", "GLOBAL", 0)~ THEN BANOMEN fight1
@1712
DO ~SetGlobal("PGKetoAnoFight1", "GLOBAL", 1)~
== BFWKETO @1713 
== BANOMEN @1714
= @1715
== BFWKETO @1716
== BANOMEN @1717
= @1718
== BFWKETO @1719
== BANOMEN @1720
= @1721
= @1722
== BFWKETO @1723
== BANOMEN @1724
= @1725
== BFWKETO @1726
== BANOMEN @1727
== BFWKETO @1728
== BANOMEN @1729
== BFWKETO @1730 DO ~RunAwayFrom("Anomen",30)~
== BANOMEN @1731
EXIT

CHAIN
IF
~InParty("Keto")
Global("AnomenIsKnight","GLOBAL",1)
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGKetoAnoFight1", "GLOBAL", 1)~ THEN BANOMEN fight2
@1732
DO ~SetGlobal("PGKetoAnoFight1", "GLOBAL", 2)~
== BFWKETO @1733 
== BANOMEN @1734
= @1735
== BFWKETO @1736
== BANOMEN @1737
== BFWKETO @1738
== BANOMEN @1739
== BFWKETO @1740
== BANOMEN @1741
EXIT

// XX Check for Keto not knowing background.


CHAIN IF
~InParty("Anomen")
Global("AnomenIsKnight","GLOBAL",1)
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
!G("PGKetoKnowsHistory",1)
Global("PGKetoAnoFight1", "GLOBAL", 2)~ THEN BFWKETO fight3
@1742 
DO ~SetGlobal("PGKetoAnoFight1", "GLOBAL", 3)~
== BANOMEN @1743
== BFWKETO @1744
= @1745
== BANOMEN @1746
== BFWKETO @1747
== BANOMEN @1748
= @1749
== BFWKETO @1750
== BANOMEN @1751
= @1752
== BFWKETO @1753
== BANOMEN @1754
EXIT


// XXX Could use a little tweaking if Keto has background

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
!Global("PGAerieKetoBreakup","GLOBAL",1)
Global("PGAerieInTheCircus", "LOCALS", 0)~ THEN BFWKeto Inthecircus
@1755 
DO ~SetGlobal("PGAerieInTheCircus", "LOCALS", 1)~
== BAERIE @1756
== BFWKETO @1757
== BAERIE @1758
== BFWKETO @1759
== BAERIE @1760
== BFWKETO @1761
== BAERIE @1762
== BFWKETO @1763
== BAERIE @1764
== BAERIE IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN @1765
== BAERIE IF ~!Global("AerieRomanceActive","GLOBAL",2)~ THEN @1766
= @1767
== BFWKETO @1768
= @1769
== BAERIE @1770
== BFWKETO @1771
== BFWKETO IF ~G("PGKetoKnowsHistory",1)~ THEN @1772
== BFWKETO IF ~!G("PGKetoKnowsHistory",1)~ THEN @1773
== BAERIE IF ~!G("PGKetoKnowsHistory",1)~ THEN @1774
== BFWKETO IF ~!G("PGKetoKnowsHistory",1)~ THEN @1775
EXIT



// HD Romance Interjects

I_C_T BHAERDA 58 PGKetoHDRom1
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1776 
= @1777
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1778
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1779
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1780
END

I_C_T BHAERDA 64 PGKetoHDRom2
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1781
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1782
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1783
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1784
= @1785
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1786
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1787
END

I_C_T BAERIE 189 PGKetoHDRom3
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1788
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1789
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1790
END

I_C_T BHAERDA 74 PGKetoHDRom4
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1791 
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1792
= @1793
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1794
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1795
= @1796
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1797
END

I_C_T BAERIE 264 PGKetoHDRom5
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1798
END

I_C_T BHAERDA 96 PGKetoHDRom6
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1799
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1800
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1801
END

I_C_T BAERIE 257 PGKetoHDRomLies
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1802
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1803
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1804
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1805
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1806
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1807
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1808
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1809
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1810
END

I_C_T BHAERDA 97 PGKetoHDRom7
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1811 
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1812
= @1813
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1814
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1815
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1780
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1816
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1817
END

I_C_T BAERIE 388 PGKetoHDRom8
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1818
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1819
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1820
== HAERDAJ IF ~IsValidForPartyDialog("Keto")~ THEN @1821
= @1822
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1823
== FWKETOJ IF ~IsValidForPartyDialog("Keto")~ THEN @1780
== AERIEJ IF ~IsValidForPartyDialog("Keto")~ THEN @1824
END


CHAIN IF WEIGHT #18 ~GlobalGT("PGAerieKetoShowdown","GLOBAL",1)
InParty("Keto")
See("Keto")
!StateCheck("Keto",STATE_SLEEPING)
Global("PGHDForgetHasty", "LOCALS", 0)~ THEN BHAERDA entropypassed
@1825
DO ~SetGlobal("PGHDForgetHasty", "LOCALS", 1)~
= @1826
= @1827
== BFWKETO @1828 
== BHAERDA @1829
== BFWKETO @1830
== BHAERDA @1831
EXIT



// should be last Keto/Keldorn banter.

CHAIN IF
~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("PGKetoKeldornbigstory", "LOCALS", 0)~ THEN BFWKETO keldornbigstory
@1832 
DO ~SetGlobal("PGKetoKeldornbigstory", "LOCALS", 1)~
== BKELDOR @1833
== BFWKETO @1834
== BKELDOR @1835
== BFWKETO @1836
== BKELDOR @1837
== BFWKETO @1838
== BKELDOR @1839
== BFWKETO @1840
= @1841
= @1842
= @1843
= @1844
= @1845
= @1846
= @1847
= @1848
= @1849
= @1850
= @1851
= @1852
= @1853
= @1854
= @1855
== BKELDOR @1856
= @1857
== BFWKETO @1858
= @1859
== BKELDOR @1860
= @1861
= @1862
== BFWKETO @1863
== BKELDOR @1864
== BFWKETO @1865
== BKELDOR IF ~G("PGKetoSober",0)~ THEN @1866
== BKELDOR IF ~G("PGKetoSober",0)~ THEN @1867
== BKELDOR IF ~G("PGKetoSober",1)~ THEN @1868
== BKELDOR @1869
EXIT


