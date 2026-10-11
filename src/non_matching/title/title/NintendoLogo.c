/* NintendoLogo -- Nintendo logo boot screen (ROM 0x080f2b70).
 *
 * Plays the logo jingle, clears the task list and VRAM, loads the Nintendo
 * logo graphics with DMA3, decompresses the compressed half into gBuffer and
 * uploads both halves to VRAM. It then fills the 20x30 background tilemap
 * with the logo tiles, clears the BG scroll shadow, hands the screen over to
 * LoadStaticUIGFX and finally runs the "press A/B/Start" wait loop (one stage
 * when arg0 == 0, two stages otherwise), returning -1 on a key press.
 *
 * PARKED (not byte-exact). 180/181 instructions match the ROM, all 21
 * relocations are identical and the symbol size is exactly 484 bytes. The
 * only difference is scheduling: gcc 2.96's -fschedule-insns2 hoists the
 * dependency-free `ldr r5, =gBuffer` (the second DecompressLZ argument) one
 * slot too early, above the `lsls r3, r3, #1` that completes the 0x1c0 LZ
 * source offset, where the ROM keeps it below that `lsls`. The RTL is
 * identical and the compiler reproduces this ordering for every source form
 * tried (see docs/NintendoLogo-analysis.md). 0 differing .text bytes other
 * than that swap.
 *
 * The graphics file id is reached through an absolute file-id symbol rather
 * than a bare `0x18` literal: gcc 2.96 constant-folds a literal to
 * `movs r0, #24`, while the ROM materialises it from the literal pool
 * (`ldr r5, =0x18` hoisted above ClearTasks). `FILE_18` is the shared symbol
 * from include/file_table.h (`_FILE_18 = 0x18;` in file_table.sym).
 */

#include "title.h"
#include "dma.h"
#include "file_table.h"

extern void _PlaySound(int);
extern void ClearTasks(void);
extern void ClearVRAM(void);
extern void WaitFrames(int);
extern void Func_8003b70(int);
extern void Func_8003bb4(int);
extern void Func_8003ce0(void);
extern unsigned int DecompressLZ(const void *src, void *dst);
extern void LoadStaticUIGFX(void);

#define LOGO_SOUND_ID   0x6e
#define LOGO_LZ_OFFSET  0x1c0
#define LOGO_CHR_SIZE   0x9600

int NintendoLogo(int arg0)
{
    int result = 0;
    u16 tile;
    u16 *map;
    u8 *file;
    unsigned int i;
    unsigned int row;
    unsigned int j;
    u32 fileId;
    u16 blank = TITLE_BLANK_TILE;

    _PlaySound(LOGO_SOUND_ID);
    iwram_3001d18 = 1;
    fileId = FILE_NTD_LOGO;
    ClearTasks();
    Func_8003b70(1);
    ClearVRAM();
    WaitFrames(1);

    REG_BG2CNT = TITLE_BG2CNT;
    REG_DISPCNT = TITLE_DISPCNT_LOAD;
    TITLE_BG2_VOFS = 0;

    file = GetFile(fileId);
    DMA3_COPY(file, (void *)TITLE_PALETTE_DEST, LOGO_LZ_OFFSET);
    file += LOGO_LZ_OFFSET;
    DecompressLZ(file, gBuffer);
    DMA3_COPY(gBuffer, (void *)TITLE_CHR_DEST, LOGO_CHR_SIZE);

    map = (u16 *)TITLE_MAP_DEST;
    tile = TITLE_MAP_TILE;
    for (i = 0; i < TITLE_MAP_ROWS; i++) {
        for (j = 0; j < TITLE_MAP_COLS; j++) {
            *map++ = tile++;
        }
        *map++ = blank;
        *map++ = blank;
    }

    i = 0;
    {
        u16 *p = iwram_3001ad0;
        u16 z = 0;
        for (; i < TITLE_SCROLL_SHADOW_PAIRS; i++) {
            p[1] = z;
            p[0] = z;
            p += 2;
        }
    }

    DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, TITLE_SCROLL_SHADOW_LEN);
    LoadStaticUIGFX();
    ClearVRAM();
    REG_DISPCNT = TITLE_DISPCNT_RUN;

    if (arg0 == 0) {
        Func_8003bb4(1);
        Func_8003ce0();
        for (i = 0; i <= 0x77; i++) {
            if (gKeyPress & TITLE_SELECT_KEY) {
                result = -1;
                break;
            }
            WaitFrames(1);
        }
    } else {
        for (i = 0; i <= 0x3b; i++) {
            if (gKeyPress & TITLE_SELECT_KEY) {
                result = -1;
                break;
            }
            WaitFrames(1);
        }
        if (result != 0)
            Func_8003bb4(8);
        else
            Func_8003bb4(0x3c);
        Func_8003ce0();
        if (result == 0) {
            for (i = 0; i <= 0xb3; i++) {
                if (gKeyPress & TITLE_SELECT_KEY) {
                    result = -1;
                    break;
                }
                WaitFrames(1);
            }
        }
        if (result != 0)
            Func_8003b70(8);
        else
            Func_8003b70(0x3c);
        Func_8003ce0();
    }
    return result;
}
