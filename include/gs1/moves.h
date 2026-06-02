// gs1/moves.h
#ifndef MOVES_GS1_H
#define MOVES_GS1_H

#define MOVE_NONE             0

#define MOVE_ATTACK           1
#define MOVE_DEFEND           2

#define MOVE_QUAKE            3
#define MOVE_EARTHQUAKE       4
#define MOVE_QUAKE_SPHERE     5
#define MOVE_SPIRE            6
#define MOVE_CLAY_SPIRE       7
#define MOVE_STONE_SPIRE      8
#define MOVE_GAIA             9
#define MOVE_MOTHER_GAIA      10
#define MOVE_GRAND_GAIA       11
#define MOVE_GROWTH           12
#define MOVE_MAD_GROWTH       13
#define MOVE_WILD_GROWTH      14
#define MOVE_THORN            15
#define MOVE_BRIAR            16
#define MOVE_NETTLE           17

#define MOVE_FROST            24
#define MOVE_TUNDRA           25
#define MOVE_GLACIER          26
#define MOVE_ICE              27
#define MOVE_ICE_HORN         28
#define MOVE_ICE_MISSILE      29
#define MOVE_PRISM            30
#define MOVE_HAIL_PRISM       31
#define MOVE_FREEZE_PRISM     32
#define MOVE_DOUSE            33
#define MOVE_DRENCH           34
#define MOVE_DELUGE           35
#define MOVE_FROTH            36
#define MOVE_FROTH_SPHERE     37
#define MOVE_FROTH_SPIRAL     38

#define MOVE_FLARE            45
#define MOVE_FLARE_WALL       46
#define MOVE_FLARE_STORM      47
#define MOVE_FIRE             48
#define MOVE_FIREBALL         49
#define MOVE_INFERNO          50
#define MOVE_VOLCANO          51
#define MOVE_ERUPTION         52
#define MOVE_PYROCLASM        53
#define MOVE_BLAST            54
#define MOVE_MAD_BLAST        55
#define MOVE_FIERY_BLAST      56
#define MOVE_STARBURST        57 // "Blast"
#define MOVE_NOVA             58
#define MOVE_SUPERNOVA        59

#define MOVE_BOLT             66
#define MOVE_FLASH_BOLT       67
#define MOVE_BLUE_BOLT        68
#define MOVE_RAY              69
#define MOVE_STORM_RAY        70
#define MOVE_DESTRUCT_RAY     71
#define MOVE_PLASMA           72
#define MOVE_SHINE_PLASMA     73
#define MOVE_SPARK_PLASMA     74
#define MOVE_SLASH            75
#define MOVE_WIND_SLASH       76
#define MOVE_SONIC_SLASH      77
#define MOVE_WHIRLWIND        78
#define MOVE_TORNADO          79
#define MOVE_TEMPEST          80

#define MOVE_CURE             90
#define MOVE_CURE_WELL        91
#define MOVE_POTENT_CURE      92
#define MOVE_PLY              93
#define MOVE_PLY_WELL         94
#define MOVE_PURE_PLY         95
#define MOVE_WISH             96
#define MOVE_WISH_WELL        97
#define MOVE_PURE_WISH        98
#define MOVE_CURE_POISON      99
#define MOVE_RESTORE          100
#define MOVE_REVIVE           101
#define MOVE_IMPACT           102
#define MOVE_HIGH_IMPACT      103
#define MOVE_DULL             104
#define MOVE_BLUNT            105
#define MOVE_GUARD            106
#define MOVE_PROTECT          107
#define MOVE_IMPAIR           108
#define MOVE_DEBILITATE       109
#define MOVE_WARD             110
#define MOVE_RESIST           111
#define MOVE_WEAKEN           112
#define MOVE_ENFEEBLE         113
#define MOVE_TAINT            114 // unused
#define MOVE_POISON           115 // unused
#define MOVE_DELUDE           116
#define MOVE_CONFUSE          117 // unused
#define MOVE_CHARM            118 // unused
#define MOVE_PARALYZE         119 // unused
#define MOVE_SLEEP            120
#define MOVE_BIND             121
#define MOVE_HAUNT            122
#define MOVE_CURSE            123
#define MOVE_CONDEMN          124
#define MOVE_DRAIN            125
#define MOVE_PSY_DRAIN        126
#define MOVE_BREAK            127
#define MOVE_REGENERATE       128 // unused
#define MOVE_REFLECT          129 // unused

