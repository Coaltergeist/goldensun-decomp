/* Func_80f2f10 -- per-frame palette-fade ramp task (title screen).
 *
 * State is the 0x3004-byte fade work area at *iwram_3001ed0:
 *   +0x0400 currentBGR   +0x1000 targetBGR   +0x1c00 rampDelta   (0xC00 each)
 *   +0x2800 paletteBuf[0]   +0x2c00 paletteBuf[1]
 *              (BG at +0x000, OBJ at +0x200 within each buffer)
 *   +0x3000 paletteIdx   +0x3001 rampFrames   +0x3002 rampPos
 *
 * Each frame: advance rampPos and add rampDelta word-wise into currentBGR while
 * the ramp runs, or DMA targetBGR over currentBGR on the final frame; pack each
 * three-plane group into one BGR555 word in the back buffer; flip the buffer
 * and queue the BG and OBJ palette uploads.  `rampFrames` is `signed char`
 * because the ROM sign-extends it with ldrsb.
 *
 * Matching status: 145/154 slots (94.2%), 154/154 instructions, 360/360 bytes,
 * literal pool 12/12 in ROM order, 2/2 alignment pads.  No register pins, no
 * empty-asm barriers, no pin-but-never-assign.  The 9 residual slots are gcc
 * 2.96-vs-2.95 allocator/scheduler artifacts, with no missing or extra
 * instruction:
 *   - 6 slots: the pack-loop preheader materialises 0x400 and 0x7C00 into the
 *     opposite registers from the ROM (the loop body itself is identical);
 *   - 3 slots: the first source-pointer add is scheduled one slot early, and
 *     each expansion stores queue->count one slot before, not after, the slot
 *     burst.
 */

#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"
#include "palette.h"
#include "title.h"

/* Enqueue helper.  A macro, not a `static inline`: each expansion then gets its
 * own pseudo lifetimes, which is what lets both copies keep the queue base and
 * the IME address in the same registers without pins (the inline form scores
 * 99/154).  `count` is `s32`, like include/dma.h's ScheduleDmaTransfer, so the
 * `u16` queue count is sign-extended once and the incremented value is kept in a
 * register instead of being reloaded after the aliasing slot store.  Parameters
 * are `dma_*` so they cannot capture the DMATask member names. */
#define SCHEDULE_DMA(dma_dest, dma_src, dma_control) do { \
    DmaQueue *queue = &gDMATaskCount; \
    u32 savedIme = REG_IME; \
    s32 count; \
    SET_IO(REG_IME, REG_ADDR_IME); \
    count = queue->count; \
    if (count < 32) { \
        u32 *task = (u32 *)(count * 12 + (u32)queue + 4); \
        queue->count = count + 1; \
        *task++ = (u32)(dma_src); \
        *task++ = (u32)(dma_dest); \
        *task = (dma_control); \
    } \
    SET_IO(REG_IME, savedIme); \
} while (0)

void Func_80f2f10(void)
{
    TitlePaletteState* p = GetPaletteFadeState();
    u16* delta;             /* rampDelta as a flat half-word stream */
    s32 nextPos;
    u16* cur;               /* currentBGR as a flat half-word stream */
    s32 i;

    delta = (u16*)&p->rampDelta;

    if (p->rampFrames == 0)
        return;

    nextPos = p->rampPos + 1;
    p->rampPos = nextPos;
    if ((signed char)nextPos < p->rampFrames) {
        /* Ramp still running: word-wise current += step over all of currentBGR. */
        cur = (u16*)&p->currentBGR;
        for (i = 0; i < (s32)(sizeof(PaletteBGRData) / sizeof(u16)); ++i)
            *cur++ += *delta++;
    }
    else {
        /* Final frame: snap the target planes over the current ones. */
        DMA3_COPY(&p->targetBGR, &p->currentBGR, sizeof(p->currentBGR));
        p->rampFrames = 0;
    }

    {
        /* Pack each three-half-word ramp group into one BGR555 half-word. */
        u16* src;
        u16* dst;

        dst = (u16*)&p->paletteBuf[p->paletteIdx ^ 1];
        src = (u16*)&p->currentBGR;
        i = sizeof(PaletteBGRData) / sizeof(u16) / 3;

        do {
            *dst++ = BGR555_FROM_PLANES(src[0], src[1], src[2]);
            src += 3;
        } while (--i != 0);
    }

    p->paletteIdx ^= 1;
    {
        /* Queue the uploads for the new front buffer: BG, then OBJ.  Only the BG
         * plane's +0x2800 pointer is bound before the expansions (worth 6 slots);
         * the OBJ plane's +0x2a00 stays inline, as in the ROM. */
        u8* buf = (u8*)p + (p->paletteIdx << 10);
        u8* bgr = buf + 0x2800;
        SCHEDULE_DMA(PALETTE_BG, bgr, MAKE_DMATASK_DMA(0x8400, 0x80));
        SCHEDULE_DMA(PALETTE_OBJ, buf + 0x2a00, MAKE_DMATASK_DMA(0x8400, 0x80));
    }
}
