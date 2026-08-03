#ifndef _RPG_H_
#define _RPG_H_

#include "gba/types.h"

// A unit's full stat block: one party member or one enemy. Element stats are
// a flat u16[2][4], indexed [power/resist][element].
struct Unit {
    char name[15];             // 0x000
    u8 level;                  // 0x00F
    u16 baseHP;                // 0x010
    u16 basePP;                // 0x012
    u16 percentHP;             // 0x014
    u16 percentPP;             // 0x016
    u16 baseAttack;            // 0x018
    u16 baseDefense;           // 0x01A
    u16 baseAgility;           // 0x01C
    u8 baseLuck;               // 0x01E
    u8 baseTurns;              // 0x01F
    u16 baseHPRegen;           // 0x020
    u16 basePPRegen;           // 0x022
    u16 baseElementStats[2][4];// 0x024  [power/resist][element]
    u16 maxHP;                 // 0x034
    u16 maxPP;                 // 0x036
    u16 HP;                    // 0x038
    u16 PP;                    // 0x03A
    u16 attack;                // 0x03C
    u16 defense;               // 0x03E
    u16 agility;               // 0x040
    u8 luck;                   // 0x042
    u8 turns;                  // 0x043
    u16 HPRegen;               // 0x044
    u16 PPRegen;               // 0x046
    u16 elementStats[2][4];    // 0x048
    u32 psynergy[32];          // 0x058  learned psynergy move IDs
    u16 items[16];             // 0x0D8
    u32 djinn[4];              // 0x0F8  per-element djinn-owned bitflags
    u32 setDjinn[4];           // 0x108  per-element djinn-Set bitflags
    u8 numDjinn[4];            // 0x118
    u8 numSetDjinn[4];         // 0x11C
    u32 aiMove;                // 0x120  (enemy AI only)
    u32 exp;                   // 0x124
    u8 pcID;                   // 0x128
    u8 curClass;               // 0x129
    u8 side;                   // 0x12A
    u8 guard;                  // 0x12B  Defend / barrier / Haze
    u8 elemPowerUp[4];         // 0x12C
    u8 equipCurse;             // 0x130
    u8 poison;                 // 0x131
    u8 attackModTurns;         // 0x132
    u8 attackMod;              // 0x133
    u8 defenseModTurns;        // 0x134
    u8 defenseMod;             // 0x135
    u8 resistModTurns;         // 0x136
    u8 resistMod;              // 0x137
    u8 delude;                 // 0x138
    u8 confuse;                // 0x139
    u8 charm;                  // 0x13A
    u8 stun;                   // 0x13B
    u8 sleep;                  // 0x13C
    u8 psySeal;                // 0x13D
    u8 regenerate;             // 0x13E
    u8 reflect;                // 0x13F
    u8 haunt;                  // 0x140
    u8 deathCurse;             // 0x141
    u8 critBoost;              // 0x142
    u8 counter;                // 0x143
    u8 moveTwice;              // 0x144
    u8 cantMove;               // 0x145
    u8 agilityModTurns;        // 0x146
    u8 agilityMod;             // 0x147
    u8 challenge;              // 0x148
    u8 __unk149;               // 0x149  padding
    u16 ID;                    // 0x14A  UnitID: PC ID, or enemy type ID + 8
};                             // 0x14C = 332

// A summon's move ID and its per-element djinn cost.
struct Summon {
    u16 move;          // 0x00
    u8 __unk2;         // 0x02
    u8 __unk3;         // 0x03
    u8 djinnCost[4];   // 0x04
};

// An equipment stat/status effect.
struct EquipEffect {
    u8 type;           // 0x00  EquipEffectType
    u8 value;          // 0x01
    u16 __unk2;        // 0x02
};

// A queued djinn-unset action.
struct UnsetDjinni {
    u8 element;        // 0x00
    u8 djinni;         // 0x01
    u8 pc;             // 0x02
    u8 turns;          // 0x03
};

// One item's data record (equipment, consumables, and their effects).
struct Item {
    u16 price;                          // 0x00
    u8 type;                            // 0x02  ItemType
    u8 flags;                           // 0x03  ItemFlags
    u16 canEquip;                       // 0x04  who can equip (class/PC mask)
    u16 icon;                           // 0x06
    u16 attack;                         // 0x08
    u8 defense;                         // 0x0A
    u8 unleashRate;                     // 0x0B
    u8 useEffect;                       // 0x0C
    u8 __unk0D;                         // 0x0D
    u16 __unk0E;                        // 0x0E
    u32 __unk10;                        // 0x10
    u32 __unk14;                        // 0x14
    struct EquipEffect equipEffects[4]; // 0x18
    u16 bestow;                         // 0x28  psynergy bestowed when equipped
    u16 __unk2A;                        // 0x2A
};                                      // 0x2C = 44

// A djinni: its unleash move and the stat boosts it grants when Set.
struct Djinni {
    u32 unleash;       // 0x00  move ID unleashed in battle
    u8 HP;             // 0x04
    u8 PP;             // 0x05
    u8 attack;         // 0x06
    u8 defense;        // 0x07
    u8 agility;        // 0x08
    u8 luck;           // 0x09
};                     // 0x0C

// A class definition (element levels, name, psynergy progression, ...).
// Layout not yet resolved; kept opaque.
struct Class {
    u8 __unk00[84];    // 0x00
};                     // 0x54

// Per-playable-character growth template: base stats, per-level growth tables,
// and starting kit.
struct PCStats {
    u8 __unk00[80];        // 0x00
    u16 baseHP;            // 0x50
    u16 HPGrowth[5];       // 0x52
    u16 basePP;            // 0x5C
    u16 PPGrowth[5];       // 0x5E
    u16 baseAttack;        // 0x68
    u16 attackGrowth[5];   // 0x6A
    u16 baseDefense;       // 0x74
    u16 defenseGrowth[5];  // 0x76
    u16 baseAgility;       // 0x80
    u16 agilityGrowth[5];  // 0x82
    u8 baseLuck;           // 0x8C
    u8 luckGrowth[5];      // 0x8D
    u8 baseElemStats[4];   // 0x92
    u8 startLevel;         // 0x96  (1 pad byte @ 0x97)
    u16 startItems[14];    // 0x98
};                         // 0xB4

#endif // _RPG_H_