#define MOVE_MOVE             140
#define MOVE_MIND_READ        141
#define MOVE_FORCE            142
#define MOVE_LIFT             143
#define MOVE_REVEAL           144
#define MOVE_HALT             145
#define MOVE_CLOAK            146
#define MOVE_CARRY            147
#define MOVE_CATCH            148
#define MOVE_RETREAT          149
#define MOVE_AVOID            150

#define MOVE_DRAGON_CLOUD     160
#define MOVE_DEMON_NIGHT      161
#define MOVE_HELM_SPLITTER    162
#define MOVE_QUICK_STRIKE     163
#define MOVE_ROCKFALL         164
#define MOVE_ROCKSLIDE        165
#define MOVE_AVALANCHE        166
#define MOVE_LAVA_SHOWER      167
#define MOVE_MOLTEN_BATH      168
#define MOVE_MAGMA_STORM      169
#define MOVE_DEMON_SPEAR      170
#define MOVE_ANGEL_SPEAR      171
#define MOVE_GUARDIAN         172
#define MOVE_PROTECTOR        173
#define MOVE_MAGIC_SHELL      174
#define MOVE_MAGIC_SHIELD     175
#define MOVE_DEATH_PLUNGE     176
#define MOVE_SHURIKEN         177
#define MOVE_ANNIHILATION     178
#define MOVE_PUNJI            179
#define MOVE_PUNJI_TRAP       180
#define MOVE_PUNJI_STRIKE     181
#define MOVE_FIRE_BOMB        182
#define MOVE_CLUSTER_BOMB     183
#define MOVE_CARPET_BOMB      184
#define MOVE_GALE_P           185
#define MOVE_TYPHOON          186
#define MOVE_HURRICANE        187
#define MOVE_THUNDERCLAP      188
#define MOVE_THUNDERBOLT      189
#define MOVE_THUNDERHEAD      190 // "Thunderstorm" in GS1
#define MOVE_MIST_P           191
#define MOVE_RAGNAROK         192
#define MOVE_CUTTING_EDGE     193
#define MOVE_HEAT_WAVE        194
#define MOVE_ASTRAL_BLAST     195
#define MOVE_PLANET_DIVER     196

#define MOVE_TERRA_STRIKE     210
#define MOVE_POISON_CLOUD     211
#define MOVE_POISON_DEATH     212 // "Deadly Poison" in GS1
#define MOVE_MORTAL_DANGER    213
#define MOVE_BAD_OMEN         214
#define MOVE_LIFE_NOURISH     215
#define MOVE_AQUA_SOCK        216
#define MOVE_BLIZZARD         217
#define MOVE_FROST_BITE       218
#define MOVE_DROWN            219
#define MOVE_LIFE_LEECH       220
#define MOVE_PSY_LEECH        221
#define MOVE_BROIL            222
#define MOVE_MELTDOWN         223
#define MOVE_HEAT_MIRAGE      224
#define MOVE_BARRAGE          225
#define MOVE_DEMONFIRE        226 // "Demon Fire" in GS1
#define MOVE_ACID_BATH        227
#define MOVE_VORPAL_SLASH     228
#define MOVE_STUN_VOLTAGE     229
#define MOVE_BLINDING_SMOG    230
#define MOVE_MURK             231
#define MOVE_CYCLONE_SLASH    232
#define MOVE_PSYPHON_SEAL     233
#define MOVE_RAPID_SMASH      234
#define MOVE_SONIC_SMASH      235
#define MOVE_ASURA            236
#define MOVE_TITAN_BLADE      237
#define MOVE_SHINING_STAR     238

