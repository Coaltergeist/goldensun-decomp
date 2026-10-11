/*
 * StartTitleScreen -- title-screen sequence driver (ROM 0x080f26ec, 1152 bytes).
 *
 * PARKED CLEAN RECONSTRUCTION -- not a match.
 *
 * The body below is a clean C reconstruction of the reference routine: no
 * `register ... __asm__` pins, no empty/volatile asm barriers, no
 * pin-but-never-assign tricks, no integer punning and no per-call scoping
 * games.  It is NOT byte-compatible with the ROM.
 *
 * Measured against the production build of `src/title.o` (see the analysis
 * document, docs/StartTitleScreen-analysis.md):
 *   - 435 instructions emitted vs 438 in the reference (1144 bytes vs 1152),
 *   - 231/438 = 52.7% operand-aware normalised-instruction agreement,
 *     rising to 235/438 = 53.7% for the best tested variant,
 *   - 87.7% mnemonic-only agreement, i.e. the algorithm is right and the
 *     residual gap is register allocation / instruction scheduling,
 *   - 72.29% fuzzy match under the repo's pinned objdiff policy
 *     (objdiff-function-scores-original-byte-weights-v1).
 *
 * What the routine does
 * ---------------------
 * Called as StartTitleScreen(1) (full intro) or StartTitleScreen(0) (short)
 * from Title_MapInit() in src/maps/title.c.  Returns 0, or 1 once a key is
 * pressed during the closing fade.
 *
 *  1. Allocates the title-screen work area from gPtrs[0x2b] (the iwram block
 *     also seen as iwram_3001efc) after saving the current iwram_3001f58.
 *  2. Clears VRAM/sprites, waits a frame, clears tasks, zeroes
 *     iwram_3001d18 and iwram_3001f58, loads the GS1 title GFX and starts the
 *     logo task (Func_80f2028) at priority 0x480.
 *  3. Runs the logo frame loop until the work area's frame counter reaches
 *     TITLE_LOGO_FRAME_END: it advances a scroll-shadow counter
 *     (TITLE_BG1_VOFS) and a second counter (TITLE_BG2_VOFS) and pushes two
 *     DMA3 windows into VRAM on their wrap frames, and turns the logo state to
 *     1 once the counter hits the fast-forward frame (or 2/0 at the later
 *     state frames).
 *  4. At TITLE_LOGO_FRAME_END stops the logo task and builds the title UI:
 *     loads the FILE_16 palette into palette RAM and decompresses its LZ1
 *     payload into gBuffer, DMAs that to VRAM 0x6004000, fills the BG tile map
 *     at 0x6003000 with an ascending run of tiles, then loads the static UI
 *     GFX.
 *  5. For the full intro (arg0 != 0) decompresses Lf38bc into EWRAM, uploads
 *     five 0x80-byte sprite tiles and fills the five work-block sprite entries
 *     with attributes 0x40004000.
 *  6. Fades in over 0x12c (short) or 0xe10 (full) frames using the Lf39b1
 *     blend table, updating the three logo sprite entries each frame for the
 *     full intro, and bails out with 1 as soon as a key is pressed.
 *  7. Restores iwram_3001f58, frees the work area and returns.
 */

#include "title.h"
#include "dma.h"
#include "palette.h"
#include "task.h"
#include "io.h"
#include "file_table.h"

/* Logo frame-loop landmarks (TITLE_LOGO_FRAME_END, shared with Func_80f2028,
 * lives in title.h). */
#define LOGO_FRAME_LAST        0x116 /* last frame that advances the windows */
#define LOGO_FRAME_FAST_FORWARD 0xef /* key-press jump target; state -> 1 */
#define LOGO_FRAME_STATE_2     0x119
#define LOGO_FRAME_STATE_0     0x121

#define FADE_SCALE_FULL  0xe10
#define FADE_SCALE_SHORT 0x12c

