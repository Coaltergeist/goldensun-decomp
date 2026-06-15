/* Cluster Func_8003f78..Func_8003f78 extracted from goldensun/asm/rom_c0/rom_3e58.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_a.o and asm/rom_c0/rom_3e58_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"

struct SpriteSlot {
	u16 size;
	u16 vramOffset;
};

extern struct SpriteSlot gSpriteSlots[];
extern u8 gSpriteAllocTable[];
s32 Func_8003f04(u32 needle);

s32 Func_8003ed4(void) {
    s32 var_r1 = 0;
    u8* var_r4 = gSpriteAllocTable;
    s32 var_r0 = 0;
    s32 var_r2 = 0x200;

    for (var_r2 = 0x200; var_r2 != 0; --var_r2) {
        if (*(var_r4++) != 0xFF) {
            var_r1 = 0;
        } else {
            var_r1++;
            if (var_r0 >= var_r1) continue;
            var_r0 = var_r1;
        }
    }
    return var_r0;
}

s32 Func_8003f04(u32 needle) {
    s32 i;
    s32 nFound;
    u8* current;
    u32 temp;
    nFound = 0;
    if (needle >= 0x60) return -1;

    temp = 0xFF;
    current = gSpriteAllocTable;
    for (i = 0x200; i != 0; --i) {
        if (*current == needle) {
            *current = temp;
            nFound += 1;
        }
        current += 1;
    }
    if (nFound != 0) {
        return -1;
    }
    return 0;
}

s32 Func_8003f3c(u32 arg0) {
    struct SpriteSlot* slot = &gSpriteSlots[arg0];
    if (arg0 >= 0x60) return -1;

    if (slot->vramOffset != 0xFFFF) {
        Func_8003f04(arg0);
        slot->vramOffset = (0xFFFF | slot->vramOffset);
        slot->size = 0;
    }
    return 0;
}


s32 Func_8003f78(unsigned int arg0) {
	struct SpriteSlot *slot;

	slot = &gSpriteSlots[arg0];
	if (arg0 > 0x5f) return -1;

	if (slot->size > 0x10) {
		Func_8003f04(arg0);
		slot->size = 1;
	}
	return 0;
}
