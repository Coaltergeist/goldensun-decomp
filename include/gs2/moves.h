// gs2/moves.h
#ifndef GS2_MOVES_H
#define GS2_MOVES_H

#include "gs1/moves.h"

#define MOVE_COOL             39
#define MOVE_SUPERCOOL        40
#define MOVE_MEGACOOL         41

#define MOVE_FUME             60
#define MOVE_SERPENT_FUME     61
#define MOVE_DRAGON_FUME      62
#define MOVE_BEAM             63
#define MOVE_CYCLE_BEAM       64
#define MOVE_SEARING_BEAM     65

#define MOVE_AURA             87
#define MOVE_HEALING_AURA     88
#define MOVE_COOL_AURA        89

#define MOVE_LASH             133
#define MOVE_POUND            134
#define MOVE_TREMOR           135
#define MOVE_SCOOP            136
#define MOVE_CYCLONE          137
#define MOVE_PARCH            138
#define MOVE_SAND             139

#define MOVE_BURST            151
#define MOVE_GRIND            152
#define MOVE_HOVER            153
#define MOVE_BLAZE            154
#define MOVE_MAGNET           155 // "Ma????", unused
#define MOVE_TELEPORT         156
#define MOVE_ARROW            157 // "A??", unused

#define MOVE_DIAMOND_DUST     197
#define MOVE_ODYSSEY          198
#define MOVE_LIQUIFIER        199
#define MOVE_PLUME_EDGE       200
#define MOVE_THUNDER_MINE     201
#define MOVE_PLANETARY        202
#define MOVE_DIAMOND_BERG     203
#define MOVE_DEATH_LEAP       204
#define MOVE_EPICENTER        205
#define MOVE_THORNY_GRAVE     206
#define MOVE_SKULL_SPLITTER   207

#define MOVE_MIST_POTION      259

#define MOVE_AURORA_FIELD     298

#define MOVE_DJINN_COUNTER    299

#define MOVE_ECHO             307
#define MOVE_IRON             308
#define MOVE_STEEL            309
#define MOVE_MUD              310
#define MOVE_FLOWER           311
#define MOVE_MELD             312
#define MOVE_PETRA            313
#define MOVE_SALT             314
#define MOVE_GEODE            315
#define MOVE_MOLD             316
#define MOVE_CRYSTAL          317
#define MOVE_EARTH18          318 // unused
#define MOVE_EARTH19          319 // unused

#define MOVE_FOG              327
#define MOVE_SOUR             328
#define MOVE_SPRING           329
#define MOVE_SHADE            330
#define MOVE_CHILL            331
#define MOVE_STEAM            332
#define MOVE_RIME             333
#define MOVE_GEL              334
#define MOVE_EDDY             335
#define MOVE_BALM             336
#define MOVE_SERAC            337
#define MOVE_WATER18          338 // unused
#define MOVE_WATER19          339 // unused

#define MOVE_CANNON           347
#define MOVE_SPARK            348
#define MOVE_KINDLE           349
#define MOVE_CHAR             350
#define MOVE_COAL             351
#define MOVE_REFLUX           352
#define MOVE_CORE             353
#define MOVE_TINDER           354
#define MOVE_SHINE            355
#define MOVE_FURY             356
#define MOVE_FUGUE            357
#define MOVE_FIRE18           358 // unused
#define MOVE_FIRE19           359 // unused

#define MOVE_BREATH           367
#define MOVE_BLITZ            368
#define MOVE_ETHER            369
#define MOVE_WAFT             370
#define MOVE_HAZE             371
#define MOVE_WHEEZE           372
#define MOVE_AROMA            373
#define MOVE_WHORL            374
#define MOVE_GASP             375
#define MOVE_LULL             376
#define MOVE_GALE_D           377
#define MOVE_WIND18           378 // unused
#define MOVE_WIND19           379 // unused

// NOTE: GS1 summon move IDs were shifted around in GS2

#define MOVE_VENUS            380
#define MOVE_RAMSES           381
#define MOVE_CYBELE           382
#define MOVE_JUDGMENT         383
#define MOVE_ZAGAN            384
#define MOVE_HAURES           385
#define MOVE_CHARON           386

#define MOVE_MERCURY          388
#define MOVE_NEREID           389
#define MOVE_NEPTUNE          390
#define MOVE_BOREAS           391
#define MOVE_MOLOCH           392
#define MOVE_COATLICUE        393
#define MOVE_AZUL             394

#define MOVE_MARS             396
#define MOVE_KIRIN            397
#define MOVE_TIAMAT           398
#define MOVE_METEOR           399
#define MOVE_MEGAERA          400
#define MOVE_ULYSSES          401
#define MOVE_DAEDALUS         402
#define MOVE_DAEDALUS_2       403
#define MOVE_IRIS             404

