// gs2/enemies.h
#ifndef GS2_ENEMIES_H
#define GS2_ENEMIES_H

#define ENEMY_NONE                    0

#define ENEMY_DJINNI_VENUS_1          1   // Quartz
#define ENEMY_DJINNI_VENUS_2          2   // Vine
#define ENEMY_DJINNI_VENUS_3          3   // (unused)
#define ENEMY_DJINNI_VENUS_4          4   // (unused)
#define ENEMY_DJINNI_VENUS_5          5   // Iron
#define ENEMY_DJINNI_VENUS_6          6   // Steel
#define ENEMY_DJINNI_VENUS_7          7   // Mud
#define ENEMY_DJINNI_VENUS_8          8   // Flower
#define ENEMY_DJINNI_VENUS_9          9   // Meld
#define ENEMY_DJINNI_VENUS_10         10  // Petra
#define ENEMY_DJINNI_VENUS_11         11  // (unused)
#define ENEMY_DJINNI_VENUS_12         12  // (unused)
#define ENEMY_DJINNI_VENUS_13         13  // (unused)
#define ENEMY_DJINNI_VENUS_14         14  // Crystal
#define ENEMY_DJINNI_MERCURY_1        15  // Sleet
#define ENEMY_DJINNI_MERCURY_2        16  // Spritz
#define ENEMY_DJINNI_MERCURY_3        17  // Hail
#define ENEMY_DJINNI_MERCURY_4        18  // Dew
#define ENEMY_DJINNI_MERCURY_5        19  // Fog
#define ENEMY_DJINNI_MERCURY_6        20  // Sour
#define ENEMY_DJINNI_MERCURY_7        21  // (unused)
#define ENEMY_DJINNI_MERCURY_8        22  // (unused)
#define ENEMY_DJINNI_MERCURY_9        23  // Chill
#define ENEMY_DJINNI_MERCURY_10       24  // Steam
#define ENEMY_DJINNI_MERCURY_11       25  // (unused)
#define ENEMY_DJINNI_MERCURY_12       26  // (unused)
#define ENEMY_DJINNI_MERCURY_13       27  // Eddy
#define ENEMY_DJINNI_MERCURY_14       28  // Balm
#define ENEMY_DJINNI_MERCURY_15       29  // Serac
#define ENEMY_DJINNI_MARS_1           30  // Forge
#define ENEMY_DJINNI_MARS_2           31  // Corona
#define ENEMY_DJINNI_MARS_3           32  // Flash
#define ENEMY_DJINNI_MARS_4           33  // Cannon
#define ENEMY_DJINNI_MARS_5           34  // (unused)
#define ENEMY_DJINNI_MARS_6           35  // Kindle
#define ENEMY_DJINNI_MARS_7           36  // (unused)
#define ENEMY_DJINNI_MARS_8           37  // (unused)
#define ENEMY_DJINNI_MARS_9           38  // Reflux
#define ENEMY_DJINNI_MARS_10          39  // Core
#define ENEMY_DJINNI_MARS_11          40  // (unused)
#define ENEMY_DJINNI_MARS_12          41  // (unused)
#define ENEMY_DJINNI_MARS_13          42  // Fury
#define ENEMY_DJINNI_MARS_14          43  // Fugue
#define ENEMY_DJINNI_JUPITER_1        44  // Breeze
#define ENEMY_DJINNI_JUPITER_2        45  // Zephyr
#define ENEMY_DJINNI_JUPITER_3        46  // Squall
#define ENEMY_DJINNI_JUPITER_4        47  // Luff
#define ENEMY_DJINNI_JUPITER_5        48  // Breath
#define ENEMY_DJINNI_JUPITER_6        49  // Blitz
#define ENEMY_DJINNI_JUPITER_7        50  // (unused)
#define ENEMY_DJINNI_JUPITER_8        51  // Waft
#define ENEMY_DJINNI_JUPITER_9        52  // (unused)
#define ENEMY_DJINNI_JUPITER_10       53  // Wheeze
#define ENEMY_DJINNI_JUPITER_11       54  // (unused)
#define ENEMY_DJINNI_JUPITER_12       55  // Whorl
#define ENEMY_DJINNI_JUPITER_13       56  // Gasp
#define ENEMY_DJINNI_JUPITER_14       57  // (unused)
#define ENEMY_DJINNI_JUPITER_15       58  // Gale

