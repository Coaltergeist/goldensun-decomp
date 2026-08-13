// fakematch
/* video.c -- consolidated TU. */
#include "nonmatching.h"

#include "gba/types.h"
#include "gba/io.h"
#include "libcamelot.h"

extern s32 Func_8003f04();
extern s32 Func_8003f3c();

extern vu8 iwram_3001ac0;
extern u8 iwram_3001aec;
extern vu8 iwram_3001c98;
extern vu8 iwram_3001ca8;
extern u8 iwram_3001cd4;
extern u16 iwram_3001cf8;

void Func_8003adc(void) {
    s32 temp1;
    u32 temp2;
    u32 temp3;
    u32 temp4;
    if (iwram_3001c98 == 0) return;

    if (iwram_3001cd4 != 0) {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0x80);
    } else {
        SET_IO(REG_BLDCNT, iwram_3001cf8 | 0xC0);
    }

    iwram_3001ac0 = iwram_3001ac0 - 1;
    temp3 = iwram_3001ca8;
    temp1 = ((iwram_3001aec - iwram_3001ca8) * iwram_3001ac0);
    temp2 = temp1 / iwram_3001c98;
    REG_BLDY = temp3 + temp2;

    temp4 = iwram_3001ac0;
    if (temp4 == 0) {
        iwram_3001c98 = temp4;
    }
}

void Func_8003b70(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bb4(u32 arg0) {
    iwram_3001cd4 = 0;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003bf8(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0x10;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c3c(u32 arg0) {
    iwram_3001cd4 = 1;
    iwram_3001cf8 = 0x3E;
    iwram_3001aec = iwram_3001ca8;
    iwram_3001ca8 = 0;
    iwram_3001c98 = arg0;
    iwram_3001ac0 = iwram_3001c98;
}

void Func_8003c80(u8 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4) {
    vu8 *r2;
    vu8 *r1;
    iwram_3001cd4 = arg0;
    iwram_3001cf8 = arg1 & 0x3F;
    if (arg2 > 0x10) {
        iwram_3001aec = iwram_3001ca8;
    } else {
        iwram_3001aec = (u8) arg2;
    }
    iwram_3001ca8 = arg3;
    r1 = &iwram_3001ac0;
    r2 = &iwram_3001c98;
    *r2 = arg4;
    *r1 = *r2;
}

void Func_8003ce0(void)
{
    if (iwram_3001c98 != 0)
    {
        do
        {
            WaitFrames(1);
        } while (iwram_3001c98 != 0);
    }
}

extern void *gRAMLib_end;
extern u8 iwram_3001d00;

void Func_8003d04(void) {
    iwram_3001d00 = 0;
    CAMELOT_MEMCLEAR(&gRAMLib_end, 0x400);
}

INCLUDE_ASM("asm/video/rom_3d04_a.s");

extern unsigned int gRAMLib_end__a1[248] __asm__("gRAMLib_end");

void Func_8003dec(unsigned int *arg0, int index)
{
    unsigned int *slot;
    unsigned int old;

    if (index > 255) index = 255;
    if (index < 0) index = 0;
    slot = &gRAMLib_end__a1[index];
    old = *slot;
    *slot = (unsigned int)arg0;
    *arg0 = old;
}

INCLUDE_ASM("asm/video/rom_3d04_c.s");

INCLUDE_ASM("asm/video/rom_3e58_a.s");

#include "gba/types.h"
#include "libcamelot.h"
#include "dma.h"

struct SpriteSlot {
	u16 size;
	u16 vramOffset;
};

extern struct SpriteSlot gSpriteSlots[];
extern u8 gSpriteAllocTable[];

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
