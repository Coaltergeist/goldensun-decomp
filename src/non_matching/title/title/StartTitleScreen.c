/*
 * StartTitleScreen -- title-screen sequence driver (ROM 0x080f26ec, 1152 bytes).
 *
 * Status: PARKED (not byte-exact). Exact 1152/1152 function bytes (6292/6292 TU
 * bytes, 543/543 disassembly lines), exact 181/181 TU relocations, and all
 * major loops/pools from +0x160 through +0x47e matched. Remaining diffs are
 * camelot-gcc (2.96) allocator/scheduler differences without fakematches:
 *   - +0x18..0x1e: `saved = iwram_3001f58` allocated to r1 instead of r3;
 *   - +0x38..0x44: reload re-materializes `ret` (`[sp, #8]`) across aliasing
 *     `u8` store `iwram_3001d18 = z` (+2 B absorbed by alignment pad at +0x15e);
 *   - +0x6e/0x70: `SCHEDULE_DMA` `queue->count` store scheduled 1 slot before
 *     `adds r3, r3, r1` (same 23.sched2 swap as Func_80f2f10);
 *   - +0x194/0x198: BG2 DMA literal-pool order (`ewram_20199c0` vs `0x0600e4c0`);
 *   - +0x27c/0x27e: 23.sched2 hoists `ldr r5, =gBuffer` 1 slot above
 *     `lsls r2, r2, #2` (same 23.sched2 swap as NintendoLogo);
 *   - +0x3a6..0x416: `fp` hoists `.Lf39b1` instead of `0x04000052` in the
 *     closing fade loop.
 */

#include "title.h"
#include "dma.h"
#include "palette.h"
#include "task.h"
#include "gba/io.h"
#include "gba/lcd.h"
#include "file_table.h"

#define LOGO_FRAME_LAST         0x116
#define LOGO_FRAME_FAST_FORWARD 0xef
#define LOGO_FRAME_STATE_2      0x119
#define LOGO_FRAME_STATE_0      0x121

#define FADE_SCALE_FULL  0xe10
#define FADE_SCALE_SHORT 0x12c

typedef struct {
    u32 unk0;
    u8 y;
    u8 attr0Hi;
    u16 x : 9;
    u16 attr1Hi : 7;
    u32 unk8;
} TitleSpriteOam;

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

extern void Func_80f2028(void);
extern void LoadGS1TitleGFX(void);
extern void Func_80f377c(void);
extern void Func_80f3824(unsigned int arg0, TitlePalFadeType arg1);
extern void Func_80f3858(int frames);
extern void Func_8003bf8(u32 arg0);
extern void Func_8003c3c(int arg0);
extern void Func_8003ce0(void);
extern void Func_8003dec(unsigned int *arg0, int index);
extern void ClearVRAM(void);
extern void ClearSprites(void);
extern void ClearTasks(void);
extern void WaitFrames(int frames);
extern void LoadStaticUIGFX(void);
extern u32 DecompressLZ1(const void *src, void *dst);
extern u32 AllocSpriteSlot(void);
extern u32 UploadSpriteGFX(u32 slot, u32 size, void *gfx);

extern void *galloc_iwram(int index, unsigned int size);
extern void *galloc_ewram(int index, unsigned int size);
extern void gfree(int index);

