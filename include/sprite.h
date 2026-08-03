#ifndef _SPRITE_H_
#define _SPRITE_H_

#include "gba/types.h"

// Sprite system (GS1). The enum-like fields (type, format, colorswap, flags)
// are stored as one byte each; their named value constants live in the gs1/ ID
// headers, not this layout header.

struct SpriteLayer;

// GBA OAM shadow record.
struct SpriteOAM {
    struct SpriteOAM *dest;   // 0x00
    u16 attrs[3];             // 0x04  GBA OAM attr0/attr1/attr2
};                            // 0x0C

// Per-sprite-ID metadata (the SpriteInfo[512] table).
struct SpriteInfo {
    u8 width;          // 0x00
    u8 height;         // 0x01
    u16 scale;         // 0x02
    u8 type;           // 0x04  number of facing directions
    u8 numAnims;       // 0x05
    u8 offsetX;        // 0x06
    u8 offsetY;        // 0x07
    u8 actorHeight;    // 0x08
    u8 actorWidth;     // 0x09  hitbox diameter (initializes Actor.width)
    u8 gfxFormat;      // 0x0A
                       // 0x0B  pad
    const u8 **gfx;    // 0x0C
    const u8 **anims;  // 0x10
};                     // 0x14

// One drawable layer of a sprite.
struct SpriteLayer {
    u16 spriteID;       // 0x00
    u16 animTimer;      // 0x02
    u8 type;            // 0x04  0 = unallocated slot
    u8 colorswap;       // 0x05
    u8 priority;        // 0x06
    u8 gfxFormat;       // 0x07
    const u8 **gfx;     // 0x08
    const u8 **anims;   // 0x0C
    const u8 *curAnim;  // 0x10  current animation data pointer
    u8 animCmdIndex;    // 0x14
    u8 animSpeed;       // 0x15
    u8 frameID;         // 0x16
    u8 animFrameID;     // 0x17
};                      // 0x18

// A sprite: one VRAM slot with one or more layers. Every Actor owns one
// (Actor.sprite). GS1 layout: shadowOAM sits at 0x0C; in GS2 it moves to after
// `numLayers`, so gate on version when GS2 support lands.
struct Sprite {
    struct SpriteOAM oam;           // 0x00
    struct SpriteOAM shadowOAM;     // 0x0C
    fx32 scale;                     // 0x18
    u8 slot;                        // 0x1C  VRAM slot
    u8 __unk1D;                     // 0x1D
    u16 rotation;                   // 0x1E  affine rotation (not facing)
    u8 width;                       // 0x20
    u8 height;                      // 0x21
    u8 offsetX;                     // 0x22
    u8 offsetY;                     // 0x23
    u8 animID;                      // 0x24
    bool8 visible;                  // 0x25
    u8 flags;                       // 0x26  SPR_F_* bitfield
    u8 numLayers;                   // 0x27
    struct SpriteLayer *layers[4];  // 0x28
};                                  // 0x38

// --- Sprite data tables --------------------------------------------------

// VRAM allocation-table slot: a sprite's byte size and its VRAM offset.
struct SpriteSlot {
    u16 size;        // width*height*bpp/8
    u16 vramOffset;
};

// Sprite-ID -> battle voice mapping.
struct SpriteVoice {
    u16 sprite;      // sprite ID
    u8 voice;        // voice ID
    u8 __unk03;
};

// Sprite-ID -> graphics file-ID mapping.
struct SpriteGFXFileID {
    u16 fileID;
    u16 spriteID;
};

// Per-enemy sprite metadata.
struct EnemySpriteInfo {
    u16 sprite;          // 0x00  sprite ID
    u8 attackAnim;       // 0x02
    u8 colorswap : 5;    // 0x03  bits 0-4
    u8 deathSFX : 3;     // 0x03  bits 5-7
    u32 height;          // 0x04
};

// Cached decompressed sprite graphics.
struct SpriteCachedGFX {
    u32 spriteID;     // 0x00
    const u8 **gfx;   // 0x04
};

// Scratch buffer for building an item/menu icon (pixel buffer + dims + source).
struct IconBuffer {
    u8 buffer[1536];  // 0x000
    u16 width;        // 0x600
    u16 height;       // 0x602
    void *src;        // 0x604
};                    // 0x608

#endif // _SPRITE_H_
