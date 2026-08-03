#ifndef _UI_H_
#define _UI_H_

#include "gba/types.h"

// One on-screen UI box / window; a node in a doubly-linked list.
struct UIBox {
    struct UIBox *next;   // 0x00
    struct UIBox *prev;   // 0x04
    u16 width;            // 0x08
    u16 height;           // 0x0A
    s16 x;                // 0x0C
    s16 y;                // 0x0E
    u16 __unk10;          // 0x10
    u16 __unk12;          // 0x12
    u16 __unk14;          // 0x14
    u16 flags;            // 0x16  bit 0 = pool slot in use
    u16 __unk18;          // 0x18
    u16 anim;             // 0x1A
    u16 __unk1C;          // 0x1C
    u16 __unk1E;          // 0x1E
    u16 __unk20;          // 0x20
    u16 __unk22;          // 0x22
};                        // 0x24

#endif // _UI_H_
