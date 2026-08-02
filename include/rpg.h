#ifndef _RPG_H_
#define _RPG_H_

#include "gba/types.h"

// A Unit is one party member's or enemy's full stat block. sizeof == 332
// (0x14C): hard-pinned by the global gPartyStatus (Unit[8] @ 0x02000500, size
// 2656 => stride 332). The gstypes and GS-headers definitions agree field for
// field and the layout sums to exactly 332, with two reconciliations:
//   * baseHPRegen/basePPRegen are u16 (GS-headers), NOT the u8+u16 "field_34"
//     split Ghidra guessed; they mirror the current-stat HPRegen/PPRegen
//     (both u16) exactly, one block up.
//   * `ID` is a u16 (a UnitID); rendering it as `enum` would be 4 bytes here
//     (no -fshort-enums) and overshoot 332. The pad byte at 0x149 is explicit.
// Element stats are the flat gstypes form u16[2][4] ([stat][element]) to avoid
// pulling in GS-headers' ElemStats sub-struct; same 16 bytes.
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
    u32 aiMove;                // 0x120  (enemy AI only; gstypes _unk120)
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
    u8 __unk149;               // 0x149  padding (gstypes: field_329)
    u16 ID;                    // 0x14A  UnitID: PC ID, or enemy type ID + 8
};                             // 0x14C = 332

#endif // _RPG_H_
