// gs1/sounds.h
#ifndef GS1_SOUNDS_H
#define GS1_SOUNDS_H

#if GS1
#define FADE_OUT_BGM                17
#define STOP_BGM                    19
#define STOP_SFX                    288
#define FADE_OUT_SFX                289

#define BGM_VALE                    0
#define BGM_TOWN_HAPPY              1
#define BGM_TOWN_TROUBLED           2
#define BGM_PALACE                  3
#define BGM_TRET_TREE               4
#define BGM_XIAN                    5
#define BGM_KALAY                   6
#define BGM_COLOSSO_RACE            7
#define BGM_COLOSSO_PREGAME         8
#define BGM_MINIGAME                9
#define BGM_TOLBI                   10

#define BGM_SOL_SANCTUM             20
#define BGM_FOREST                  21
#define BGM_ELEMENTAL_STARS         22
#define BGM_PROLOGUE                23
#define BGM_CAVE_GS1                24
#define BGM_DESERT                  25
#define BGM_IMIL                    26
#define BGM_MERCURY_LIGHTHOUSE      27
#define BGM_CROSSBONE_ISLE          28
#define BGM_ALTMILLER_CAVE          29
#define BGM_BABI                    30

#define BGM_TITLE_GS2               40 // unused in GS1
#define BGM_TOLBI_BOUND_SHIP        41
#define BGM_OVERWORLD_GS1           42
#define BGM_VENUS_LIGHTHOUSE        43

#define BGM_BATTLE_GS1              50
#define BGM_BATTLE_SATUROS          51
#define BGM_BATTLE_BOSS_GS1         52
#define BGM_BATTLE_SATUROS_MENARDI  53
#define BGM_BATTLE_FUSION_DRAGON    54
#define BGM_BATTLE_LINK             55
#endif // GS1

#define BGM_VICTORY                 58
#define BGM_DEFEAT                  59
#define BGM_IVAN                    60
#define BGM_VILLAIN_GS1             61
#define BGM_PROX                    62
#define BGM_CALAMITY                63
#define BGM_PROLOGUE_END            64

#if GS1
#define BGM_CREDITS_GS1             67
#endif

#define BGM_TITLE_GS1               70

#define BGM_SADNESS                 72

#define BGM_SANCTUM                 74
#define BGM_TO_BE_CONTINUED         75
#define BGM_BATTLE_COLOSSO          76

#define MFX_PUZZLE_SOLVED           80
#define MFX_JOINED_PARTY            81
#define MFX_REVIVE                  82
#define MFX_ITEM_GET                83
#define MFX_CURE_POISON             84
#define MFX_SAVE_GAME               85
#define MFX_REST                    86
#define MFX_REMOVE_CURSE            87
#define MFX_REMOVE_HAUNT            88
#define MFX_LEVEL_UP                89

#define MFX_LUCKY_DICE_DOUBLE       91
#define MFX_LUCKY_DICE_TRIPLE       92
#define MFX_LUCKY_DICE_PERFECT      93