#define MOVE_HERB             250
#define MOVE_NUT              251
#define MOVE_VIAL             252
#define MOVE_POTION           253
#define MOVE_SOOTHING_WATER   254
#define MOVE_PSY_CRYSTAL      255
#define MOVE_ANTIDOTE         256
#define MOVE_ELIXIR           257
#define MOVE_WATER_OF_LIFE    258
#define MOVE_POWER_BREAD      260
#define MOVE_COOKIE           261
#define MOVE_APPLE            262
#define MOVE_HARD_NUT         263
#define MOVE_MINT             264
#define MOVE_LUCKY_PEPPER     265
#define MOVE_SMOKE_BOMB       267
#define MOVE_SLEEP_BOMB       268
#define MOVE_ADEPT_RING       269
#define MOVE_CORN             270

#define MOVE_FLINT            300
#define MOVE_GRANITE          301
#define MOVE_QUARTZ           302
#define MOVE_VINE             303
#define MOVE_SAP              304
#define MOVE_GROUND           305
#define MOVE_BANE             306

#define MOVE_FIZZ             320
#define MOVE_SLEET            321
#define MOVE_MIST_D           322
#define MOVE_SPRITZ           323
#define MOVE_HAIL             324
#define MOVE_TONIC            325
#define MOVE_DEW              326

#define MOVE_FORGE            340
#define MOVE_FEVER            341
#define MOVE_CORONA           342
#define MOVE_SCORCH           343
#define MOVE_EMBER            344
#define MOVE_FLASH            345
#define MOVE_TORCH            346

#define MOVE_GUST             360
#define MOVE_BREEZE           361
#define MOVE_ZEPHYR           362
#define MOVE_SMOG             363
#define MOVE_KITE             364
#define MOVE_SQUALL           365
#define MOVE_LUFF             366

// NOTE: GS1 summon move IDs were shifted around in GS2
#ifdef GS1
#define MOVE_VENUS            380
#define MOVE_RAMSES           381
#define MOVE_CYBELE           382
#define MOVE_JUDGMENT         383

#define MOVE_MERCURY          386
#define MOVE_NEREID           387
#define MOVE_NEPTUNE          388
#define MOVE_BOREAS           389

#define MOVE_MARS             392
#define MOVE_KIRIN            393
#define MOVE_TIAMAT           394
#define MOVE_METEOR           395

#define MOVE_JUPITER          398
#define MOVE_ATALANTA         399
#define MOVE_PROCNE           400
#define MOVE_THOR             401
#endif // GS1

#define MOVE_FIRE_BREATH_1    420 // "Fire Blessing"
#define MOVE_FIRE_BREATH_2    421 // "Fire Blessing"
#define MOVE_FIRE_BREATH_3    422 // "Fire Blessing"
#define MOVE_WATER_BREATH_1   423 // "Water Blessing"
#define MOVE_WATER_BREATH_2   424 // "Water Blessing"
#define MOVE_WATER_BREATH_3   425 // "Water Blessing"
#define MOVE_ICE_BREATH_1     426 // "Ice Blessing"
#define MOVE_ICE_BREATH_2     427 // "Ice Blessing"
#define MOVE_ICE_BREATH_3     428 // "Ice Blessing"
#define MOVE_DARK_BREATH_1    429 // "Dark Blessing"
#define MOVE_DARK_BREATH_2    430 // "Dark Blessing"
#define MOVE_ACID_BREATH_1    431 // "Dark Blessing" (Toadonpa)
#define MOVE_ACID_BREATH_2    432 // "Acid Blessing"
#define MOVE_STORM_BREATH_1   433 // "Storm Blessing"
#define MOVE_STORM_BREATH_2   434 // "Storm Blessing"
#define MOVE_SONIC_WAVE_1     435
#define MOVE_SONIC_WAVE_2     436
#define MOVE_SHRIEK           437
#define MOVE_BANSHEE_HOWL     438
#define MOVE_CRAZY_VOICE      439
#define MOVE_WAR_CRY          440
#define MOVE_WICKED_HOWL      441
#define MOVE_WING_BEAT        442
#define MOVE_WING_FLUTTER     443
#define MOVE_WING_STROKE      444
#define MOVE_DEMON_BREATH     445 // "Evil Blessing"
#define MOVE_DEADLY_GAS       446

