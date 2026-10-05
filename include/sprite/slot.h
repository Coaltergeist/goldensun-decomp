#ifndef SPRITE_SLOT_H
#define SPRITE_SLOT_H

#include "gba/types.h"

// VRAM allocation-table slot: a sprite's byte size and its VRAM byte offset.
struct SpriteSlot {
    u16 size;        // 0x00
    u16 vramOffset;  // 0x02
};                   // 0x04

// Compile-time layout checks supported by the production GCC 2.96 compiler.
typedef char SpriteSlotSizeCheck[(sizeof(struct SpriteSlot) == 4) ? 1 : -1];
typedef char SpriteSlotAlignmentCheck[(__alignof__(struct SpriteSlot) == 4) ? 1 : -1];
typedef char SpriteSlotFieldWidthsCheck[
    (sizeof(((struct SpriteSlot *)0)->size) == 2 &&
     sizeof(((struct SpriteSlot *)0)->vramOffset) == 2) ? 1 : -1];
typedef char SpriteSlotOffsetsCheck[
    ((u32)&((struct SpriteSlot *)0)->size == 0 &&
     (u32)&((struct SpriteSlot *)0)->vramOffset == 2) ? 1 : -1];

#endif // SPRITE_SLOT_H
