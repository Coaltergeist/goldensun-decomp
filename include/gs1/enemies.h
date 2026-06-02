// gs1/enemies.h
#ifndef GS1_ENEMIES_H
#define GS1_ENEMIES_H

#define ENEMY_NONE                    0
#define ENEMY_VERMIN_PROLOGUE         1
#define ENEMY_VERMIN                  2
#define ENEMY_MAD_VERMIN              3
#define ENEMY_BAT_PROLOGUE            4
#define ENEMY_BAT                     5
#define ENEMY_RABID_BAT               6
#define ENEMY_WILD_MUSHROOM_PROLOGUE  7
#define ENEMY_WILD_MUSHROOM           8
#define ENEMY_DEATH_CAP               9
#define ENEMY_SLIME_PROLOGUE          10
#define ENEMY_SLIME                   11
#define ENEMY_OOZE                    12
#define ENEMY_SLIME_BEAST             13
#define ENEMY_GHOST                   14
#define ENEMY_GHOST_MAGE              15
#define ENEMY_HORNED_GHOST            16
#define ENEMY_LICH_GS1                17
#define ENEMY_ZOMBIE                  18
#define ENEMY_UNDEAD                  19
#define ENEMY_WIGHT                   20
#define ENEMY_BANDIT                  21
#define ENEMY_THIEF                   22
#define ENEMY_BRIGAND                 23
#define ENEMY_SKELETON                24
#define ENEMY_BONE_FIGHTER            25
#define ENEMY_SKULL_WARRIOR           26
#define ENEMY_WILL_HEAD               27
#define ENEMY_DEATH_HEAD              28
#define ENEMY_WILLOWISP               29
#define ENEMY_RAT                     30
#define ENEMY_ARMORED_RAT             31
#define ENEMY_PLATED_RAT              32
#define ENEMY_RAT_SOLDIER             33
#define ENEMY_RAT_FIGHTER             34
#define ENEMY_RAT_WARRIOR             35
#define ENEMY_DRONE_BEE               36
#define ENEMY_FIGHTER_BEE             37
#define ENEMY_WARRIOR_BEE             38
#define ENEMY_TROLL                   39
#define ENEMY_CAVE_TROLL              40
#define ENEMY_BRUTAL_TROLL            41
#define ENEMY_SPIDER                  42
#define ENEMY_TARANTULA               43
#define ENEMY_RECLUSE                 44
#define ENEMY_GNOME                   45
#define ENEMY_GNOME_MAGE              46
#define ENEMY_GNOME_WIZARD            47
#define ENEMY_GHOUL                   48
#define ENEMY_FIENDISH_GHOUL          49
#define ENEMY_CANNIBAL_GHOUL          50
#define ENEMY_MAULER                  51
#define ENEMY_RAVAGER                 52
#define ENEMY_GRISLY                  53
#define ENEMY_CUTTLE                  54
#define ENEMY_CALAMAR                 55
#define ENEMY_MAN_O_WAR               56
#define ENEMY_HARPY                   57
#define ENEMY_VIRAGO                  58
#define ENEMY_HARRIDAN                59
#define ENEMY_SIREN                   60
#define ENEMY_SUCCUBUS                61
#define ENEMY_NIGHTMARE               62
#define ENEMY_MOLE                    63
#define ENEMY_MAD_MOLE                64
#define ENEMY_MOLE_MAGE               65
#define ENEMY_DIRGE                   66
#define ENEMY_FOUL_DIRGE              67
#define ENEMY_VILE_DIRGE              68
#define ENEMY_APE                     69
#define ENEMY_KILLER_APE              70
#define ENEMY_DIRTY_APE               71
#define ENEMY_GRUB                    72
#define ENEMY_WORM                    73
#define ENEMY_ACID_MAGGOT             74
#define ENEMY_ORC                     75
#define ENEMY_ORC_CAPTAIN             76
#define ENEMY_ORC_LORD                77
#define ENEMY_SALAMANDER              78
#define ENEMY_EARTH_LIZARD            79
#define ENEMY_THUNDER_LIZARD          80
#define ENEMY_MANTICORE               81
#define ENEMY_MAGICORE                82
#define ENEMY_MANTICORE_KING          83  // unused in GS1
#define ENEMY_KOBOLD_GS1              84
#define ENEMY_GOBLIN                  85
#define ENEMY_HOBGOBLIN               86
#define ENEMY_GARGOYLE                87
#define ENEMY_CLAY_GARGOYLE           88
#define ENEMY_ICE_GARGOYLE            89
#define ENEMY_GRYPHON                 90
#define ENEMY_WILD_GRYPHON            91
#define ENEMY_WISE_GRYPHON            92  // unused in GS1
#define ENEMY_GOLEM                   93
#define ENEMY_EARTH_GOLEM             94
#define ENEMY_GRAND_GOLEM             95  // unused in GS1
#define ENEMY_DREAD_HOUND             96
#define ENEMY_CERBERBUS               97
#define ENEMY_FENRIR                  98
#define ENEMY_STONE_SOLDIER           99
#define ENEMY_BOULDER_BEAST           100
#define ENEMY_RAGING_ROCK             101 // unused in GS1
#define ENEMY_CHIMERA                 102
#define ENEMY_CHIMERA_MAGE            103
#define ENEMY_GRAND_CHIMERA           104 // unused in GS1
#define ENEMY_AMAZE_PROLOGUE          105
#define ENEMY_AMAZE                   106
#define ENEMY_CREEPER                 107
#define ENEMY_SPIRIT                  108
#define ENEMY_ZOMBIE_TUTORIAL         109

