BEGIN PGCROWDA
BEGIN PGCROWDB
BEGIN PGCROWDC
BEGIN PGCROWDD
BEGIN PGCROWDE
BEGIN PGCROWDF
BEGIN PGCROWDG
BEGIN PGCROWDH
BEGIN PGCROWDI
BEGIN PGCROWDJ
BEGIN PGCROWDK
BEGIN PGCROWDL


BEGIN PGJASSY

// PGKetosTurn=1

// ** KETOWINS=1 (Non-Yoshimo Winner: Mirror story)

IF ~Global("KetoWinsContest", "GLOBAL", 1)
Global("PGPCWantsFirstHalf", "GLOBAL", 1)~ THEN joules
SAY @4500 
++ @47 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT1a")~ EXIT
++ @48 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT1b")~ EXIT
END

// Jasper has another line once the Joules cutscene kicks in!

IF ~Global("KetoWinsContest", "GLOBAL", 1)
Global("PGPCWantsSecondHalf", "GLOBAL", 1)~ THEN akai
SAY @4501
= @4502
++ @470 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT1c")~ EXIT
++ @480 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT1d")~ EXIT
END

// ** KETOWINS=2 (Keto Runner-Up)

IF ~Global("KetoWinsContest", "GLOBAL", 2)
Global("PGPCWantsFirstHalf", "GLOBAL", 1)~ THEN liffetta
SAY @4503 
= @4504
++ @47 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT2a")~ EXIT
++ @48 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT2b")~ EXIT
END


IF ~Global("KetoWinsContest", "GLOBAL", 2)
Global("PGPCWantsSecondHalf", "GLOBAL", 1)~ THEN prudence
SAY @4505 
++ @470 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT2c")~ EXIT
++ @480 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT2d")~ EXIT
END

// ** KETOWINS=3 (Keto loses)

IF ~Global("KetoWinsContest", "GLOBAL", 3)
Global("PGPCWantsFirstHalf", "GLOBAL", 1)~ THEN penny
SAY @4506 
=
@4507 
++ @47 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT3a")~ EXIT
++ @48 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT3b")~ EXIT
END

IF ~Global("KetoWinsContest", "GLOBAL", 3)
Global("PGPCWantsSecondHalf", "GLOBAL", 1)~ THEN lyrica
SAY @4508
= @4509
= @4510
++ @470 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT3c")~ EXIT
++ @480 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT3d")~ EXIT
END

// ** KETOWINS=4 (Yoshimo winner)


IF ~Global("KetoWinsContest", "GLOBAL", 4)
Global("PGPCWantsFirstHalf", "GLOBAL", 1)~ THEN ulga
SAY @4511
= @4512
++ @47 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT4a")~ EXIT
++ @48 DO ~SetGlobal("PGPCWantsFirstHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT4b")~ EXIT
END

