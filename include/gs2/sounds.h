// gs2/sounds.h
#ifndef GS2_SOUNDS_H
#define GS2_SOUNDS_H

#include "gs1/sounds.h"

#define STOP_BGM                    0
#define FADE_OUT_BGM                78
#define STOP_SFX                    288
#define FADE_OUT_SFX                390
#define FADE_OUT_NOISE              395

#define BGM_SUPER_LUCKY_DICE        1
#define BGM_ALHAFRA                 2
#define BGM_CHAMPA                  3
#define BGM_DAILA                   4
#define BGM_APOJII_ISLANDS          5
#define BGM_IZUMO_HAPPY             6
#define BGM_IZUMO_TROUBLED          7
#define BGM_REGRET                  8
#define BGM_KANDOREAN_DUNGEON       9
#define BGM_KIBOMBO                 10
#define BGM_KIBOMBO_CEREMONY        11
#define BGM_LEMURIA                 12
#define BGM_MADRA                   13
#define BGM_SETTLEMENT              14
#define BGM_GAROH                   15
#define BGM_YALLAM                  16
#define BGM_YEPPS_SONG              17
#define BGM_YEPPS_SONG_REPRISE      18

#define BGM_AIRS_ROCK               20
#define BGM_AQUA_ROCK               21
#define BGM_RUINS                   22
#define BGM_CAVE_GS2                23
#define BGM_GAIA_ROCK               24
#define BGM_GABOMBA_STATUE          25
#define BGM_JUPITER_LIGHTHOUSE      26
#define BGM_MAGMA_ROCK              27
#define BGM_MARS_LIGHTHOUSE         28
#define BGM_TUNDARIA_TOWER          29
#define BGM_TAOPO_SWAMP             30
#define BGM_ANKOHL_RUINS            31

#define BGM_KARST_AGATIO            34
#define BGM_DJINN_TUTORIAL          35
#define BGM_VILLAIN_GS2             36
#define BGM_SHAMAN_VILLAGE          37
#define BGM_LONELINESS              38
#define BGM_TENSION                 39

#define BGM_SAILING                 41
#define BGM_OVERWORLD_GS2           42
#define BGM_OVERWORLD_REUNION       43
#define BGM_CREDITS_GS2             44

#define BGM_BATTLE_JENNA            49
#define BGM_BATTLE_FELIX            50
#define BGM_BATTLE_BRIGGS_MOAPA     51
#define BGM_BATTLE_BOSS_GS2         52
#define BGM_BATTLE_FLAME_DRAGONS    53
#define BGM_BATTLE_DOOM_DRAGON      54
#define BGM_BATTLE_LINK             55
#define BGM_BATTLE_SAILING          56
#define BGM_BATTLE_KARST_AGATIO     57

#define BGM_SEA_OF_TIME             65

#define BGM_VALE_DESTROYED          67
#define BGM_CREDITS_GS1             68

#define BGM_PASSWORD                71

#define BGM_HOMECOMING              73

#define BGS_WIND                    207

