#ifndef _ANIM_H_
#define _ANIM_H_

#include "gba/types.h"

// State passed to a battle move's animation routine (the Anim_* / BaseAnim_*
// functions all take an AnimContext*).
struct AnimContext {
    u32 anim;             // 0x00  current animation ID
    u32 side;             // 0x04  SIDE_PLAYER / SIDE_ENEMY
    u32 user;             // 0x08  UnitID who used the move
    u32 target;           // 0x0C  UnitID of the main target
    u32 __unk10;          // 0x10
    u32 numTargets;       // 0x14
    u32 param;            // 0x18  move animation parameter / effect selector
    u32 djinni;           // 0x1C
    u32 __unk20;          // 0x20
    u16 targets[5];       // 0x24  UnitIDs targeted by the move
};                        // 0x30

#endif // _ANIM_H_
