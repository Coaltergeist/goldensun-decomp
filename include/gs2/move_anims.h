// gs2/move_anims.h
#ifndef GS2_MOVE_ANIMS_H
#define GS2_MOVE_ANIMS_H

#include "gs1/move_anims.h"

#define ANIM_HEARTBREAK           69
#define ANIM_AURA                 71
#define ANIM_FUME                 72
#define ANIM_BEAM                 73
#define ANIM_RAGING_HEAT          74
#define ANIM_COOL                 75
#define ANIM_SABRE_DANCE          76
#define ANIM_BACKSTAB             77
#define ANIM_JUGGLE               78
#define ANIM_FLAME_CARD           79
#define ANIM_WHIPLASH             80
#define ANIM_POISON_FLOW          81
#define ANIM_FEAR_PUPPET          82 // "Fire Puppet"
#define ANIM_DIAMOND_DUST         83
#define ANIM_DIAMOND_BERG         84
#define ANIM_PLUME_EDGE           85
#define ANIM_THUNDER_MINE         86
#define ANIM_FROST_CARD           87
#define ANIM_BRAMBLE_CARD         88
#define ANIM_THUNDER_CARD         89
#define ANIM_BAFFLE_CARD          90
#define ANIM_SWORD_CARD           91
#define ANIM_SLEEP_CARD           92
#define ANIM_DEATH_CARD           93

#define ANIM_STONE_JUSTICE        100
#define ANIM_HEAVY_DIVIDE         101
#define ANIM_WYRD_CURSE           103
#define ANIM_ACHERONS_GRIEF       104
#define ANIM_HURRICANE            105
#define ANIM_DREAMTIDE            106
#define ANIM_LETHE_ALBION         107
#define ANIM_RISING_DRAGON_U      108
#define ANIM_BOOST_HACK           109
#define ANIM_RADIANT_FIRE         110
#define ANIM_FIRE_DANCE_U         111
#define ANIM_BLAZE_RUSH           112
#define ANIM_SHRED                113
#define ANIM_PURGATORY            114
#define ANIM_SOUL_SHATTER         115
#define ANIM_AGING_GAS            116
#define ANIM_MAD_ZEPHYR           117
#define ANIM_LUNAR_SLASH          118
#define ANIM_NIRVANA              119
#define ANIM_LIGHT_SURGE          120
#define ANIM_VOID_BEAM            121
#define ANIM_LEGEND               122
#define ANIM_LIQUIFIER            123
#define ANIM_MEGIDDO              124
#define ANIM_ODYSSEY              125
#define ANIM_VENGEANCE            126
#define ANIM_THORNY_GRAVE         127
#define ANIM_PLANETARY            128
#define ANIM_LIFE_SHEAR           129

#define ANIM_MEGAERA_ATTACK_UP    181
#define ANIM_IRIS_HEAL            182

#define ANIM_IRON                 220
#define ANIM_STEAM                221
#define ANIM_SHADE                222
#define ANIM_KINDLE               223
#define ANIM_COAL                 224
#define ANIM_FLOWER               225
#define ANIM_SALT                 226
#define ANIM_SPRING               227
#define ANIM_BREATH               228
#define ANIM_ETHER                229
#define ANIM_BALM                 230
#define ANIM_TINDER               231
#define ANIM_WHORL                232
#define ANIM_GALE                 233
#define ANIM_WAFT                 234
#define ANIM_CORE                 236
#define ANIM_MUD                  237
#define ANIM_HAZE                 238
#define ANIM_PETRA                239
#define ANIM_RIME                 240
#define ANIM_LULL                 241
#define ANIM_GASP                 242
#define ANIM_FUGUE                243
#define ANIM_CRYSTAL              244
#define ANIM_EDDY                 245
#define ANIM_CANNON               246
#define ANIM_AROMA                247
#define ANIM_REFLUX               248
#define ANIM_DJINN_COUNTER        249
#define ANIM_MOLD                 250
#define ANIM_MELD                 251
#define ANIM_SHINE                252
#define ANIM_GEODE                253
#define ANIM_SERAC                254
#define ANIM_SPARK                255
#define ANIM_FURY                 256
#define ANIM_CHAR                 257