int StartTitleScreen(int arg0)
{
    TitleScreenWork *work;
    int ret = 0;
    u8 saved;
    u32 i;
    u32 j;
    u32 frames;
    int tick;
    u16 fill;
    u8 *file;
    u16 *ptr;
    u16 tile;
    vu16 *vofs;
    u16 blank = TITLE_BLANK_TILE;

    saved = iwram_3001f58;
    work = galloc_iwram(TITLE_WORK_INDEX, TITLE_WORK_SIZE);

    ClearVRAM();
    ClearSprites();
    WaitFrames(1);
    ClearTasks();
    iwram_3001d18 = ret;
    iwram_3001f58 = ret;
    LoadGS1TitleGFX();
    Func_80f377c();
    Func_80f3824(2, PALFADE_ALL);
    SCHEDULE_DMA((void *)(REG_ADDR_DISPCNT), (void *)MAKE_DISPCNT(0xf740),
                 MAKE_DMATASK_REG(DMATASK_OP_ASSIGN, DMATASK_TYPE_HWORD));
    Func_80f3858(60);
    StartTask(Func_80f2028, 0x480);

    vofs = iwram_3001ad0;
    for (;;) {
        int prev = work->logoFrame;
        int frame;

        if ((u32)(prev - 0x15) <= 0xd9 && (gKeyPress & TITLE_SELECT_KEY) != 0) {
            work->state = 1;
            work->logoFrame = LOGO_FRAME_FAST_FORWARD;
            prev = LOGO_FRAME_FAST_FORWARD;
        }
        frame = prev + 1;
        work->logoFrame = frame;
        if (frame <= LOGO_FRAME_LAST) {
            tick = work->tick;
            if (tick % 3 == 0) {
                vofs[3]--;
                if ((vofs[3] & 7) == 0) {
                    u32 off = (work->unk00 * 15) << 6;

                    DMA3_SET((u8 *)ewram_2012580 - off, (u8 *)0x6004b00 - off,
                             0x800001e0);
                    work->unk00++;
                    tick = work->tick;
                }
            }
            if ((tick & 1) == 0) {
                vofs[5]--;
                if ((vofs[5] & 7) == 0) {
                    int c = work->unk04;

                    if (c * 8 <= 0x18) {
                        u32 off = (c * 15) << 7;

                        DMA3_SET((u8 *)ewram_20199c0 - off,
                                 (u8 *)0x600e4c0 - off, 0x800003c0);
                    } else {
                        fill = 0;
                        DMA3_SET(&fill,
                                 (u8 *)0x6004ec0 +
                                     ((0xa0 - c * 8) % 0xa0) * 15 * 16,
                                 0x810003c0);
                        ptr = (u16 *)0x600f6c0;
                        for (i = 0; i <= 4; i++) {
                            for (j = 0; j <= TITLE_MAP_COL_MAX; j++)
                                *ptr++ = 0x13b;
                            *ptr++ = 0x13b;
                            *ptr++ = 0x13b;
                        }
                    }
                    work->unk04++;
                }
            }
            if (work->logoFrame == LOGO_FRAME_FAST_FORWARD)
                work->state = 1;
        } else if (frame == LOGO_FRAME_STATE_2) {
            work->state = 2;
        } else if (frame == LOGO_FRAME_STATE_0) {
            work->state = 0;
        } else if (frame == TITLE_LOGO_FRAME_END) {
            break;
        }
        WaitFrames(1);
    }

    Func_8003bf8(1);
    StopTask(Func_80f2028);
    iwram_3001d18 = 1;
    WaitFrames(1);
    REG_BG2CNT = TITLE_BG2CNT;
    REG_DISPCNT = TITLE_DISPCNT_LOAD;
    vofs[5] = 0;
    file = GetFile(FILE_16);
    DMA3_COPY(file, PALETTE_BG, 0x1e0);
    *(vu16 *)&PALETTE_BG = 0;
    file += 0x200;
    DecompressLZ1(file, gBuffer);
    DMA3_SET(gBuffer, (void *)TITLE_CHR_DEST, 0x80004b00);
    ptr = (u16 *)TITLE_MAP_DEST;
    tile = TITLE_MAP_TILE;
    for (i = 0; i <= TITLE_MAP_ROW_MAX; i++) {
        for (j = 0; j <= TITLE_MAP_COL_MAX; j++) {
            *ptr++ = tile++;
        }
        *ptr++ = blank;
        *ptr++ = blank;
    }
    LoadStaticUIGFX();
    ClearVRAM();

    if (arg0 != 0) {
        u8 *buf = galloc_ewram(0xe, 0x400);
        TitleSprite *spr;

        DecompressLZ1(Lf38bc, buf);
        spr = work->anim.sprite;
        for (i = 0; i <= 4; i++) {
            u32 gfx = UploadSpriteGFX(AllocSpriteSlot(), 0x80, buf + i * 0x100 / 2);
            u32 *p = (u32 *)spr++;

            *p++ = 0;
            *p++ = TITLE_SPRITE_ATTR1_DEFAULT;
            *p = gfx;
        }
        gfree(0xe);
    }

    Func_8003c3c(0x1e);
    Func_8003ce0();
    REG_DISPCNT = TITLE_DISPCNT_RUN;
    frames = arg0 != 0 ? FADE_SCALE_FULL : FADE_SCALE_SHORT;
    for (i = 0; i < frames; i++) {
        vu16 *bldalpha = &REG_BLDALPHA;

        if (arg0 != 0) {
            u32 alpha;
            u32 bld;

            for (j = 0; j <= 2; j++) {
                TitleSpriteOam *spr = (TitleSpriteOam *)&work->anim.sprite[j];

                spr->x = 0x50 + j * 0x20;
                spr->y = 0x7c;
                Func_8003dec((unsigned int *)spr, 0);
            }
            alpha = Lf39b1[i % TITLE_FADE_TABLE_LEN];
            REG_BLDCNT = 0x2f50;
            bld = ((0x10 - alpha) << 8) + alpha;
            *bldalpha = bld;
        }
        if ((gKeyPress & TITLE_SELECT_KEY) != 0) {
            ret = 1;
            break;
        }
        WaitFrames(1);
    }

    iwram_3001f58 = saved;
    gfree(TITLE_WORK_INDEX);
    REG_BLDCNT = 0;
    REG_BLDALPHA = 0;
    WaitFrames(1);
    return ret;
}
