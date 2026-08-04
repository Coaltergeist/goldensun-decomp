/* Cluster Func_8005904..Func_8005904 extracted from goldensun/asm/rom_c0/rom_56cc_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_56cc_a_a_a.o and asm/rom_c0/rom_56cc_a_a_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "dma.h"
#include "gba/io.h"
#include "interrupt.h"

extern void *gPtrs[];

struct FlashSectorHeader {
    /* 0x0 */ u8  magic[7];   /* "CAMELOT" */
    /* 0x7 */ u8  slot;
    /* 0x8 */ u16 checksum;
    /* 0xA */ u16 counter;
    /* 0xC */ u8  pad[4];
};  /* 0x10 bytes */

struct FlashWork {
    /* 0x00 */ u8  valid[16];
    /* 0x10 */ u8  slot[16];
    /* 0x20 */ u16 counter[16];
    /* 0x40 */ u8  sector[0x10C0];
};  /* 0x1100 bytes */

extern void *galloc_ewram(s32 index, u32 size);
extern intrfunc_t *Data_8000864[];
extern void SetFlashTimerIntr(u32, intrfunc_t **);
u16 IdentifyFlash(void);
extern void WaitFrames(u32 n);

s32 Func_80058ac(u32 arg0);

u32 Func_80056cc(void) {
    struct FlashWork *work;
    struct FlashSectorHeader header;
    u8 *src;
    u32 i, j;
    s32 result;

    work = galloc_ewram(0x33, 0x1100);
    DMA3_CLEAR(work, 0x1100);
    SetFlashTimerIntr(2, Data_8000864);

    for (i = 0; ; i++) {
        if (i > 7)
            break;
        if (IdentifyFlash() == 0)
            break;
        WaitFrames(1);
    }
    if (i > 7)
        return 1;

    src = work->sector;
    for (i = 0; i < 16; i++) {
        work->valid[i] = 0;
        work->slot[i] = 0x10;
        work->counter[i] = 0;

        result = Func_80058ac(i);
        DMA3_COPY(src, &header, sizeof(header));
        WaitForDma3();
        if (Func_8005c08(&header.magic, "CAMELOT", 7) != 0) continue;
        work->counter[i] = header.counter;
        if (header.slot > 0xF || result != 0) continue;
        work->valid[i] = 1;
        work->slot[i] = header.slot;
        for (; result < i; result++) {
            if (work->slot[result] != header.slot) continue;

            if (work->counter[result] < header.counter)
                work->valid[result] = 0;
            else
                work->valid[i] = 0;
        }
    }
    return 0;
}

u32 Func_8005b24(u32);
u32 Random(void);

u32 Func_8005810(u32 arg0) {
    u32 buf[16];
    u8 *ptr = &(*((struct FlashWork **)&gPtrs[0x33]))->valid[0];
    u32 count = 0;
    u32 slot;

    for (slot = 0; slot < 16; slot++) {
        if (*ptr++ == 0)
            buf[count++] = slot;
    }

    slot = 16;
    if (count != 0) {
        if (count == 1) {
            slot = buf[0];
            if (Func_8005b24(arg0) == 16)
                slot = 16;
        } else {
            slot = Random() % count;
            slot = buf[slot];
        }
    }
    return slot;
}

s32 VerifyFlashSector(u16, u8 *);
extern s32 (*ewram_2004c04)(u16, u8 *);


u32 Func_8005868(u32 arg0) {
    s32 res;
    struct FlashWork *ctx = (*((struct FlashWork **)&gPtrs[0x33]));
    if ((ewram_2004c04(arg0, ctx->sector) << 0x10) != 0) return 1;
    res = VerifyFlashSector(arg0, ctx->sector);
    return (u32) ((0 - res) | res) >> 0x1F;
}

u32 Func_8005ae0(void);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);


s32 Func_80058ac(u32 arg0) {
    u16 buf[8];
    struct FlashWork *ctx = *((struct FlashWork **)&gPtrs[0x33]);
    ReadFlash(arg0, 0, ctx->sector, 0x1000);
    DMA3_COPY(ctx->sector, buf, 16);
    WaitForDma3();
    return (u16)Func_8005ae0() - buf[4];
}

extern u16 (*ewram_2004c14)(u16);

u16 Func_8005904(u16 arg) {
    return ewram_2004c14(arg);
}

extern u16 Func_8005c2c(u32 slot);
extern u32 Func_8005868(u32 sector);
extern u32 Func_8005b64(u32 sector);

// something with DMA is not lining up, this does not match with DMA3_CLEAR
static inline void ClearSectorBuf(struct FlashWork *ctx) {
    u32 tmp;
    u32 zero = 0;
    register u32 *_src __asm__("r0") = &tmp;
    register u32 _dst __asm__("r1") = (u32)ctx->sector;
    *_src = zero;
    {
        register vu32 *_base __asm__("r3") = &REG_DMA3SAD;
        register u32 _cnt __asm__("r2") = 0x85000000 | (0x1000 / 4);
        __asm__ volatile (
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            :
            : "l" (_base), "l" (_src), "l" (_dst), "l" (_cnt)
            : "memory"
        );
    }
}