#define ENEMY_RUFFIAN                 60
#define ENEMY_RUFFIAN_2               61  // (unused)
#define ENEMY_RUFFIAN_3               62  // (unused)
#define ENEMY_PUNCH_ANT               63
#define ENEMY_FLASH_ANT               64
#define ENEMY_NUMB_ANT                65
#define ENEMY_CHESTBEATER             66
#define ENEMY_WILD_GORILLA            67
#define ENEMY_CRAZY_GORILLA           68  // (unused)
#define ENEMY_KING_SCORPION           69
#define ENEMY_DEVIL_SCORPION          70
#define ENEMY_SAND_SCORPION           71
#define ENEMY_BRIGGS                  72
#define ENEMY_SEA_FIGHTER             73
#define ENEMY_CHAMPA_2                74  // (unused)
#define ENEMY_CHAMPA_3                75  // (unused)
#define ENEMY_CUTTLE                  76
#define ENEMY_CALAMAR                 77
#define ENEMY_MAN_O_WAR               78
#define ENEMY_AQUA_JELLY              79
#define ENEMY_AQUA_HYDRA              80
#define ENEMY_HYDRA                   81
#define ENEMY_PYRODRA                 82
#define ENEMY_SERPENT_1               83
#define ENEMY_SERPENT_2               84
#define ENEMY_SERPENT_3               85
#define ENEMY_SERPENT_4               86
#define ENEMY_SERPENT_5               87
#define ENEMY_SERPENT_6               88  // (unused)
#define ENEMY_SERPENT_7               89  // (unused)
#define ENEMY_AVIMANDER               90
#define ENEMY_MACETAIL                91
#define ENEMY_BOMBANDER               92
#define ENEMY_POSEIDON                93
#define ENEMY_POSEIDON_2              94
#define ENEMY_POSEIDON_3              95  // (unused)
#define ENEMY_MOAPA                   96
#define ENEMY_MOAPA_2                 97  // (unused)
#define ENEMY_MOAPA_3                 98  // (unused)
#define ENEMY_KNIGHT                  99
#define ENEMY_KNIGHT_2                100 // (unused)
#define ENEMY_KNIGHT_3                101 // (unused)
#define ENEMY_AGATIO                  102
#define ENEMY_AGATIO_2                103 // (unused)
#define ENEMY_AGATIO_3                104 // (unused)
#define ENEMY_KARST                   105
#define ENEMY_KARST_2                 106 // (unused)
#define ENEMY_KARST_3                 107 // (unused)