IF ~Global("KetoWinsContest", "GLOBAL", 4)
Global("PGPCWantsSecondHalf", "GLOBAL", 1)~ THEN talindra
SAY @4513 
= @4514 
++ @470 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT4c")~ EXIT
++ @480 DO ~SetGlobal("PGPCWantsSecondHalf", "GLOBAL", 2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT4d")~ EXIT
END

IF ~Global("PGKetosTurn","GLOBAL",1)~ ketosturn
SAY @1280 = @1281
IF ~~ DO ~SetGlobal("PGKetosTurn","GLOBAL",2)
                ClearAllActions()
                StartCutSceneMode()
                StartCutScene("PGKCUT5")~ EXIT
END





// Keto's losing performance

CHAIN IF WEIGHT #-1 ~Global("PGKetosTurn","GLOBAL",3)
Global("KetoWinsContest", "GLOBAL", 3)~ THEN FWKETOJ ketoloses
@4515 
// Voice "our hero was ambushed"
DO ~SetGlobal("PGKetosTurn", "GLOBAL", 4)~
== PGCROWDA @4516
== FWKETOJ  @4517
== PGCROWDB @4518 
== PGCROWDC @4519 
== PGCROWDE @4520 
== FWKetoJ @4521
== FWKETOJ IF ~Gender(Player1,MALE)~ THEN @4522 
== FWKETOJ IF ~Gender(Player1,FEMALE)~ THEN @4523 
== PGCROWDF @4524
== FWKETOJ @4525
== PGCROWDF @4526
== PGCROWDB @4527
== FWKetoJ @4528
== PGCROWDB @4529
== PGCROWDA @4530
== PGCROWDF @4531
== PGCROWDB @4532
== PGCROWDC @4532
== FWKETOJ @4533
=
@4534
END
++ @4535 GOTO KetoSoThere
++ @4536 GOTO KetoTellTheWorld
++ @4537 GOTO KetoSoThere
++ @4538 GOTO KetoSoThere
++ @4539 GOTO KetoSoThere
++ @4540 + KetoTellTheWorld
++ @4541 GOTO KetoSoThere
++ @4542 GOTO KetoSoThere

APPEND FWKETOJ

IF ~~ THEN BEGIN KetoSoThere
SAY @4543
IF ~~ GOTO ketolosespt2
END

IF ~~ THEN BEGIN KetoTellTheWorld
SAY @4544
=
@4545
=
@4546
=
@4547
IF ~~ GOTO ketolosespt2
END
END

CHAIN FWKETOJ ketolosespt2
@4548
== PGCROWDA @4549
== PGCROWDB @4550
== PGCROWDC @4551
== FWKETOJ @4552
== PGCROWDA @4553
== FWKETOJ @4554
== PGCROWDB @4555
== FWKETOJ @4556
== PGCROWDC @4557
== PGCROWDA @4558
== FWKetoJ @4559
== PGCROWDA @4560
== PGCROWDB @4560
== PGCROWDC @4560
== PGCROWDD @4561
== FWKetoJ @4562
== PGCROWDA @4563
== PGCROWDC @4564
== FWKetoJ @4565
== PGCROWDB @4566
== FWKetoJ @4567
== PGCROWDA @4568
== PGCROWDC @4569
== FWKetoJ @4570
== PGCROWDA @4571
== FWKetoJ @4572
= @4573
== PGCROWDA @4574
== PGCROWDC @4575
== PGCROWDB @4576
== PGCROWDA @4577
== PGCROWDB @4578
== FWKetoJ @4579
== PGCROWDB @45801
== PGCROWDC @45802
== PGCROWDA @4580
== PGCROWDA @4581
== FWKetoJ @4582
== PGCROWDA @4583
== FWKetoJ @4584
== PGCROWDA @4585
== FWKetoJ @4586
== PGCROWDA @4587
== PGCROWDC @4588
== PGCROWDB @4589
== FWKetoJ @4590
== PGCROWDA @4591
== PGCROWDB @4592
== FWKetoJ @4593
== PGCROWDA @4594
== PGCROWDD @4594
== PGCROWDB @4595
== PGCROWDC @4596
== FWKetoJ @4597
= @4598
== PGCROWDC @4599
== PGCROWDB @4600
== PGCROWDA @4601
== PGCROWDC @4602
== PGCROWDA @4603

== FWKetoJ @4604

== PGCROWDA @4605
== PGCROWDB @4605
== PGCROWDC @4605
== PGCROWDD @4606

== FWKetoJ @4607
= @4608
== PGCROWDA @4609
== PGCROWDC @4610
== PGCROWDB @4611
== PGCROWDD @4612

== FWKetoJ @4613

== PGCROWDA @4614
== PGCROWDC @4615
== PGCROWDB @4616
== PGCROWDD @4617

== FWKetoJ @4618

== PGCROWDA @4619

== FWKetoJ @4620
= @4621
= @4622
= @4623

== PGCROWDB @4624
== PGCROWDC @4624

== FWKETOJ @4625

== PGCROWDC @4626
== PGCROWDA @4627

== FWKetoJ @4628 
= @4629 
= @4630 
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT3e")~
EXIT



CHAIN IF ~Global("KetoWinsContest", "GLOBAL", 3)
Global("PGDadTalks","GLOBAL",0)~ THEN PGKDAD lyrica
@4631 

DO ~SetGlobal("PGDadTalks","GLOBAL",1)~
== PGLYRICA @4632 
= @4633
= @4634
== PGKMOM @4635 
== PGLYRICA @4636
= @4637
== PGKMOM @4638
== PGLYRICA @4639
== PGKMOM @4640
== PGLYRICA @4641
== PGKMOM @4642
= @4643
== PGKDAD @4644
== PGLYRICA @4645
== PGKDAD @4646
= @4647
= @4648
= @4649
== PGKMOM @4650
== PGLYRICA @4651
= @4652
= @4653
= @4654
== PGKDAD @4655
== PGLYRICA @4656
== PGBARRY @4657
== PGLYRICA @4658
== PGBARRY @4659
= @4660
== PGLYRICA @4661
= @4662
== PGBARRY @4663
== PGLYRICA @4664
== PGBARRY @4665
== PGLYRICA @4666
== PGBARRY @4667
== PGLYRICA @4668
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT3f")~
EXIT


// Barry, Lyrica leave

CHAIN IF ~Global("KetoWinsContest", "GLOBAL", 3)
Global("PGMomTalks","GLOBAL",0)~ THEN PGKMOM lyrica
@4669 
DO ~SetGlobal("PGMomTalks","GLOBAL",1)~
== PGKDAD @4670 
== PGKMOM @4671
== PGKDAD @4672
== PGKMOM @4673
== PGKDAD @4674
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT3g")~
EXIT


// Keto places

CHAIN IF WEIGHT #-1 ~Global("PGKetosTurn","GLOBAL",3)
Global("KetoWinsContest", "GLOBAL", 2)~ THEN FWKETOJ ketoplaces
@4675 
DO ~SetGlobal("PGKetosTurn", "GLOBAL", 4)~
= @4676 
= @4677 
= @4678
= @4679
= @4680
= @4681
= @4682
= @4683
= @4684
= @4685
= @4686
= @4687
= @4688
= @4689
= @4690
= @4691
= @4692
= @4693
= @4694
= @4695
= @4696
= @4697
= @4698
== PGKMOM @4699 
== PGKDAD @4700 
== PGCROWDA @4701
== PGCROWDB @4702
== FWKETOJ @4703
== PGCROWDB @4704
== PGCROWDC @4589
== FWKetoJ @4705
= @4706 
= @4707 
== PGCROWDA @4708 
== PGCROWDB @4709 
== PGCROWDC @4710 
== PGCROWDD @4711 
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT2e")~
EXIT

CHAIN IF ~Global("KetoWinsContest", "GLOBAL", 2)
Global("PGDadTalks","GLOBAL",0)~ THEN PGKDAD ketowins2chain
@4712
DO ~SetGlobal("PGDadTalks","GLOBAL",1)
SetGlobal("PGKetoKnowsHistory","GLOBAL",1)~
== FWKETOJ @4713
= @4714
== PGKMOM @4715 
== FWKetoJ @4716 
== PGKMOM @4717 
= @4718 
== FWKetoJ @4719
== PGKDAD @4720 
== FWKetoJ @4721
== PGKMOM @4722
== PGKDAD @4723
== FWKetoJ @4724
== PGKDAD @4725
== FWKetoJ @4726
== PGKMOM @4727
== FWKetoJ @4728
== PGKDAD @4729
== PGKMOM @4730
== FWKetoJ @4731
== PGKDAD @4732
= @4733
= @4734
= @4735
= @4736
== FWKetoJ @4737
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4738
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4739
== PGKDAD IF ~!Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4740
== PGKDAD IF ~!Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4741
== FWKetoJ @4742
== PGKMOM @4743
== PGKDAD @4744
== FWKetoJ @4745
== PGJASSY @4746
== PGKMOM @4747
= @4748
== PGKDAD @4749
== PGKMOM @4750
== FWKetoJ @4751
== PGKMOM @4752
== FWKetoJ @4753
== PGJASSY @4754
== PGKDAD @4755
== FWKetoJ @4756
= @4757
== PGKMOM @4758
== PGKDAD @4759
= @4760
== PGKMOM @4761
== FWKetoJ @4762
== PGKMOM @4763
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT2f")~
EXIT


// Keto's winning mirror speech

CHAIN IF WEIGHT #-1 ~Global("PGKetosTurn","GLOBAL",3)
Global("KetoWinsContest", "GLOBAL", 1)~ THEN FWKETOJ ketowinsmirror
@4764 
DO ~SetGlobal("PGKetosTurn", "GLOBAL", 4)~
= @4765 
= @4766
= @4767
= @4768
= @4769
= @4770
= @4771
= @4772
= @4773
= @4774
= @4775
= @4776
= @4777
= @4778
= @4779
= @4780
= @4781
= @4782
= @4783
= @4784 
== PGCROWDA @4785 
== PGCROWDB @4786
== PGCROWDC @4787
== PGCROWDA @4788 
== PGCROWDB @4789 
== PGCROWDC @4790 
== PGCROWDA @4617 
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT1e")~
EXIT

// win sequence for Keto wins mirror

CHAIN IF ~OR(2)
Global("KetoWinsContest", "GLOBAL", 1)
Global("KetoWinsContest", "GLOBAL", 4)
Global("PGDadTalks","GLOBAL",0)~ THEN PGKDAD ketowins1chain
@4712 
DO ~SetGlobal("PGDadTalks","GLOBAL",1)
SetGlobal("PGKetoKnowsHistory","GLOBAL",1)~
== FWKETOJ @4713 
= @4714 
== PGKMOM @4715 
== FWKetoJ @4716 
== PGKMOM @4717 
= @4718
== FWKetoJ @4719 
== PGKDAD @4720 
== FWKetoJ @4721
== PGKMOM @4722
== PGKDAD @4723
== FWKetoJ @4724
== PGKDAD @4725
== FWKetoJ @4726
== PGKMOM @4727
== FWKetoJ @4728
== PGKDAD @4729
== PGKMOM @4730
== FWKetoJ @4731
== PGKDAD @4732
= @4733
= @4734
= @4735
== PGKDAD IF ~Global("KetoWinsContest", "GLOBAL", 1)~ THEN @4736
== PGKDAD IF ~Global("KetoWinsContest", "GLOBAL", 4)~ THEN @4792
== PGKDAD IF ~Global("KetoWinsContest", "GLOBAL", 4)~ THEN @4793
== FWKetoJ @4737
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1) Global("KetoWinsContest", "GLOBAL", 1)~ THEN @4738
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1) Global("KetoWinsContest", "GLOBAL", 1)~ THEN @4739
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1) Global("KetoWinsContest", "GLOBAL", 4)~ THEN @4794
== PGKDAD IF ~Global("PGVicKeto2", "GLOBAL", 1) Global("KetoWinsContest", "GLOBAL", 4)~ THEN @4795
== PGKDAD IF ~!Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4740
== PGKDAD IF ~!Global("PGVicKeto2", "GLOBAL", 1)~ THEN @4741
== FWKetoJ @4742
== PGKMOM @4743
== PGKDAD @4744
== FWKetoJ @4745
== PGJASSY @4746
== PGKMOM @4747
= @4748
== PGKDAD @4749
== PGKMOM @4750
== FWKetoJ @4751
== PGKMOM @4752
== FWKetoJ @4753
== PGJASSY @4754
== PGKDAD @4796
== PGKMOM @4797
DO ~GivePartyGold(2000)~
== PGKDAD @4798
== PGKMOM @4761
== FWKetoJ @4762
== PGKMOM IF ~Global("KetoWinsContest", "GLOBAL", 1)~ THEN @4763
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT1f")~
== PGKMOM IF ~Global("KetoWinsContest", "GLOBAL", 4)~ THEN @4763
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT4f")~
EXIT