#define MOVE_JUPITER          406
#define MOVE_ATALANTA         407
#define MOVE_PROCNE           408
#define MOVE_THOR             409
#define MOVE_FLORA            410
#define MOVE_ECLIPSE          411
#define MOVE_CATASTROPHE      412

#define MOVE_STONE_JUSTICE    520
#define MOVE_SARCOPHAGUS      521
#define MOVE_EVIL_EYE         522
#define MOVE_VEIN_TAP         523
#define MOVE_HEAVY_DIVIDE     524
#define MOVE_HAMMERSPHERE     525
#define MOVE_MOTHER_EARTH     526
#define MOVE_WYRD_CURSE       527
#define MOVE_HEARTBREAK       528
#define MOVE_VENGEANCE        529
#define MOVE_ACHERONS_GRIEF   530
#define MOVE_MEGIDDO          531

#define MOVE_HURRICANE_U      535
#define MOVE_DREAMTIDE        536
#define MOVE_STUN_CLOUD       537
#define MOVE_SEARING_FOG      538
#define MOVE_ICE_CRUSH        539
#define MOVE_FLASH_FORCE      540
#define MOVE_SARGASSO         541
#define MOVE_LETHE_ALBION     542
#define MOVE_REVERSE_STAR     543
#define MOVE_RISING_DRAGON_U  544

#define MOVE_POWER_DRIVE      549
#define MOVE_BOOST_HACK       550
#define MOVE_HEAT_SMASH       551
#define MOVE_FIRE_DANCE_U     552
#define MOVE_BLAZE_RUSH       553
#define MOVE_FLARE_BURST      554
#define MOVE_SHRED            555
#define MOVE_CRUCIBLE_FIRE    556
#define MOVE_SCORPIONFISH     557
#define MOVE_PURGATORY        558
#define MOVE_SOUL_SHATTER     559
#define MOVE_RADIANT_FIRE     560
#define MOVE_LIFE_SHEAR       561

#define MOVE_MOON_AIR         565
#define MOVE_FLASH_EDGE       566
#define MOVE_AGING_GAS        567
#define MOVE_MAD_ZEPHYR       568
#define MOVE_LUNAR_SLASH      569
#define MOVE_NIRVANA          570
#define MOVE_HIGH_VITALS      571
#define MOVE_STUN_BOLT        572
#define MOVE_TRIDENT          573
#define MOVE_LIGHT_SURGE      574
#define MOVE_RAIDENS_WRATH    575
#define MOVE_VOID_BEAM        576
#define MOVE_SUPERNOVA_U      577
#define MOVE_APOCALYPSE       578
#define MOVE_LEGEND           579

#define MOVE_SABRE_DANCE      584
#define MOVE_BACKSTAB         585
#define MOVE_FIRE_BREATH_P    586
#define MOVE_JUGGLE           587
#define MOVE_HEAT_JUGGLE      588
#define MOVE_FIERY_JUGGLE     589
#define MOVE_FLAME_CARD       590
#define MOVE_THUNDER_CARD     591
#define MOVE_BRAMBLE_CARD     592
#define MOVE_FROST_CARD       593
#define MOVE_BAFFLE_CARD      594
#define MOVE_SWORD_CARD       595
#define MOVE_SLEEP_CARD       596
#define MOVE_DEATH_CARD       597

#define MOVE_WHIPLASH         599
#define MOVE_WILD_WOLF        600
#define MOVE_EMU              601
#define MOVE_ROC              602
#define MOVE_SALAMANDER       603
#define MOVE_ORC              604
#define MOVE_HARPY            605
#define MOVE_GRAND_GOLEM      606
#define MOVE_CERBERUS         607
#define MOVE_WYVERN           608
#define MOVE_PIXIE            609
#define MOVE_DINOX            610
#define MOVE_GRYPHON          611
#define MOVE_LIVING_ARMOR     612
#define MOVE_CHIMERA          613
#define MOVE_BLUE_DRAGON      614
#define MOVE_FAERY            615
#define MOVE_ELDER_WOOD       616
#define MOVE_LICH             617
#define MOVE_TROLL            618
#define MOVE_MINOTAUR         619
#define MOVE_GHOST_SOLDIER    620
#define MOVE_MACETAIL         621
#define MOVE_FIRE_DRAGON      622
#define MOVE_WEIRD_NYMPH      623
#define MOVE_SUCCUBUS         624
#define MOVE_ESTRE_WOOD       625
#define MOVE_MANTICORE        626
#define MOVE_PHOENIX          627