#define BGS_LASH                    512
//      --                          513
//      --                          514
//      --                          515
//      --                          516
//      --                          517
//      --                          518
//      --                          519
#define SFX_520                     520 // unused
#define SFX_521                     521 // unused
#define BGS_ANGEL_STATUE_LIFT       522
#define SFX_523                     523 // unused
#define SFX_524                     524 // unused
#define SFX_WOLF_HOWL               525
#define SFX_ROOSTER                 526 // unused
#define BGS_CRICKETS                527 // unused
#define SFX_528                     528 // unused
#define SFX_529                     529 // unused
#define SFX_SERPENT_ROAR            530
#define SFX_531                     531 // unused
#define SFX_532                     532 // unused
#define SFX_533                     533 // unused
#define SFX_534                     534 // unused
//      (TODO)                      535
#define SFX_536                     536 // unused
//      --                          537
#define SFX_538                     538 // unused
//      (TODO)                      539
//      --                          540
//      --                          541
#define SFX_PARCH_FAIL              542
#define SFX_PARCH_UNUSED            543 // unused
#define SFX_SAND_END                544
#define SFX_545                     545 // unused
#define SFX_546                     546 // unused
#define SFX_547                     547 // unused
#define SFX_548                     548 // unused
#define SFX_549                     549 // unused
//      (TODO)                      550
#define SFX_551                     551 // unused
#define SFX_552                     552 // unused
//      --                          553
//      (TODO)                      554
#define SFX_555                     555
//      (TODO)                      556
//      (TODO)                      557
#define SFX_558                     558 // unused
#define SFX_559                     559 // unused
#define SFX_ELEMENT_DOOR            560
#define SFX_561                     561 // unused
#define SFX_562                     562 // unused
#define SFX_563                     563 // unused
//      (TODO)                      564
#define SFX_565                     565
//      (TODO)                      566
#define SFX_POUND                   567
#define SFX_568                     568 // unused
#define SFX_569                     569 // unused
#define SFX_570                     570 // unused
#define SFX_571                     571 // unused
#define SFX_GLASS_BREAK             572
//      (TODO)                      573
//      (TODO)                      574
//      (TODO)                      575
//      (TODO)                      576
//      (TODO)                      577
#define SFX_578                     578 // unused
#define SFX_579                     579 // unused
#define SFX_580                     580 // unused
//      (TODO)                      581
//      ?                           582
#define SFX_583                     583 // unused
//      ?                           584
#define SFX_585                     585 // unused
//      ?                           586
//      ?                           587
//      ?                           588
//      ?                           589
#define SFX_GRUNT                   590 // unused
//      ?                           591
//      ?                           592
//      ?                           593
//      ?                           594
#define SFX_WOLF_HOWL_2             595
//      ?                           596
//      ?                           597
//      ?                           598
//      (empty)                     599
//      (empty)                     600
//      (empty)                     601
//      (empty)                     602
//      (empty)                     603
//      (empty)                     604
//      (empty)                     605
//      (empty)                     606
//      (empty)                     607
//      (empty)                     608
//      (empty)                     609
//      ?                           610
//      ?                           611
//      ?                           612
//      ?                           613
//      ?                           614
//      ?                           615
//      ?                           616
//      ?                           617
//      ?                           618
#define SFX_WHISTLE                 619
//      ?                           620
//      ?                           621
//      ?                           622
//      ?                           623

#define BGM_VALE                    700
#define BGM_TOWN_HAPPY              701
#define BGM_TOWN_TROUBLED           702
#define BGM_PALACE                  703
#define BGM_TRET_TREE               704
#define BGM_XIAN                    705
#define BGM_KALAY                   706
#define BGM_COLOSSO_RACE            707
#define BGM_COLOSSO_PREGAME         708
#define BGM_MINIGAME                709
#define BGM_TOLBI                   710
//      --
#define BGM_SOL_SANCTUM             720
#define BGM_FOREST                  721
#define BGM_ELEMENTAL_STARS         722
#define BGM_PROLOGUE                723
#define BGM_CAVE_GS1                724
#define BGM_DESERT                  725
#define BGM_IMIL                    726
#define BGM_MERCURY_LIGHTHOUSE      727
#define BGM_CROSSBONE_ISLE          728
#define BGM_ALTMILLER_CAVE          729
#define BGM_BABI                    730
//      --
#define BGM_TOLBI_BOUND_SHIP        741
#define BGM_OVERWORLD_GS1           742
#define BGM_VENUS_LIGHTHOUSE        743
//      --
#define BGM_BATTLE_ISAAC            750
#define BGM_BATTLE_SATUROS          751
#define BGM_BATTLE_BOSS_GS1         752
#define BGM_BATTLE_SATUROS_MENARDI  753
#define BGM_BATTLE_FUSION_DRAGON    754
//      --
#define BGM_TO_BE_CONTINUED_2       799 // unused?

#endif // GS2_SOUNDS_H