#define ENEMY_WILD_WOLF               109
#define ENEMY_DIRE_WOLF               110
#define ENEMY_WHITE_WOLF              111 // (unused)
#define ENEMY_ANGLE_WORM              112
#define ENEMY_FIRE_WORM               113
#define ENEMY_CHIMERA_WORM            114
#define ENEMY_MINI_GOBLIN             115
#define ENEMY_ALEC_GOBLIN             116
#define ENEMY_BABOON_GOBLIN           117 // (unused)
#define ENEMY_MOMONGA                 118
#define ENEMY_SQUIRRELFANG            119
#define ENEMY_MOMANGLER               120 // (unused)
#define ENEMY_KOBOLD                  121
#define ENEMY_WARGOLD                 122
#define ENEMY_KOBOLD_KING             123 // (unused)
#define ENEMY_MAD_PLANT_1             124
#define ENEMY_MAD_PLANT_2             125
#define ENEMY_MAD_PLANT_3             126
#define ENEMY_MAD_PLANT_4             127
#define ENEMY_MAD_PLANT_5             128
#define ENEMY_EMU                     129
#define ENEMY_TALON_RUNNER            130
#define ENEMY_WINGED_RUNNER           131 // (unused)
#define ENEMY_MUMMY                   132
#define ENEMY_FOUL_MUMMY              133
#define ENEMY_GRAVE_WIGHT             134
#define ENEMY_WYVERN_CHICK            135
#define ENEMY_PTERANODON              136
#define ENEMY_WINGED_LIZARD           137
#define ENEMY_WOLFKIN_CUB             138
#define ENEMY_WOLFKIN                 139
#define ENEMY_SKINWALKER              140 // (unused)
#define ENEMY_DINO                    141
#define ENEMY_DINOX                   142
#define ENEMY_DINOSAURUS              143 // (unused)
#define ENEMY_ASSASSIN                144
#define ENEMY_SLAYER                  145
#define ENEMY_DARK_MURDER             146 // (unused)
#define ENEMY_DOOMSAYER               147
#define ENEMY_LICH_GS2                148
#define ENEMY_BANE_WIGHT              149 // (unused)
#define ENEMY_PIXIE                   150
#define ENEMY_FAERY                   151
#define ENEMY_WEIRD_NYMPH             152 // (unused) ("Weird Nypmh")
#define ENEMY_WOOD_WALKER             153
#define ENEMY_ELDER_WOOD              154 // (unused)
#define ENEMY_ESTRE_WOOD              155 // (unused)
#define ENEMY_STAR_MAGICIAN           156
#define ENEMY_DARK_WIZARD             157 // (unused)
#define ENEMY_EVIL_SHAMAN             158 // (unused)
#define ENEMY_URCHIN_BEAST            159
#define ENEMY_NEEDLE_EGG              160
#define ENEMY_SEA_HEDGEHOG            161
#define ENEMY_CONCH_SHELL             162
#define ENEMY_SPIRAL_SHELL            163
#define ENEMY_POISON_SHELL            164 // (unused)
#define ENEMY_MERMAN                  165
#define ENEMY_GILLMAN                 166
#define ENEMY_GILLMAN_LORD            167
#define ENEMY_SEA_DRAGON              168
#define ENEMY_TURTLE_DRAGON           169
#define ENEMY_OCEAN_DRAGON            170
#define ENEMY_SEABIRD                 171
#define ENEMY_SEAFOWL                 172
#define ENEMY_GREAT_SEAGULL           173
#define ENEMY_ROC                     174
#define ENEMY_RAPTOR                  175
#define ENEMY_FELL_RAPTOR             176 // (unused)
#define ENEMY_WYVERN                  177
#define ENEMY_SKY_DRAGON              178
#define ENEMY_WINGED_DRAGON           179 // (unused)
#define ENEMY_PHOENIX                 180
#define ENEMY_FIRE_BIRD               181
#define ENEMY_WONDER_BIRD             182
#define ENEMY_BLUE_DRAGON             183
#define ENEMY_CRUEL_DRAGON            184
#define ENEMY_DRAGON                  185 // (unused)
#define ENEMY_FLAME_DRAGON_LARGE      186
#define ENEMY_FLAME_DRAGON_SMALL      187
#define ENEMY_FIRE_DRAGON             188
#define ENEMY_MINOTAURUS              189
#define ENEMY_MINOS_WARRIOR           190
#define ENEMY_MINOS_KNIGHT            191
#define ENEMY_GRESSIL                 192
#define ENEMY_LITTLE_DEATH            193
#define ENEMY_MINI_DEATH              194 // (unused)
#define ENEMY_RED_DEMON               195
#define ENEMY_LESSER_DEMON            196
#define ENEMY_MAD_DEMON               197
#define ENEMY_AKA_MANAH               198
#define ENEMY_DRUJ                    199
#define ENEMY_AESHMA                  200 // (unused)
#define ENEMY_VALUKAR                 201
#define ENEMY_VALUKAR_2               202 // (unused)
#define ENEMY_VALUKAR_3               203 // (unused)
#define ENEMY_LIVING_ARMOR            204
#define ENEMY_PUPPET_WARRIOR          205
#define ENEMY_ESTRE_BARON             206 // (unused)
#define ENEMY_GHOST_SOLDIER           207
#define ENEMY_SOUL_SOLDIER            208
#define ENEMY_SPIRIT_SOLDIER          209 // (unused)
#define ENEMY_DULLAHAN                210
#define ENEMY_DULLAHAN_TURN2          211 // moveset cont'd
#define ENEMY_DULLAHAN_TURN3          212 // moveset cont'd
#define ENEMY_SENTINEL                213
#define ENEMY_SENTINEL_2              214 // (unused)
#define ENEMY_SENTINEL_3              215 // (unused)