#define MOVE_RUMBLE           450
#define MOVE_BONE_CHILLER     451
#define MOVE_SLICE            452
#define MOVE_BONE_CHARGE      453
#define MOVE_MYSTIC_FLAME     454
#define MOVE_NUMBING_STING    455
#define MOVE_BRUTE_FORCE      456
#define MOVE_STICKY_GOO       457
#define MOVE_CANNIBAL_FANG    458
#define MOVE_BEAR_CLAW        459
#define MOVE_POISONOUS_BITE   460
#define MOVE_FLYING_ATTACK    461
#define MOVE_UNDEAD_SWORD     462
#define MOVE_RANSACK          463
#define MOVE_STICKY_POISON    464
#define MOVE_POISON_FANG      465
#define MOVE_ELECTRIC_BITE    466
#define MOVE_POISON_TAIL      467
#define MOVE_ONSLAUGHT        468
#define MOVE_VAMPIRIC_FANG    469
#define MOVE_BACTERIA_RUSH    470
#define MOVE_SWIFT_STRIKE     471
#define MOVE_ROTTEN_BLOOD     472
#define MOVE_FORCIBLE_ARM     473
#define MOVE_DOUBLE_FANG      474
#define MOVE_MORTAL_BLOW      475
#define MOVE_FREEBITE_RUSH    476
#define MOVE_TWIN_BEAKS       477
#define MOVE_RABID_FANG       478
#define MOVE_ACID_BITE        479
#define MOVE_DYNAMITE         480
#define MOVE_HEADBUTT         481
#define MOVE_POISON_INK       482
#define MOVE_TRUNCHEON_FIST   483
#define MOVE_COUNTERSTRIKE    484
#define MOVE_MAD_DASH         485
#define MOVE_SOOTHING_STAR    486
#define MOVE_SPIDER_WEB       487
#define MOVE_HEARTRENDER      488
#define MOVE_MAD_SPATTER      489
#define MOVE_SPASM            490
#define MOVE_SLEEP_STAR       491
#define MOVE_DECOMPOSE        492
#define MOVE_HAUNTING         493
#define MOVE_WORMS            494
#define MOVE_BERSERK          495
#define MOVE_LUCID_PROPHECY   496
#define MOVE_RECOVERY         497
#define MOVE_FLEE             498
#define MOVE_CONTAIN          499
#define MOVE_THREATEN         500
#define MOVE_TREMBLE          501
#define MOVE_FORTIFY          502
#define MOVE_SPEED_SURGE      503
#define MOVE_ALLY_SEARCH      504
#define MOVE_SIDESTEP         505
#define MOVE_TOTAL_DEFENSE    506
#define MOVE_STAND_READY      507
#define MOVE_BATTLE_CRY       508
#define MOVE_CANT_USE         509
#define MOVE_POISON_BEAT      510
#define MOVE_SPINNING_BEAT    511
#define MOVE_HEAT_FLASH       512
#define MOVE_DEATH_SCYTHE     513 // "Death Size"
#define MOVE_OUTER_SPACE      514
#define MOVE_DRAGON_DRIVER    515
#define MOVE_DRAIN_FANG       516
#define MOVE_SEVERE_BLOW      517
#define MOVE_THRASH           518

#endif // MOVES_GS1_H