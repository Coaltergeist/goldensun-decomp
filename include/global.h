#ifndef _GLOBAL_H_
#define _GLOBAL_H_

#include "gba/types.h"

// A save slot's header: party-leader summary and save bookkeeping.
struct SaveHeader {
    char leaderName[12];   // 0x00
    u8 leaderLevel;        // 0x0C
    u8 leaderClass;        // 0x0D
    u16 location;          // 0x0E
    u32 playTime;          // 0x10
    u32 coins;             // 0x14
    u8 numDjinn[4];        // 0x18  per-element djinn count
    u8 party[4];           // 0x1C  party member IDs
    u8 __unk20;            // 0x20
    u8 __unk21;            // 0x21
    u8 __unk22;            // 0x22
    u8 reunion;            // 0x23
    u8 UIColor;            // 0x24
    u8 UIBrightness;       // 0x25
    u16 __unk26;           // 0x26
    u32 __unk28;           // 0x28
    u32 checksum;          // 0x2C
    u32 __unk30;           // 0x30
    u32 __unk34;           // 0x34
    u32 __unk38;           // 0x38
    u32 __unk3C;           // 0x3C
};                         // 0x40

#endif // _GLOBAL_H_