// GS1 enemies
#define ENEMY_VERMIN_PROLOGUE         216
#define ENEMY_VERMIN                  217
#define ENEMY_MAD_VERMIN              218
#define ENEMY_BAT_PROLOGUE            219
#define ENEMY_BAT                     220
#define ENEMY_RABID_BAT               221
#define ENEMY_GIANT_BAT               222
#define ENEMY_WILD_MUSHROOM_PROLOGUE  223
#define ENEMY_WILD_MUSHROOM           224
#define ENEMY_DEATH_CAP               225
#define ENEMY_SLIME_PROLOGUE          226
#define ENEMY_SLIME                   227
#define ENEMY_OOZE                    228
#define ENEMY_SLIME_BEAST             229
#define ENEMY_GHOST                   230
#define ENEMY_GHOST_MAGE              231
#define ENEMY_HORNED_GHOST            232
#define ENEMY_LICH_GS1                233
#define ENEMY_ZOMBIE                  234
#define ENEMY_UNDEAD                  235
#define ENEMY_WIGHT                   236
#define ENEMY_BANDIT                  237
#define ENEMY_THIEF                   238
#define ENEMY_BRIGAND                 239
#define ENEMY_SKELETON                240
#define ENEMY_BONE_FIGHTER            241
#define ENEMY_SKULL_WARRIOR           242
#define ENEMY_WILL_HEAD               243
#define ENEMY_DEATH_HEAD              244
#define ENEMY_WILLOWISP               245
#define ENEMY_RAT                     246
#define ENEMY_ARMORED_RAT             247
#define ENEMY_PLATED_RAT              248
#define ENEMY_RAT_SOLDIER             249
#define ENEMY_RAT_FIGHTER             250
#define ENEMY_RAT_WARRIOR             251
#define ENEMY_DRONE_BEE               252
#define ENEMY_FIGHTER_BEE             253
#define ENEMY_WARRIOR_BEE             254
#define ENEMY_TROLL                   255
#define ENEMY_CAVE_TROLL              256
#define ENEMY_BRUTAL_TROLL            257
#define ENEMY_SPIDER                  258
#define ENEMY_TARANTULA               259
#define ENEMY_RECLUSE                 260
#define ENEMY_GNOME                   261
#define ENEMY_GNOME_MAGE              262
#define ENEMY_GNOME_WIZARD            263
#define ENEMY_GHOUL                   264
#define ENEMY_FIENDISH_GHOUL          265
#define ENEMY_CANNIBAL_GHOUL          266
#define ENEMY_MAULER                  267
#define ENEMY_RAVAGER                 268
#define ENEMY_GRISLY                  269
#define ENEMY_HARPY                   270
#define ENEMY_VIRAGO                  271
#define ENEMY_HARRIDAN                272
#define ENEMY_SIREN                   273
#define ENEMY_SUCCUBUS                274
#define ENEMY_NIGHTMARE               275
#define ENEMY_MOLE                    276
#define ENEMY_MAD_MOLE                277
#define ENEMY_MOLE_MAGE               278
#define ENEMY_DIRGE                   279
#define ENEMY_FOUL_DIRGE              280
#define ENEMY_VILE_DIRGE              281
#define ENEMY_APE                     282
#define ENEMY_KILLER_APE              283
#define ENEMY_DIRTY_APE               284
#define ENEMY_GRUB                    285
#define ENEMY_WORM                    286
#define ENEMY_ACID_MAGGOT             287
#define ENEMY_ORC                     288
#define ENEMY_ORC_CAPTAIN             289
#define ENEMY_ORC_LORD                290
#define ENEMY_SALAMANDER              291
#define ENEMY_EARTH_LIZARD            292
#define ENEMY_THUNDER_LIZARD          293
#define ENEMY_MANTICORE               294
#define ENEMY_MAGICORE                295
#define ENEMY_MANTICORE_KING          296
#define ENEMY_KOBOLD_GS1              297
#define ENEMY_GOBLIN                  298
#define ENEMY_HOBGOBLIN               299
#define ENEMY_GARGOYLE                300
#define ENEMY_CLAY_GARGOYLE           301
#define ENEMY_ICE_GARGOYLE            302
#define ENEMY_GRYPHON                 303
#define ENEMY_WILD_GRYPHON            304
#define ENEMY_WISE_GRYPHON            305
#define ENEMY_GOLEM                   306
#define ENEMY_EARTH_GOLEM             307
#define ENEMY_GRAND_GOLEM             308
#define ENEMY_DREAD_HOUND             309
#define ENEMY_CERBERUS                310
#define ENEMY_FENRIR                  311
#define ENEMY_STONE_SOLDIER           312
#define ENEMY_BOULDER_BEAST           313
#define ENEMY_RAGING_ROCK             314
#define ENEMY_CHIMERA                 315
#define ENEMY_CHIMERA_MAGE            316
#define ENEMY_GRAND_CHIMERA           317
#define ENEMY_AMAZE_PROLOGUE          318
#define ENEMY_AMAZE                   319
#define ENEMY_CREEPER                 320
#define ENEMY_SPIRIT                  321

