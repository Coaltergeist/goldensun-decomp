// gs1/move_anims.h
#ifndef GS1_MOVE_ANIMS_H
#define GS1_MOVE_ANIMS_H

#define ANIM_PARAM(n) (n << 12)

#define ANIM_NONE                 0

#define ANIM_QUAKE                1
#define ANIM_SPIRE                2
#define ANIM_GAIA                 3
#define ANIM_GROWTH               4
#define ANIM_THORN                5
#define ANIM_FROST                6
#define ANIM_ICE                  7
#define ANIM_PRISM                8
#define ANIM_DOUSE                9
#define ANIM_FROTH                10
#define ANIM_FLARE                11
#define ANIM_FIRE                 12
#define ANIM_VOLCANO              13
#define ANIM_BLAST                14
#define ANIM_NOVA                 15
#define ANIM_BOLT                 16
#define ANIM_RAY                  17
#define ANIM_PLASMA               18
#define ANIM_SLASH                19
#define ANIM_WHIRLWIND            20
#define ANIM_CURE                 21
#define ANIM_PLY                  22
#define ANIM_WISH                 23
#define ANIM_CURE_POISON          24
#define ANIM_REVIVE               25
#define ANIM_IMPACT               26
#define ANIM_DULL                 27
#define ANIM_GUARD                28
#define ANIM_IMPAIR               29
#define ANIM_WARD                 30
#define ANIM_WEAKEN               31
#define ANIM_POISON               32 // unused move
#define ANIM_DELUDE               33
#define ANIM_CONFUSE              34 // unused
#define ANIM_CHARM                35 // unused move
#define ANIM_PARALYZE             36
#define ANIM_SLEEP                37
#define ANIM_BIND                 38
#define ANIM_HAUNT                39
#define ANIM_CONDEMN              40
#define ANIM_CURSE                41
#define ANIM_DRAIN                42
#define ANIM_BREAK                43
#define ANIM_REGENERATE           44 // unused move
#define ANIM_REFLECT              45 // unused move
#define ANIM_UNUSED_IMPACT        46 // unused
#define ANIM_UNUSED_IMPAIR        47 // unused
#define ANIM_DRAGON_CLOUD         49
#define ANIM_DEMON_NIGHT          50
#define ANIM_HELM_SPLITTER        51
#define ANIM_QUICK_STRIKE         52
#define ANIM_DEATH_PLUNGE         53
#define ANIM_SHURIKEN             54
#define ANIM_ANNIHILATION         55
#define ANIM_PUNJI                56
#define ANIM_CUTTING_EDGE         57
#define ANIM_RAGNAROK             58
#define ANIM_HEAT_WAVE            59
#define ANIM_PLANET_DIVER         60
#define ANIM_TITAN_BLADE          61
#define ANIM_SHINING_STAR         62
#define ANIM_BLIZZARD             63
#define ANIM_DEMON_FIRE           64
#define ANIM_VORPAL_SLASH         65
#define ANIM_DROWN                66
#define ANIM_UNUSED_PSYPHON_SEAL  67 // unused
#define ANIM_ASTRAL_BLAST         68

#define ANIM_GRANITE              200
#define ANIM_QUARTZ               201
#define ANIM_VINE                 202
#define ANIM_GROUND               203
#define ANIM_FIZZ                 204
#define ANIM_SLEET                205
#define ANIM_SPRITZ               206
#define ANIM_HAIL                 207
#define ANIM_TONIC                208
#define ANIM_DEW                  209
#define ANIM_FORGE                210
#define ANIM_CORONA               211
#define ANIM_EMBER                212
#define ANIM_FLASH                213
#define ANIM_TORCH                214
#define ANIM_BREEZE               215
#define ANIM_ZEPHYR               216
#define ANIM_KITE                 217
#define ANIM_LUFF                 218
#define ANIM_GUST                 219

// NOTE: These were shifted forward in GS2 (see gs2/anims.h)
#ifdef GS1
#define ANIM_VENUS                250
#define ANIM_MERCURY              251
#define ANIM_MARS                 252
#define ANIM_JUPITER              253
#endif // GS1

#define ANIM_SONIC_WAVE           300
#define ANIM_SHRIEK               301
#define ANIM_BANSHEE_HOWL         302
#define ANIM_CRAZY_VOICE          303
#define ANIM_WAR_CRY              304
#define ANIM_WICKED_HOWL          305
#define ANIM_WING_BEAT            306
#define ANIM_WING_FLUTTER         307
#define ANIM_RUMBLE               308
#define ANIM_BONE_CHILLER         309
#define ANIM_RAPID_SMASH          310
#define ANIM_BONE_CHARGE          311
#define ANIM_MYSTIC_FLAME         312
#define ANIM_NUMBING_STING        313
#define ANIM_BRUTE_FORCE          314
#define ANIM_STICKY_GOO           315
#define ANIM_CANNIBAL_FANG        316
#define ANIM_BEAR_CLAW            317
#define ANIM_POISONOUS_BITE       318
#define ANIM_FLYING_ATTACK        319
#define ANIM_UNDEAD_SWORD         320
#define ANIM_RANSACK              321
#define ANIM_STICKY_POISON        322
#define ANIM_POISON_FANG          323
#define ANIM_ELECTRIC_BITE        324
#define ANIM_POISON_TAIL          325
#define ANIM_ONSLAUGHT            326
#define ANIM_VAMPIRIC_FANG        327
#define ANIM_BACTERIA_RUSH        328
#define ANIM_SWIFT_STRIKE         329
#define ANIM_ROTTEN_BLOOD         330
#define ANIM_DOUBLE_FANG          332
#define ANIM_MORTAL_BLOW          333
#define ANIM_FREEBITE_RUSH        334
#define ANIM_TWIN_BEAKS           335
#define ANIM_RABID_FANG           336
#define ANIM_ACID_BITE            337
#define ANIM_DYNAMITE             338
#define ANIM_HEADBUTT             339
#define ANIM_POISON_INK           340
#define ANIM_COUNTERSTRIKE        342
#define ANIM_MAD_DASH             343
#define ANIM_SOOTHING_STAR        344
#define ANIM_SPIDER_WEB           345
#define ANIM_HEARTRENDER          346
#define ANIM_MAD_SPATTER          347
#define ANIM_SPASM                348
#define ANIM_SLEEP_STAR           349
#define ANIM_DECOMPOSE            350
#define ANIM_HAUNTING             351
#define ANIM_WORMS                352
#define ANIM_BERSERK              353
#define ANIM_LUCID_PROPHECY       354