// NOTE: These were shifted forward from GS1 (see gs1/anims.h)
#define ANIM_VENUS                280
#define ANIM_MERCURY              281
#define ANIM_MARS                 282
#define ANIM_JUPITER              283

#define ANIM_ECHO_CUT             390
#define ANIM_WATERY_GRAVE         391
#define ANIM_RAGING_FLOOD         392
#define ANIM_HYDRO_SLASH          393
#define ANIM_MIGHTY_PRESS         394
#define ANIM_SLAVER               395
#define ANIM_COUNTER_RUSH         396
#define ANIM_DJINNFEST            397
#define ANIM_HEAT_KISS            398
#define ANIM_ANGLE_SPIKE          399

#define ANIM_SAND_BREATH          408
#define ANIM_DESERT_GASP          409
#define ANIM_BLACK_ICE            410
#define ANIM_AQUA_BREATH          411
#define ANIM_TOXIC_BREATH         412
#define ANIM_GRAVEL_BLOW          413
#define ANIM_BLAST_BREATH         414
#define ANIM_DARKSOL_GASP         415
#define ANIM_FLAME_BREATH         416

#define ANIM_MANEATER             421
#define ANIM_WOLF_FLASH           422 // "Ur Flash"
#define ANIM_CRUSHER_GRIP         423
#define ANIM_VANISH_CLAW          424
#define ANIM_TWIN_SHEAR           425
#define ANIM_TRIPLE_CHOMP         426
#define ANIM_DOUBLESTEP           427
#define ANIM_POISON_GEL           428
#define ANIM_MUCOUS_GEL           429
#define ANIM_RISING_VENOM         430
#define ANIM_SACK                 431
#define ANIM_FIRE_DANCE_E         432
#define ANIM_STUN_MUSCLE          433

#define ANIM_ROLLING_FLAME        434
#define ANIM_CAGE                 435
#define ANIM_REGEN_DANCE          436
#define ANIM_HUMAN_HUNT           437
#define ANIM_UNUSED_BITE_1        438 // unused
#define ANIM_UNUSED_BITE_2        439 // unused
#define ANIM_POISON_STING         440
#define ANIM_KILL_STING           441
#define ANIM_BEAST_NEEDLE         442
#define ANIM_POISON_NEEDLE        443 // "Poison Sting"
#define ANIM_STUN_NEEDLE          444 // "Stun Sting"
#define ANIM_DEMON_EYE            445
#define ANIM_CLAW_SLASH           446
#define ANIM_OCEAN_FIST           447
#define ANIM_FULMINOUS_EDGE       448 // "Formina Sage"
#define ANIM_PIKE_ASSAULT         449
#define ANIM_RISING_DRAGON_P      450
#define ANIM_DARK_CONTACT         451 // "True Collide"
#define ANIM_STAR_MINE            452
#define ANIM_FORMIC_ACID          453
#define ANIM_CLAW_ATTACK          454
#define ANIM_BEAT_DANCE           455
#define ANIM_UNUSED_BITE_3        456 // unused
#define ANIM_POWER_CRUSH          457
#define ANIM_HEAT_STUN            458
#define ANIM_EARTH_FORCE          459
#define ANIM_GUARD_AURA           460
#define ANIM_DJINN_BLAST          461
#define ANIM_DJINN_STORM          462
#define ANIM_MINE_BALL            463
#define ANIM_ELEMENT_SWAP         464
#define ANIM_DJINN_STUN           465
#define ANIM_MYSTIC_CALL          466
#define ANIM_SIGNAL_WHISTLE       467
#define ANIM_PSY_BOOST            468
#define ANIM_STRONG_HIT           469
#define ANIM_CHILL_BREATH         470
#define ANIM_STORM_BREATH_2       471

#define NUM_ANIMS                 472


#define ANIM_MELEE                0x4000
#define SUBANIM_ATTACK_ORB        10

#define SUBANIM_ECHO              8
#define SUBANIM_SOUR              9
#define SUBANIM_CHILL             10
#define SUBANIM_GEL               11
#define SUBANIM_STEEL             12
#define SUBANIM_FOG               13
#define SUBANIM_UNUSED_DJINNI_1   14 // unused
#define SUBANIM_UNUSED_DJINNI_2   15 // unused
#define SUBANIM_WHEEZE            16
#define SUBANIM_BLITZ             17