u32 SomethingSaveHeader(u32 slot, const void *data) {
    struct FlashSectorHeader header;
    struct FlashWork *ctx = *((struct FlashWork **)&gPtrs[0x33]);
    u32 oldSector, newSector;
    ClearSectorBuf(ctx);
    WaitForDma3();

    oldSector = Func_8005b24(slot);   // r7
    newSector = Func_8005810(slot);   // r6
    if (newSector > 15) return 1;

    DMA3_COPY(data, ctx->sector + 0x10, 0xFF0);
    WaitForDma3();

    DMA3_COPY("CAMELOTT", &header, 8);
    WaitForDma3();

    header.slot = slot;
    header.checksum = Func_8005ae0();
    header.counter = Func_8005c2c(slot) + 1;

    DMA3_COPY(&header, ctx->sector, sizeof(struct FlashSectorHeader));
    WaitForDma3();

    if (Func_8005868(newSector) != 0) return 1;
    if (oldSector <= 15) {
        if (Func_8005b64(oldSector) != 0) return 1;
    }

    if (header.counter > 0xFDE8) {
        header.counter = 1;
        DMA3_COPY(&header.magic, ctx->sector, sizeof(struct FlashSectorHeader));
        WaitForDma3();
        if (Func_8005868(oldSector) != 0) return 1;
        if (Func_8005b64(newSector) != 0) return 1;
        newSector = oldSector;
    }

    ctx->valid[newSector] = 1;
    ctx->slot[newSector] = slot;
    ctx->counter[newSector] = header.counter;
    return 0;
}

s32 Func_8005a78(s32 arg0, void *arg2) {
    struct FlashWork *ctx = *((struct FlashWork **)&gPtrs[0x33]);
    u32 res = Func_8005b24(arg0);
    if (res > 15) return 1;
    Func_80058ac(res);
    DMA3_COPY(&ctx->sector[0x10], arg2, 0x3FC * 4);
    WaitForDma3();
    return 0;
}

u32 Func_8005ac0(u32 arg0) {
    u32 temp_r0;
    u32 res = Func_8005b24(arg0);
    if (res > 15) return 1;
    temp_r0 = Func_8005b64(res);
    return (u32) ((-temp_r0) | temp_r0) >> 0x1F;
}

u32 Func_8005ae0(void) {
    u8 *p;
    u32 sum;
    u32 i;
    sum = 0;
    i = 0;
    p = &(*((struct FlashWork **)&gPtrs[0x33]))->sector[0x10];
    do {
        sum += p[0];
        sum += p[1];
        sum += p[2];
        sum += p[3];
        sum += p[4];
        sum += p[5];
        sum += p[6];
        sum += p[7];
        i += 8;
        p += 8;
    } while (i < 0xfe8);
    return sum;
}

u32 Func_8005b24(u32 slot) {
    u16 *counter;
    struct FlashWork *ctx;
    u32 i;
    u32 best;
    u32 result;

    ctx = *((struct FlashWork **)&gPtrs[0x33]);
    counter = &ctx->counter[0];
    best = 0;
    result = 16;
    for (i = 0; i < 16; i++) {
        if (ctx->valid[i] != 0 && slot == ctx->slot[i] && best < counter[i]) {
            best = counter[i];
            result = i;
        }
    }
    return result;
}

u32 Func_8005b64(u32 index) {
    struct FlashWork *ctx = (*((struct FlashWork **)&gPtrs[0x33]));
    struct FlashSectorHeader header;

    DMA3_CLEAR(&header, sizeof(header));
    WaitForDma3();

    DMA3_COPY("CAMELOTT", &header, 8);
    WaitForDma3();
    header.slot = 16; // MAX_SLOT?
    header.counter = 0;

    DMA3_COPY(&header, ctx->sector, sizeof(header));
    WaitForDma3();

    if (Func_8005868(index) != 0)
        return 1;

    ctx->valid[index]   = 0;
    ctx->slot[index]    = 0x10;
    ctx->counter[index] = 0;
    return 0;
}

// strncmp?
s32 Func_8005c08(char *str1, char *str2, u32 num) {
    s32 diff;
    diff = 0;
    while (num != 0) {
        diff = *str1 - *str2;
        if (diff != 0)
            break;
        num--;
        str1++;
        str2++;
    }
    return diff;
}

u16 Func_8005c2c(u32 slot) {
    struct FlashWork *ctx;
    u32 max;
    u32 i;

    ctx = (*((struct FlashWork **)&gPtrs[0x33]));
    max = 0;
    for (i = 0; i < 16; ++i) {
        if (ctx->valid[i] && slot == ctx->slot[i]) {
            if (max < ctx->counter[i])
                max = ctx->counter[i];
        }
    }
    return max;
}

u32 Func_8005c68(void) {
    u8 *dst = &(*((struct FlashWork **)&gPtrs[0x33]))->sector[0x1000];
    u32 i;
    u32 count = 0;

    for (i = 0; i <= 2; i++) {
        u32 slot;

        DMA3_CLEAR(dst, 0x40);

        slot = Func_8005b24(i);
        if (slot < 16) {
            ReadFlash(slot, 0, dst, 0x40);
            count++;
        }
        slot = Func_8005b24(i + 3);
        if (slot < 16) {
            ReadFlash(slot, 0x110, dst + 0x38, 4);
        } else {
            *(u32 *)(dst + 0x38) = 0;
        }

        dst += 0x40;
    }
    return count;
}