#define SFX_REPAIR                  100
#define SFX_BUY                     101
#define SFX_SELL                    102
#define SFX_OOZE                    103
#define SFX_BIG_FIREBALL            104
//      ?                           105
#define SFX_DRIP                    106
#define BGS_BIG_EARTHQUAKE          107
#define SFX_BOOP                    108
#define SFX_BEEP                    109
#define SFX_UI_CONFIRM              110
#define SFX_UI_CURSOR               111
#define SFX_UI_SELECT               112
#define SFX_UI_CANCEL               113
#define SFX_UI_FAIL                 114
#define SFX_FROST                   115
#define SFX_LUCKY_FOUNTAIN_START    116
#define SFX_UNEQUIP                 117
#define SFX_RUN_STEP                118
//      (unused)                    119
//      (unused)                    120
//      ?                           121
//      ?                           122
#define SFX_ENTER                   123
#define SFX_CHEST                   124
//      ?                           125
#define SFX_HEAL                    126
//      ?                           127
#define SFX_STAIRS_UP               128
#define SFX_STAIRS_DOWN             129
#define SFX_PSY_PULSE               130
#define SFX_PSY_PING                131
#define SFX_ATTACK_WEAK             132
#define SFX_ATTACK                  133
#define SFX_ATTACK_STRONG           134
#define SFX_CARRY_BEEP              135
#define SFX_FLARE                   136
#define BGS_WATERFALL               137
#define SFX_CRACKLE                 138
#define SFX_FLASH                   139
#define SFX_ENERGY                  140
#define BGS_EARTHQUAKE              141
#define SFX_CHARGE                  142
#define SFX_BREAK                   143
#define SFX_BLAST                   144
#define SFX_EXPLOSION               145
#define SFX_SCREAM_1                146
#define SFX_SCREAM_2                147
#define SFX_SCREAM_3                148
#define SFX_SCREAM_4                149
#define SFX_SCREAM_5                150
#define SFX_PLING                   151
#define SFX_JUMP                    152
#define SFX_JUMP_2                  153
#define SFX_CAST                    154
#define SFX_SWITCH                  155
#define SFX_EARTHQUAKE              156
#define SFX_GATE_OPEN               157
#define SFX_DOOR                    158
#define SFX_CLICK                   159
//      (unused)                    160
#define SFX_STEP                    161
#define BGS_TORRENT                 162
#define BGS_TORRENT_2               163
#define SFX_TIDAL_WAVE              164
#define SFX_WING_FLAP               165
//      (unused)                    166
#define SFX_REVEAL_END              167
#define SFX_ALTAR_LIGHT             168 // unused in GS1
//      ?                           169
//      ?                           170
#define SFX_THUNDER                 171
#define SFX_THUNDER_INSIDE          172
#define SFX_USE                     173
#define SFX_USE_2                   174
#define SFX_USE_3                   175
//      ?                           176
#define SFX_THUNDER_CARD            177 // unused in GS1
#define BGS_ALEX_PSYNERGY           178 // unused in GS1
#define SFX_AROMA_WAFT              179 // unused in GS1
#define SFX_CIRCUIT                 180
#define SFX_SOL_ENTRANCE_DOOR       181
#define SFX_SOL_STATUE_EYE_GEM      182
#define SFX_SOL_STATUE_OPEN_DOOR    183
#define BGS_RAIL_TURN               184
#define SFX_PUSH                    185
#define SFX_SWISH                   186
#define SFX_LIGHT_BEAM              187
#define SFX_KATHUNK                 188
//      ?                           189
#define SFX_WARP                    190
#define SFX_FLAME_WHOOSH            191
#define SFX_SHRIEK                  192 // unused in GS1
//      ?                           193
//      ?                           194
#define SFX_PSYNERGY_TABLET         195
//      ?                           196
#define SFX_GABOMBA_ORB_LIFT        197
#define SFX_TELEPORT_OUT            198
#define SFX_WHORL_GALE              199 // unused in GS1
#define SFX_TELEPORT_IN             200
#define SFX_PSY_ACTIVATE            201
#define SFX_WIND_GUST               202
//      ?                           203
#define SFX_FALL                    204
//      (unused)                    205
//      ?                           206
//      --                          207
#define SFX_HUGE_IMPACT             208
//      ?                           209
//      ?                           210
//      ?                           211
#define SFX_ENERGY_FLASH_2          212
//      ?                           213
#define SFX_DJINN_SCATTER           214
//      ?                           215
#define SFX_WATER_DRAIN             216
#define SFX_SLIDE                   217
//      (unused)                    218
//      ?                           219
#define SFX_BUILDUP                 220
//      ?                           221
//      ?                           222
//      ?                           223
//      (unused)                    224
//      ?                           225
//      ?                           226
//      ?                           227
//      ?                           228
//      ?                           229
//      ?                           230
//      ?                           231
//      ?                           232
#define BGS_RAIL                    233
//      ?                           234
//      ?                           235
//      ?                           236
//      ?                           237
//      ?                           238
//      ?                           239
//      ?                           240
//      ?                           241
//      ?                           242
//      ?                           243
//      ?                           244
//      ?                           245
#define SFX_SPARKLE                 246
//      ?                           247
//      ?                           248
//      ?                           249
//      ?                           250
//      ?                           251
//      ?                           252
//      ?                           253
//      (empty)                     254
//      (empty)                     255

// voice sounds (each has 4 sound IDs)
#define VOX_DOG                     256 // 257, 258, 259
#define VOX_LITTLE_GIRL             260 // 261, 262, 263
#define VOX_LITTLE_BOY              264 // 265, 266, 267
#define VOX_GIRL                    268 // 269, 270, 271
#define VOX_BOY                     272 // 273, 274, 275
#define VOX_WOMAN                   276 // 277, 278, 279
#define VOX_OLD_MAN                 280 // 281, 282, 283
#define VOX_MAN                     284 // 285, 286, 287

#define SFX_HOVER_UNUSED            290 // unused
#define SFX_HOVER_SHIP              291
#define SFX_WISE_ONE_PSYNERGY       292
#define SFX_WISE_ONE_PSYNERGY_2     293 // unused
//      --
#define SFX_LUCKY_FOUNTAIN_THROW    300
#define SFX_LUCKY_FOUNTAIN_BUMPER   301
#define SFX_LUCKY_DICE_THROW        302
#define SFX_LUCKY_DICE_TALLY        303
#define SFX_LUCKY_WHEELS_LEVER      304
#define SFX_LUCKY_WHEELS_LOCK       305
#define SFX_LUCKY_WHEELS_SPIN       306
#define SFX_LUCKY_WHEELS_STOP       307
#define SFX_WISE_ONE_HOVER          308
#define SFX_TINK                    309
#define SFX_FALL_2                  310
#define SFX_UNUSED_311              311 // unused

#endif // GS1_SOUNDS_H