// NOTE: These were shifted forward from GS1 (see gs1/anims.h)
#define SUBANIM_TERRA_STRIKE      38
#define SUBANIM_POISON_CLOUD      39
#define SUBANIM_POISON_DEATH      40
#define SUBANIM_MORTAL_DANGER     41
#define SUBANIM_BAD_OMEN          42
#define SUBANIM_LIFE_NOURISH      43
#define SUBANIM_AQUA_SOCK         44
#define SUBANIM_BLIZZARD          45
#define SUBANIM_FROST_BITE        46
#define SUBANIM_UNUSED_UNLEASH_1  47 // unused
#define SUBANIM_LIFE_LEECH        48
#define SUBANIM_PSY_LEECH         49
#define SUBANIM_BROIL             50
#define SUBANIM_MELTDOWN          51
#define SUBANIM_HEAT_MIRAGE       52
#define SUBANIM_BARRAGE           53
#define SUBANIM_UNUSED_UNLEASH_2  54 // unused
#define SUBANIM_ACID_BATH         55
#define SUBANIM_UNUSED_UNLEASH_3  56 // unused
#define SUBANIM_STUN_VOLTAGE      57
#define SUBANIM_BLINDING_SMOG     58
#define SUBANIM_MURK              59
#define SUBANIM_CYCLONE_SLASH     60
#define SUBANIM_PSYPHON_SEAL      61
#define SUBANIM_ASURA             62
#define SUBANIM_FORCIBLE_ARM      63
#define SUBANIM_TRUNCHEON_FIST    64
#define SUBANIM_SEVERE_BLOW       65
// (end of GS1 anims)

#define SUBANIM_POWER_DRIVE       66
#define SUBANIM_HEAT_SMASH        67
#define SUBANIM_STUN_CLOUD        68
#define SUBANIM_SEARING_FOG       69
#define SUBANIM_ICE_CRUSH         70
#define SUBANIM_SARGASSO          71
#define SUBANIM_EVIL_EYE          72
#define SUBANIM_VEIN_TAP          73
#define SUBANIM_SCORPIONFISH      74
#define SUBANIM_MOON_AIR          75
#define SUBANIM_FLASH_EDGE        76
#define SUBANIM_HIGH_VITALS       77
#define SUBANIM_FLARE_BURST       78
#define SUBANIM_HAMMERSPHERE      79
#define SUBANIM_FLASH_FORCE       80
#define SUBANIM_CRUCIBLE_FIRE     81
#define SUBANIM_REVERSE_STAR      82
#define SUBANIM_SUPERNOVA         83
#define SUBANIM_STUN_BOLT         84
#define SUBANIM_SARCOPHAGUS       85
#define SUBANIM_RAIDENS_WRATH     86
#define SUBANIM_UNUSED_UNLEASH_4  87 // unused
#define SUBANIM_APOCALYPSE        88
#define SUBANIM_FLASH_PUNCH       89
#define SUBANIM_ARMOR_CRUSH       90
#define SUBANIM_STUN_JIP          91
#define SUBANIM_QUICK_SLASH       92
#define SUBANIM_BOSCA_HIT         93
#define SUBANIM_MOTHER_EARTH      94
#define SUBANIM_ROC_ORC           95
#define SUBANIM_FATAL_FANG        96
#define SUBANIM_POWER_BITE        97
#define SUBANIM_TERRIBLE_BITE     98
#define SUBANIM_CALL_ZOMBIE       99


#define ANIM_SUMMON               0x8000
#define SUBANIM_ZAGAN             13
#define SUBANIM_MEGAERA           14
#define SUBANIM_FLORA             15
#define SUBANIM_MOLOCH            16
#define SUBANIM_ULYSSES           17
#define SUBANIM_HAURES            18
#define SUBANIM_ECLIPSE           19
#define SUBANIM_COATLICUE         20
#define SUBANIM_DAEDALUS          21
#define SUBANIM_AZUL              22
#define SUBANIM_CATASTROPHE       23
#define SUBANIM_CHARON            24
#define SUBANIM_IRIS              25
#define SUBANIM_DAEDALUS_2        26
#define SUBANIM_TRIDENT           27
#define SUBANIM_CRUEL_RUIN        28
#define SUBANIM_METEOR_BLOW       29


#endif // GS2_MOVE_ANIMS_H