#define ENEMY_LIZARD_MAN              322
#define ENEMY_LIZARD_FIGHTER          323
#define ENEMY_LIZARD_KING             324
#define ENEMY_ANT_LION                325
#define ENEMY_ROACH                   326
#define ENEMY_DOODLE_BUG              327
#define ENEMY_TOADONPA                328
#define ENEMY_POISON_TOAD             329
#define ENEMY_DEVIL_FROG              330
#define ENEMY_LIVING_STATUE           331
#define ENEMY_HYDROS_STATUE           332
#define ENEMY_AZART                   333
#define ENEMY_AZART_2                 334 // (unused?)
#define ENEMY_SATRAGE                 335
#define ENEMY_SATRAGE_2               336 // (unused?)
#define ENEMY_NAVAMPA                 337
#define ENEMY_NAVAMPA_2               338 // (unused?)
#define ENEMY_TRET                    339
#define ENEMY_KRAKEN                  340
#define ENEMY_TORNADO_LIZARD          341
#define ENEMY_STORM_LIZARD            342
#define ENEMY_TEMPEST_LIZARD          343
#define ENEMY_MYSTERY_MAN             344
#define ENEMY_SATUROS_1               345
#define ENEMY_SATUROS_2               346
#define ENEMY_MYSTERY_WOMAN           347
#define ENEMY_MENARDI                 348
#define ENEMY_FUSION_DRAGON           349
#define ENEMY_DEADBEARD               350
#define ENEMY_MIMIC_1                 351
#define ENEMY_MIMIC_2                 352
#define ENEMY_MIMIC_3                 353
#define ENEMY_MIMIC_4                 354
#define ENEMY_MIMIC_5                 355
#define ENEMY_MIMIC_6                 356
#define ENEMY_MIMIC_7                 357
#define ENEMY_MIMIC_8                 358
#define ENEMY_MIMIC_9                 359
#define ENEMY_ZOMBIE_TUTORIAL         360

#define ENEMY_DOOM_DRAGON_1           361
#define ENEMY_DOOM_DRAGON_1_TURN2     362 // turn 2 moveset
#define ENEMY_DOOM_DRAGON_1_TURN3     363 // turn 3 moveset
#define ENEMY_DOOM_DRAGON_1_TURN4     364 // turn 4 moveset
#define ENEMY_DOOM_DRAGON_2           365
#define ENEMY_DOOM_DRAGON_2_TURN2     366 // turn 2 moveset
#define ENEMY_DOOM_DRAGON_2_TURN3     367 // turn 3 moveset
#define ENEMY_DOOM_DRAGON_3           368
#define ENEMY_DOOM_DRAGON_3_TURN2     369 // turn 2 moveset
#define ENEMY_REFRESH_BALL            370
#define ENEMY_THUNDER_BALL            371
#define ENEMY_ANGER_BALL              372
#define ENEMY_GUARDIAN_BALL           373
#define ENEMY_AZART_GS2               374
#define ENEMY_SATRAGE_GS2             375
#define ENEMY_NAVAMPA_GS2             376
#define ENEMY_BANDIT_GS2              377
#define ENEMY_THIEF_GS2               378

#endif // GS2_ENEMIES_H