#define ANIM_SMOKE_BOMB           380
#define ANIM_WING_STROKE          381
#define ANIM_POISON_BEAT          382
#define ANIM_SPINNING_BEAT        383
#define ANIM_OUTER_SPACE          384
#define ANIM_DRAGON_DRIVER        385
#define ANIM_DRAIN_FANG           386
#define ANIM_SEVERE_BLOW          387
#define ANIM_THRASH               388
#define ANIM_RECOVERY             389

#define ANIM_FIRE_BREATH          400 // "Fire Blessing"
#define ANIM_WATER_BREATH         401 // "Water Blessing"
#define ANIM_ICE_BREATH           402 // "Ice Blessing"
#define ANIM_DARK_BREATH          403 // "Dark Blessing"
#define ANIM_ACID_BREATH          404 // "Acid Blessing"
#define ANIM_STORM_BREATH         405 // "Storm Blessing"
#define ANIM_DEMON_BREATH         406 // "Evil Blessing"
#define ANIM_DEADLY_GAS           407

#ifdef GS1
#define NUM_ANIMS                 408
#endif


#ifdef GS1
#define ANIM_ATTACK                0x1000
#endif
#define SUBANIM_ATTACK_SLASH       0
#define SUBANIM_ATTACK_SLASH_2     1
#define SUBANIM_ATTACK_SLASH_3     2
#define SUBANIM_ATTACK_STING       3
#define SUBANIM_ATTACK_SIDESWIPE   4
#define SUBANIM_ATTACK_UPPERCUT    5
#define SUBANIM_ATTACK_UPPERCUT_2  6
#define SUBANIM_ATTACK_HIT         7
#define SUBANIM_ATTACK_HIT_2       8
#define SUBANIM_ATTACK_HIT_3       9

// These have 100 added to them in the move animation table
#define SUBANIM_BANE               0
#define SUBANIM_SMOG               1
#define SUBANIM_MIST               2
#define SUBANIM_FEVER              3
#define SUBANIM_FLINT              4
#define SUBANIM_SCORCH             5
#define SUBANIM_SQUALL             6
#define SUBANIM_SAP                7

// NOTE: These were shifted forward in GS2 (see gs2/anims.h)
#ifdef GS1
#define SUBANIM_TERRA_STRIKE       8
#define SUBANIM_POISON_CLOUD       9
#define SUBANIM_POISON_DEATH       10
#define SUBANIM_MORTAL_DANGER      11
#define SUBANIM_BAD_OMEN           12
#define SUBANIM_LIFE_NOURISH       13
#define SUBANIM_AQUA_SOCK          14
#define SUBANIM_BLIZZARD           15
#define SUBANIM_FROST_BITE         16
#define SUBANIM_UNUSED_UNLEASH_1   17 // unused
#define SUBANIM_LIFE_LEECH         18
#define SUBANIM_PSY_LEECH          19
#define SUBANIM_BROIL              20
#define SUBANIM_MELTDOWN           21
#define SUBANIM_HEAT_MIRAGE        22
#define SUBANIM_BARRAGE            23
#define SUBANIM_UNUSED_UNLEASH_2   24 // unused
#define SUBANIM_ACID_BATH          25
#define SUBANIM_UNUSED_UNLEASH_3   26 // unused
#define SUBANIM_STUN_VOLTAGE       27
#define SUBANIM_BLINDING_SMOG      28
#define SUBANIM_MURK               29
#define SUBANIM_CYCLONE_SLASH      30
#define SUBANIM_PSYPHON_SEAL       31
#define SUBANIM_ASURA              32
#define SUBANIM_FORCIBLE_ARM       33
#define SUBANIM_TRUNCHEON_FIST     34
#define SUBANIM_SEVERE_BLOW        35
#endif // GS1

#define SUBANIM_CRITICAL_HIT       201


#ifdef GS1
#define ANIM_SUMMON               0x2000
#endif
#define SUBANIM_RAMSES            1
#define SUBANIM_NEREID            2
#define SUBANIM_KIRIN             3
#define SUBANIM_ATALANTA          4
#define SUBANIM_CYBELE            5
#define SUBANIM_NEPTUNE           6
#define SUBANIM_TIAMAT            7
#define SUBANIM_PROCNE            8
#define SUBANIM_JUDGMENT          9
#define SUBANIM_BOREAS            10
#define SUBANIM_METEOR            11
#define SUBANIM_THOR              12


#endif // GS1_MOVE_ANIMS_H