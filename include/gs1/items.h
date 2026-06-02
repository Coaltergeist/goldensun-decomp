// gs1/items.h
#ifndef GS1_ITEMS_H
#define GS1_ITEMS_H

#define ITEM_NONE               0

#define ITEM_LONG_SWORD         1
#define ITEM_BROAD_SWORD        2
#define ITEM_CLAYMORE           3
#define ITEM_GREAT_SWORD        4
#define ITEM_SHAMSHIR           5
#define ITEM_SILVER_BLADE       6
#if GS1
#define ITEM_MASAMUNE_GS1       7  // unused, replaced in GS2
#endif
#define ITEM_ARCTIC_BLADE       8
#define ITEM_GAIA_BLADE         9
#define ITEM_SOL_BLADE          10 // unused in GS1
#define ITEM_MURAMASA           11

#define ITEM_MACHETE            15
#define ITEM_SHORT_SWORD        16
#define ITEM_HUNTERS_SWORD      17
#define ITEM_BATTLE_RAPIER      18
#define ITEM_MASTER_RAPIER      19
#define ITEM_NINJA_BLADE        20
#define ITEM_SWIFT_SWORD        21
#define ITEM_ELVEN_RAPIER       22
#define ITEM_ASSASSIN_BLADE     23
#define ITEM_MYSTERY_BLADE      24
#define ITEM_KIKUICHIMONJI      25
#if GS1
#define ITEM_KUSANAGI           26 // unused, replaced in GS2
#endif
#define ITEM_BANDITS_SWORD      27

#define ITEM_BATTLE_AXE         31
#define ITEM_BROAD_AXE          32
#define ITEM_GREAT_AXE          33
#define ITEM_DRAGON_AXE         34
#define ITEM_GIANT_AXE          35
#define ITEM_VULCAN_AXE         36
#define ITEM_BURNING_AXE        37
#define ITEM_DEMON_AXE          38

#define ITEM_MACE               43
#define ITEM_HEAVY_MACE         44
#define ITEM_BATTLE_MACE        45
#define ITEM_WAR_MACE           46
#define ITEM_RIGHTEOUS_MACE     47
#define ITEM_GRIEVOUS_MACE      48
#define ITEM_BLESSED_MACE       49
#define ITEM_WICKED_MACE        50

#define ITEM_WOODEN_STICK       55
#define ITEM_MAGIC_ROD          56
#define ITEM_WITCHS_WAND        57
#define ITEM_BLESSED_ANKH       58
#define ITEM_PSYNERGY_ROD       59
#define ITEM_FROST_WAND         60
#define ITEM_ANGELIC_ANKH       61
#define ITEM_DEMONIC_STAFF      62
#define ITEM_CRYSTAL_ROD        63
#define ITEM_ZODIAC_WAND        64
#define ITEM_SHAMANS_ROD        65

#define ITEM_LEATHER_ARMOR      75
#define ITEM_PSYNERGY_ARMOR     76
#define ITEM_CHAIN_MAIL         77
#define ITEM_ARMORED_SHELL      78
#define ITEM_PLATE_MAIL         79
#define ITEM_STEEL_ARMOR        80
#define ITEM_SPIRIT_ARMOR       81
#define ITEM_DRAGON_SCALES      82
#define ITEM_DEMON_MAIL         83
#define ITEM_ASURAS_ARMOR       84
#define ITEM_SPIKED_ARMOR       85

#define ITEM_COTTON_SHIRT       89
#define ITEM_TRAVEL_VEST        90
#define ITEM_FUR_COAT           91
#define ITEM_ADEPTS_CLOTHES     92
#define ITEM_ELVEN_SHIRT        93
#define ITEM_SILVER_VEST        94
#define ITEM_WATER_JACKET       95
#define ITEM_STORM_GEAR         96
#define ITEM_KIMONO             97
#define ITEM_NINJA_GARB         98

#define ITEM_ONE_PIECE_DRESS    103
#define ITEM_TRAVEL_ROBE        104
#define ITEM_SILK_ROBE          105
#define ITEM_CHINA_DRESS        106
#define ITEM_JERKIN             107
#define ITEM_COCKTAIL_DRESS     108
#define ITEM_BLESSED_ROBE       109
#define ITEM_MAGICAL_CASSOCK    110
#define ITEM_MYSTERIOUS_ROBE    111 // unused in GS1
#define ITEM_FEATHERED_ROBE     112
#define ITEM_ORACLES_ROBE       113

#define ITEM_WOODEN_SHIELD      118
#define ITEM_BRONZE_SHIELD      119
#define ITEM_IRON_SHIELD        120
#define ITEM_KNIGHTS_SHIELD     121
#define ITEM_MIRRORED_SHIELD    122
#define ITEM_DRAGON_SHIELD_GS1  123
#define ITEM_EARTH_SHIELD       124