#define ENEMY_KRAKEN                  113
#define ENEMY_MYSTERY_MAN             114
#define ENEMY_SATUROS_1               115
#define ENEMY_SATUROS_2               116
#define ENEMY_MYSTERY_WOMAN           117
#define ENEMY_MENARDI                 118
#define ENEMY_LIZARD_MAN              119
#define ENEMY_LIZARD_FIGHTER          120
#define ENEMY_LIZARD_KING             121
#define ENEMY_LIVING_STATUE           122
#define ENEMY_HYDROS_STATUE           123
#define ENEMY_AZART                   124
#define ENEMY_AZART_2                 125 // unused?
#define ENEMY_SATRAGE                 126
#define ENEMY_SATRAGE_2               127 // unused?
#define ENEMY_NAVAMPA                 128
#define ENEMY_NAVAMPA_2               129 // unused?
#define ENEMY_ANT_LION                130
#define ENEMY_ROACH                   131
#define ENEMY_DOODLE_BUG              132 // unused in GS1
#define ENEMY_TOADONPA                133
#define ENEMY_POISON_TOAD             134
#define ENEMY_DEVIL_FROG              135 // unused in GS1
#define ENEMY_TORNADO_LIZARD          136
#define ENEMY_STORM_LIZARD            137
#define ENEMY_TEMPEST_LIZARD          138
#define ENEMY_TRET                    139
#define ENEMY_FUSION_DRAGON           140
#define ENEMY_DEADBEARD               141
#define ENEMY_MIMIC_1                 142
#define ENEMY_MIMIC_2                 143
#define ENEMY_MIMIC_3                 144
#define ENEMY_MIMIC_4                 145
#define ENEMY_MIMIC_5                 146
#define ENEMY_MIMIC_6                 147
#define ENEMY_MIMIC_7                 148
#define ENEMY_MIMIC_8                 149
#define ENEMY_DJINNI_VENUS_1          150 // Quartz
#define ENEMY_DJINNI_VENUS_2          151 // Vine
#define ENEMY_DJINNI_VENUS_3          152 // (unused)
#define ENEMY_DJINNI_MERCURY_1        153 // Sleet
#define ENEMY_DJINNI_MERCURY_2        154 // Spritz
#define ENEMY_DJINNI_MERCURY_3        155 // Hail
#define ENEMY_DJINNI_MERCURY_4        156 // Dew
#define ENEMY_DJINNI_MARS_1           157 // Forge
#define ENEMY_DJINNI_MARS_2           158 // Corona
#define ENEMY_DJINNI_MARS_3           159 // Flash
#define ENEMY_DJINNI_JUPITER_1        160 // Breeze
#define ENEMY_DJINNI_JUPITER_2        161 // Zephyr
#define ENEMY_DJINNI_JUPITER_3        162 // Squall
#define ENEMY_DJINNI_JUPITER_4        163 // Luff

#endif // GS1_ENEMIES_H