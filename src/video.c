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

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"

struct DmaTransfer {
    const void *src;
    void *dest;
    u32 control;
};

struct DmaQueue {
    u16 count;
    struct DmaTransfer tasks[32];
};

extern struct DmaQueue gDMATaskCount;

static inline void ScheduleDmaTransfer(void *dest, const void *src, u32 cnt) {
    struct DmaQueue *queue;
    register void *d __asm__("r6");
    register const void *s __asm__("r0");
    u32 savedIme;
    s32 count;
    u32 *task;

    queue = &gDMATaskCount;
    __asm__ volatile("" : : "r"(queue));
    d = dest;
    s = src;
    savedIme = REG_IME;
    SET_IO(REG_IME, REG_ADDR_IME);
    count = queue->count;
    if (count < 32) {
        task = (u32 *)(count * 12 + (u32)queue + 4);
        *task++ = (u32)s;
        queue->count = count + 1;
        *task++ = (u32)d;
        *task = cnt;
    }
    SET_IO(REG_IME, savedIme);
}

void Func_800383c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x10000);
}

void SetRegAnimDest(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x20000);
}

void Func_80038bc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x30000);
}

void Func_80038fc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x50000);
}

void Func_800393c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x60000);
}

void Func_800397c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x70000);
}

void Func_80039bc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0x90000);
}

void Func_80039fc(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0xA0000);
}

void Func_8003a3c(void *dest, const void *src) {
    ScheduleDmaTransfer(dest, src, 0xB0000);
}

extern void UploadPalette_ROM(struct DmaQueue *queue, u32 count);

extern int _UPLOAD_PALETTE_SIZE;

void UploadPalette(void) {
    u32 count = gDMATaskCount.count;
    if (count != 0) {
        u32 size = (u32)&_UPLOAD_PALETTE_SIZE;
        u32 funcBuffer[size / 4];
        void (*func)(struct DmaQueue *, u32);
        DMA3_COPY(UploadPalette_ROM, funcBuffer, size);
        func = (void (*)(struct DmaQueue *, u32))funcBuffer;
        func(&gDMATaskCount, count);
        gDMATaskCount.count = 0;
    }
}

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
extern u8 sOamMatrixCount;

void Func_8003d04(void) {
    sOamMatrixCount = 0;
    CAMELOT_MEMCLEAR(&gRAMLib_end, 0x400);
}

#include "math.h"

struct ObjAffineSrc {
    s16 xScale; //fx8.8?
    s16 yScale; //fx8.8?
    u16 angle;
};

struct OamMatrix {
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
};

extern struct OamMatrix sOamMatrices[32];

s32 divsi3_RAM(s32, s32);

static inline u32 FastDivideSigned(s32 a, s32 b) {
    s32 (*divide)(s32, s32) = divsi3_RAM;
    return divide(a,b);
}

u32 Func_8003d28(struct ObjAffineSrc *src)
{
    s32 x = src->xScale;
    u32 i = sOamMatrixCount;
    s32 y = src->yScale;
    u32 angle = src->angle;
    s16 *p;

    if (i > 31)
        return 0;

    p = (s16 *)&sOamMatrices[i];
    if ((x == y || -x == y) && angle == 0) {
        s32 d = FastDivideSigned(0x10000, y);
        s32 a = (-x == y) ? -d : d;
        // somewhat optimized way to write
        // pa = a, pb = 0;
        // pc = 0, pd = d;
        ((u32 *)p)[0] = (u16)a;
        ((u32 *)p)[1] = (u32)d << 16;
    } else {
        s32 s = sin(angle);
        s32 c = cos(angle);
        *p++ = c / x;  //pa
        *p++ = s / x;  //pb
        *p++ = -s / y; //pc
        *p++ = c / y;  //pd
    }

    sOamMatrixCount = i + 1;
    return i;
}

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

#include "gba/types.h"
#include "libcamelot.h"
#include "dma.h"

struct SpriteSlot {
	u16 size;
	u16 vramOffset;
};

extern struct SpriteSlot gSpriteSlots[];
extern u8 gSpriteAllocTable[];

INCLUDE_ASM("asm/video/Func_8003e10.s");

s32 Func_8003e58(u32 id, u32 size) {
    u32 blocks = size >> 6;
    int i;
    s32 start;

    if (id >= 0x60)
        return -1;
    i = 0;
    for (;;) {
        if (i >= 512)
            return -1;

        if (gSpriteAllocTable[i] == 0xFF) {
            u32 end;
            u32 j;
            start = i;
            end = blocks + start;
            while (i < end) {
                if (gSpriteAllocTable[i] != 0xFF)
                    goto occupied;
                i++;
            }

            for (j = 0; j < blocks; j++)
                gSpriteAllocTable[start + j] = id;
            break;
        }
    occupied:
        i += gSpriteSlots[gSpriteAllocTable[i]].size >> 6;
    }
    return start << 6;
}

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
