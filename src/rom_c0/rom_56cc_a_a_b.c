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

extern u8 sCamelotString[];

u32 Func_80056cc(void)
{
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
        if (Func_8005c08(&header, sCamelotString, 7) != 0) continue;
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

u32 Func_8005b24(void);
u32 Random();
extern void* iwram_3001f1c;

u32 Func_8005810(void) {
    u32 buf[16];
    u8 *ptr = iwram_3001f1c;
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
            if (Func_8005b24() == 16)
                slot = 16;
        } else {
            slot = Random() % count;
            slot = buf[slot];
        }
    }
    return slot;
}

s32 VerifyFlashSector(u16, s32);
extern s32 (*ewram_2004c04)(u16, s32);


u32 Func_8005868(u16 arg0) {
    s32 temp_r0;
    s32 temp_r6;
    u16 temp_r5;

    temp_r5 = arg0;
    temp_r6 = iwram_3001f1c + 0x3C;
    if ((ewram_2004c04(temp_r5, temp_r6 + 4) << 0x10) != 0) {
        return 1U;
    }
    temp_r0 = VerifyFlashSector(temp_r5, temp_r6 + 4);
    return (u32) ((0 - temp_r0) | temp_r0) >> 0x1F;
}

u16 Func_8005ae0(void);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);


s32 Func_80058ac(u16 arg0) {
    u16 buf[8];
    void *temp_r5 = iwram_3001f1c + 0x3C;
    ReadFlash(arg0, 0, temp_r5 + 4, 0x1000);
    DMA3_COPY(temp_r5 + 4, buf, 16);
    WaitForDma3();
    return Func_8005ae0() - buf[4];
}

extern u16 (*ewram_2004c14)(u16);

u16 Func_8005904(u16 arg) {
    return ewram_2004c14(arg);
}