#define MOVE_CALL_ZOMBIE      629
#define MOVE_CALL_DEMON       630
#define MOVE_CALL_DULLAHAN    631
#define MOVE_RAGING_HEAT      632
#define MOVE_FIERY_ABYSS      633
#define MOVE_DIRE_INFERNO     634
#define MOVE_POISON_FLOW      635
#define MOVE_FEAR_PUPPET      636 // "Fire Puppet"

#define MOVE_SAND_BREATH      640
#define MOVE_DESERT_GASP      641
#define MOVE_BLACK_ICE        642
#define MOVE_TOXIC_BREATH     643
#define MOVE_TYPHOON_BLOW     644
#define MOVE_BLAST_BREATH     645
#define MOVE_GRAVEL_BLOW      646
#define MOVE_DARKSOL_GASP     647
#define MOVE_FLAME_BREATH     648
#define MOVE_AQUA_BREATH      649
#define MOVE_FIRE_BREATH_4    650
#define MOVE_CHILL_BREATH     651

#define MOVE_FLASH_PUNCH      660
#define MOVE_FORMIC_ACID      661
#define MOVE_CLAW_ATTACK      662
#define MOVE_BEAT_DANCE       663
#define MOVE_TWIN_SHEAR       664
#define MOVE_PARALYTAIL       665
#define MOVE_ECHO_CUT         666
#define MOVE_SIGNAL_WHISTLE   667 // "Clarion Cry"
#define MOVE_TRIPLE_CHOMP     668
#define MOVE_RAGING_FLOOD     669
#define MOVE_RISING_VENOM     670
#define MOVE_SLAVER           671
#define MOVE_MIGHTY_PRESS     672
#define MOVE_STAR_MINE        673
#define MOVE_HEAT_STUN        674
#define MOVE_OCEAN_FIST       675
#define MOVE_WATERY_GRAVE     676
#define MOVE_COUNTER_RUSH     677
#define MOVE_COUNTER          678
#define MOVE_BOSCA_HIT        679
#define MOVE_STRONG_HIT       680
#define MOVE_ROLLING_FLAME    681
#define MOVE_RISING_DRAGON_P  682
#define MOVE_METEOR_BLOW      683
#define MOVE_CAGE             684
#define MOVE_STUN_MUSCLE      685
#define MOVE_DJINNFEST        686
#define MOVE_HEAT_KISS        687
#define MOVE_FATAL_FANG       688
#define MOVE_ANGLE_SPIKE      689
#define MOVE_QUICK_SLASH      690
#define MOVE_DOUBLESTEP       691
#define MOVE_MANEATER         692
#define MOVE_CLAW_SLASH       693
#define MOVE_MEGA_SLASH       694
#define MOVE_VANISH_CLAW      695
#define MOVE_CRUSHER_GRIP     696
#define MOVE_WOLF_FLASH       697 // "Ur Flash"
#define MOVE_POWER_BITE       698
#define MOVE_TERRIBLE_BITE    699
#define MOVE_POISON_STING     700
#define MOVE_KILL_STING       701
#define MOVE_BEAST_NEEDLE     702
#define MOVE_POISON_NEEDLE    703 // "Poison Sting"
#define MOVE_STUN_NEEDLE      704 // "Stun Sting"
#define MOVE_MUCOUS_GEL       705
#define MOVE_POISON_GEL       706
#define MOVE_HYDRO_SLASH      707
#define MOVE_REGEN_DANCE      708
#define MOVE_FIRE_DANCE_E     709
#define MOVE_POWER_CRUSH      710
#define MOVE_SACK             711
#define MOVE_VITAL_THRUST     712 // "Vital Moon"
#define MOVE_HUMAN_HUNT       713
#define MOVE_DEMON_EYE        714
#define MOVE_STUN_JIP         715
#define MOVE_PIKE_ASSAULT     716
#define MOVE_FULMINOUS_EDGE   717 // "Formina Sage"
#define MOVE_DARK_CONTACT     718 // "True Collide"
#define MOVE_ARMOR_CRUSH      719
#define MOVE_DJINN_BLAST      720
#define MOVE_DJINN_STORM      721
#define MOVE_EARTH_FORCE      722
#define MOVE_GUARD_AURA       723
#define MOVE_CRUEL_RUIN       724
#define MOVE_MYSTIC_CALL      725
#define MOVE_MINE_BALL        726
#define MOVE_ANGRY_MINE       727
#define MOVE_DJINN_STUN       728
#define MOVE_CRUCIBLE         729
#define MOVE_ELEMENT_SWAP     730
#define MOVE_PURE_PLY_2       731 // "Earnest Ply"
#define MOVE_PSY_BOOST        732
#define MOVE_PRESSURE         733

#endif // GS2_MOVES_H