// Keto's Yoshimo winner

CHAIN IF WEIGHT #-1 ~Global("PGKetosTurn","GLOBAL",3)
Global("KetoWinsContest", "GLOBAL", 4)~ THEN FWKETOJ ketowinsmirror
@4799 
 DO ~SetGlobal("PGKetosTurn", "GLOBAL", 4)~
= @4800 
== PGKMOM @4801 
== PGKDAD @4802 
== PGKMOM @4803 
== FWKETOJ @4804
= @4805
= @4806
= @4807
= @4808
= @4809
= @4810
= @4811
= @4812
== PGKMOM @4813
== PGKDAD @4814
== PGKMOM @4815
== PGKDAD @4816
== FWKETOJ @4817
= @4818
= @4819
= @4820
= @4821
= @4822 
= @4823
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("PGKCUT4e")~
EXIT



/*

AR1100

[3035.1952] - PGULGA

[4372.3087] - PGKDAD
[4404.3129] - PGKMOM

[4225.3112] - Center of stage for performers, Jassy intros, Tewes
[4195.3000] - Jassy stands here "in the wings" during performances
[4053.3062] - Solo performer stands here "in the wings" during intro
[4235.3015] - Second of a pair of performers stands here during intro
[4200.3125] - Chorus of Two, Twins perform
[4250.3100] - Chorus of Two, Twins perform

[4178.3243] - PGCROWDA
[4290.3233] - PGCROWDB
[4326.3188] - PGCROWDC
[4363.2965] - PGCROWDD
[4415.2955] - PGCROWDE
[4450.3030] - PGCROWDF
[4460.3065] - PGCROWDG
[4330.3255] - PGCROWDH
[4270.3265] - PGCROWDF
[4090.3295] - PGCROWDG
[4050.3280] - PGCROWDH
[4065.3325] - PGCROWDI
[4392.3058] - PGCROWDJ
[4455.3012] - PGCROWDK
[4526.3052] - PGCROWDL
[4431.3173] - PGCROWDM
[4241.3265] - PGCROWDN


[4408.3172] - PGBARRY
[4025.3220] - PGPOPPY
[4090.3260] - PGGMIONE
[4050.3230] - PGGROUPI


[4215.3237] - Player 1
[4256.3232] - Player 2
[4369.3198] - Player 3
[4458.3121] - Player 4
[4419.3078] - Player 5
[4387.3027] - Player 6 

*/