extern void Func_80f2028(void);
extern void LoadGS1TitleGFX(void);
extern void Func_80f377c(void);
extern void Func_80f3824(unsigned int arg0, PalFadeType arg1);
extern void Func_80f3858(unsigned int frames);
extern void Func_8003bf8(u32 arg0);
extern void Func_8003c3c(u32 arg0);
extern void Func_8003ce0(void);
extern void Func_8003dec(unsigned int *arg0, int index);
extern void ClearVRAM(void);
extern void ClearSprites(void);
extern void ClearTasks(void);
extern void WaitFrames(unsigned int frames);
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
    int saved;
    u32 i;
    u32 j;
    int frame;
    u32 fade;
    int frames;
    int tick;
    u16 fill;
    u8 *buf;
    u16 *ptr;
    s16 tile;

    saved = iwram_3001f58;
    work = galloc_iwram(TITLE_WORK_INDEX, TITLE_WORK_SIZE);

    ClearVRAM();
    ClearSprites();
    WaitFrames(1);
    ClearTasks();
    {
        u8 tmp = ret;

        iwram_3001d18 = tmp;
        iwram_3001f58 = tmp;
    }
    LoadGS1TitleGFX();
    Func_80f377c();
    Func_80f3824(2, PALFADE_ALL);
    ScheduleDmaTransfer((void *)(REG_ADDR_DISPCNT), (void *)MAKE_DISPCNT(0xf740), MAKE_DMATASK_REG(DMATASK_OP_ASSIGN, DMATASK_TYPE_HWORD));
    Func_80f3858(60); // 60 frames
    StartTask(Func_80f2028, 0x480);

    for (;;) {
        frame = work->logoFrame;
        if ((u32)(frame - 0x15) <= 0xd9 && (gKeyPress & TITLE_SELECT_KEY) != 0) {
            work->state = 1;
            work->logoFrame = LOGO_FRAME_FAST_FORWARD;
            frame = LOGO_FRAME_FAST_FORWARD;
        }
        frame++;
        work->logoFrame = frame;
        if (frame <= LOGO_FRAME_LAST) {
            tick = work->tick;
            if (tick % 3 == 0) {
                TITLE_BG1_VOFS_VOLATILE--;
                if ((TITLE_BG1_VOFS_VOLATILE & 7) == 0) {
                    int c = work->unk00;
                    u32 off = (c * 15) << 6;

                    DMA3_SET((u8 *)ewram_2012580 - off, (u8 *)0x6004b00 - off,
                             0x800001e0);
                    work->unk00 = c + 1;
                    tick = work->tick;
                }
            }
            if ((tick & 1) == 0) {
                TITLE_BG2_VOFS_VOLATILE--;
                if ((TITLE_BG2_VOFS_VOLATILE & 7) == 0) {
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
                        for (j = 0; j <= 4; j++) {
                            for (i = 0; i <= TITLE_MAP_COL_MAX; i++)
                                *ptr++ = 0x13b;
                            *ptr++ = 0x13b;
                            *ptr++ = 0x13b;
                        }
                    }
                    work->unk04 = c + 1;
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
    TITLE_BG2_VOFS_VOLATILE = 0;
    buf = GetFile(FILE_16);
    DMA3_SET(buf, (void *)TITLE_PALETTE_DEST, 0x84000078);
    *(vu16 *)TITLE_PALETTE_DEST = 0;
    DecompressLZ1(buf + (0x80 << 2), gBuffer);
    DMA3_SET(gBuffer, (void *)TITLE_CHR_DEST, 0x80004b00);
    ptr = (u16 *)TITLE_MAP_DEST;
    tile = TITLE_MAP_TILE;
    for (j = 0; j <= TITLE_MAP_ROW_MAX; j++) {
        for (i = 0; i <= TITLE_MAP_COL_MAX; i++) {
            *ptr++ = tile;
            tile++;
        }
        *ptr++ = TITLE_BLANK_TILE;
        *ptr++ = TITLE_BLANK_TILE;
    }
    LoadStaticUIGFX();
    ClearVRAM();

    if (arg0 != 0) {
        buf = galloc_ewram(0xe, 0x400);
        DecompressLZ1(Lf38bc, buf);
        for (i = 0; i <= 4; i++) {
            u32 slot = AllocSpriteSlot();

            work->anim.sprite[i].unk0 = 0;
            work->anim.sprite[i].unk4 = TITLE_SPRITE_ATTR1_DEFAULT;
            work->anim.sprite[i].unk8 = UploadSpriteGFX(slot, 0x80, buf + i * 0x80);
        }
        gfree(0xe);
    }

    Func_8003c3c(0x1e);
    Func_8003ce0();
    REG_DISPCNT = TITLE_DISPCNT_RUN;
    frames = arg0 != 0 ? FADE_SCALE_FULL : FADE_SCALE_SHORT;
    for (fade = 0; fade < frames; fade++) {
        if (arg0 != 0) {
            for (i = 0; i <= 2; i++) {
                u8 *entry = (u8 *)&work->anim.sprite[i];
                u16 *attr = (u16 *)(entry + 6);
                u16 v = (0x50 + i * 0x20) & 0x1ff;

                *attr = (*attr & 0xfe00) | v;
                entry[4] = 0x7c;
                Func_8003dec((unsigned int *)entry, 0);
            }
            REG_BLDCNT = 0x2f50;
            REG_BLDALPHA = ((0x10 - Lf39b1[fade % TITLE_FADE_TABLE_LEN]) << 8) |
                           Lf39b1[fade % TITLE_FADE_TABLE_LEN];
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
