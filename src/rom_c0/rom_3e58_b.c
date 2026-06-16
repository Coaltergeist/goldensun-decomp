/* Cluster Func_8003f78..Func_8003f78 extracted from goldensun/asm/rom_c0/rom_3e58.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3e58_a.o and asm/rom_c0/rom_3e58_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "libcamelot.h"
#include "dma.h"

struct SpriteSlot {
	u16 size;
	u16 vramOffset;
};

extern struct SpriteSlot gSpriteSlots[];
extern u8 gSpriteAllocTable[];
s32 Func_8003f04(u32 needle);
s32 Func_8003f3c(u32 arg0);

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

extern u32 Func_8003e58(u32, u32);

u32 UploadSpriteGFX(u32 slot, u32 size, void *gfx) {
    void *temp_r1;
    u16 temp_r3;
    u32 var_r5;
    struct SpriteSlot* temp_r7;

    temp_r7 = &gSpriteSlots[slot];
    if (slot > 0x5F) return 0;
    if (size > 0x2000) return 0;

    temp_r3 = temp_r7->size;
    if ((u32) temp_r3 > 0x10U) {
        if (temp_r3 != size) {
            Func_8003f3c(slot);
            var_r5 = Func_8003e58(slot, size);
        } else {
            var_r5 = temp_r7->vramOffset;
        }
    } else {
        var_r5 = Func_8003e58(slot, size);
    }
    if (var_r5 != -1U) {
        temp_r1 = (void *)(var_r5 + 0x06010000);
        temp_r7->size = size;
        temp_r7->vramOffset = var_r5;
        if (gfx != 0) {
            if (gfx == (void *)0xFFFFFFFF) {
                CAMELOT_MEMCLEAR(temp_r1, size);
            } else {
                DMA3_COPY(gfx, temp_r1, size);
            }
        }
        return var_r5 >> 5;
    }
    return 0U;
}

void ClearSprites(void) {
    u8* currentAlloc;
    struct SpriteSlot* currentSpriteSlot;
    u32 i;
    u32 limit = 0x1FF;

    currentAlloc = gSpriteAllocTable;
    for (i = 0; i <= limit; ++i) {
        *currentAlloc = 0xFF;
        currentAlloc++;
    }

    currentSpriteSlot = gSpriteSlots;
    for (i = 0; i < 0x60; ++i) {
        currentSpriteSlot->vramOffset = 0xFFFF;
        currentSpriteSlot->size = 0;
        currentSpriteSlot++;
    }
}

s32 AllocSpriteSlot(void) {
    struct SpriteSlot* current = gSpriteSlots;
    s32 foundSlot = 0x60;
    s32 i = 0;

    while (i <= 0x5F) {
        if (current->vramOffset == 0xFFFF) {
            foundSlot = i;
            break;
        }
        i++;
        current++;
    }
    return foundSlot;
}

s32 AllocUploadSpriteGFX(u32 size) {
    s32 slot;

    slot = AllocSpriteSlot();
    UploadSpriteGFX(slot, size, NULL);
    return slot;
}

s32 UploadSprite2(u32 slot, void *gfx) {
    return UploadSpriteGFX(slot, gSpriteSlots[slot].size, gfx);
}

// file boundary task.c