#define ITEM_PADDED_GLOVES      127
#define ITEM_LEATHER_GLOVES     128
#define ITEM_GAUNTLETS          129
#define ITEM_VAMBRACE           130
#define ITEM_WAR_GLOVES         131
#define ITEM_SPIRIT_GLOVES_GS1  132
#define ITEM_BATTLE_GLOVES      133
#define ITEM_AURA_GLOVES        134

#define ITEM_LEATHER_ARMLET     136
#define ITEM_ARMLET             137
#define ITEM_HEAVY_ARMLET       138
#define ITEM_SILVER_ARMLET      139
#define ITEM_SPIRIT_ARMLET      140
#define ITEM_VIRTUOUS_ARMLET    141
#define ITEM_GUARDIAN_ARMLET    142

#define ITEM_OPEN_HELM          145
#define ITEM_BRONZE_HELM        146
#define ITEM_IRON_HELM          147
#define ITEM_STEEL_HELM         148
#define ITEM_SILVER_HELM        149
#define ITEM_KNIGHTS_HELM       150
#define ITEM_WARRIORS_HELM      151
#define ITEM_ADEPTS_HELM        152

#define ITEM_LEATHER_CAP        156
#define ITEM_WOODEN_CAP         157
#define ITEM_MAIL_CAP           158
#define ITEM_JEWELED_CROWN      159
#define ITEM_NINJA_HOOD         160
#define ITEM_LUCKY_CAP          161
#define ITEM_THUNDER_CROWN      162
#define ITEM_PROPHETS_HAT       163
#define ITEM_LURE_CAP           164

#define ITEM_CIRCLET            166
#define ITEM_SILVER_CIRCLET     167
#define ITEM_GUARDIAN_CIRCLET   168
#define ITEM_PLATINUM_CIRCLET   169
#define ITEM_MYTHRIL_CIRCLET    170
#define ITEM_GLITTERING_TIARA   171

#define ITEM_HERB               180
#define ITEM_NUT                181
#define ITEM_VIAL               182
#define ITEM_POTION             183
#define ITEM_HERMES_WATER       184
#define ITEM_EMPTY_BOTTLE       185
#define ITEM_PSY_CRYSTAL        186
#define ITEM_ANTIDOTE           187
#define ITEM_ELIXIR             188
#define ITEM_WATER_OF_LIFE      189

#define ITEM_POWER_BREAD        191
#define ITEM_COOKIE             192
#define ITEM_APPLE              193
#define ITEM_HARD_NUT           194
#define ITEM_MINT               195
#define ITEM_LUCKY_PEPPER       196

#define ITEM_ORB_OF_FORCE       200
#define ITEM_DOUSE_DROP         201
#define ITEM_FROST_JEWEL        202
#define ITEM_LIFTING_GEM        203
#define ITEM_HALT_GEM           204
#define ITEM_CLOAK_BALL         205
#define ITEM_CARRY_STONE        206
#define ITEM_CATCH_BEADS        207

#define ITEM_VENUS_STAR         220
#define ITEM_MERCURY_STAR       221
#define ITEM_MARS_STAR          222
#define ITEM_JUPITER_STAR       223
#define ITEM_MYTHRIL_BAG        224
#define ITEM_SMALL_JEWEL        225
#define ITEM_SMOKE_BOMB         226
#define ITEM_SLEEP_BOMB         227
#define ITEM_GAME_TICKET        228
#define ITEM_LUCKY_MEDAL        229
#define ITEM_DRAGONS_EYE        230
#define ITEM_BONE               231
#define ITEM_ANCHOR_CHARM       232
#define ITEM_CORN               233
#define ITEM_CELL_KEY           234
#define ITEM_BOAT_TICKET        235
#define ITEM_SACRED_FEATHER     236
#define ITEM_MYSTIC_DRAUGHT     237
#define ITEM_OIL_DROP           238
#define ITEM_WEASELS_CLAW       239
#define ITEM_BRAMBLE_SEED       240
#define ITEM_CRYSTAL_POWDER     241
#define ITEM_BLACK_ORB          242
#define ITEM_RED_KEY            243
#define ITEM_BLUE_KEY           244

#define ITEM_MYTHRIL_SHIRT      250
#define ITEM_SILK_SHIRT         251
#define ITEM_RUNNING_SHIRT      252

#define ITEM_HYPER_BOOTS        256
#define ITEM_QUICK_BOOTS        257
#define ITEM_FUR_BOOTS          258
#define ITEM_TURTLE_BOOTS       259

#define ITEM_ADEPT_RING         262
#define ITEM_WAR_RING           263
#define ITEM_SLEEP_RING         264
#define ITEM_HEALING_RING       265
#define ITEM_UNICORN_RING       266
#define ITEM_FAIRY_RING         267
#define ITEM_CLERICS_RING       268

#endif // GS1_ITEMS_H