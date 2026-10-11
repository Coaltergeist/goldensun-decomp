/* CamelotLogo -- Camelot logo boot screen (ROM 0x080f2d54).
 *
 * Reconstructed from asm/title/CamelotLogo.s. Sets the boot flag, clears the
 * task list and VRAM, configures BG2, decompresses the Camelot logo into
 * gBuffer and uploads the palette, tilemap and character data with DMA3. It
 * then clears the BG scroll shadow, hands the screen over to LoadStaticUIGFX
 * and finally animates the logo (a 0x340-byte frame whose VRAM offset cycles
 * through four slots) until a key is pressed or 0x78 frames have elapsed.
 *
 * Status: PARKED / candidate (117 of 119 instructions, 87.4% instruction
 * agreement; official objdiff v3.8.1 fuzzy score 94.6014%, symbol 356 B,
 * literal pool 21/22). The reference has one extra instruction at 0xd70,
 * `adds r6, r5, #0` (`src = buf`), which gcc 2.96 produces only when `buf`
 * conflicts with `src` at the copy. Every behaviourally-correct source shape
 * tried coalesces that copy away; the shape that keeps it (chr DMA reading
 * from the base of `buf`) is wrong. See docs/CamelotLogo-analysis.md.
 */

#include "title.h"
#include "dma.h"

extern void ClearTasks(void);
extern void ClearVRAM(void);
extern void WaitFrames(int);
extern void Func_8003b70(int);
extern void Func_8003c3c(int);
extern void Func_8003ce0(void);
extern void *GetFile(int index);
extern unsigned int DecompressLZ(const void *src, void *dst);
extern void LoadStaticUIGFX(void);

#define CAMELOT_PAL_SIZE  0x1c0
#define CAMELOT_MAP_SIZE  0x800
#define CAMELOT_CHR_SIZE  0x4000
#define CAMELOT_FRAME_SIZE 0x340
#define CAMELOT_FRAMES    0x78

int CamelotLogo(int arg0)
{
    u32 fileId;
    u8 *file;
    u8 *buf = gBuffer;
    u8 *src;
    u32 offset;
    unsigned int i;
    u16 *scroll;

    iwram_3001d18 = 1;
    fileId = FILE_CAMELOT_LOGO;
    ClearTasks();
    Func_8003b70(1);
    ClearVRAM();
    WaitFrames(1);

    REG_BG2CNT = TITLE_BG2CNT_CAMELOT;
    REG_DISPCNT = TITLE_DISPCNT_LOAD;
    TITLE_BG2_VOFS = 0;

    file = GetFile(fileId);
    DecompressLZ(file, buf);
    src = buf;

    DMA3_COPY(src, (void *)TITLE_PALETTE_DEST, CAMELOT_PAL_SIZE);
    src += CAMELOT_PAL_SIZE;
    DMA3_COPY(src, (void *)TITLE_MAP_DEST, CAMELOT_MAP_SIZE);
    src += CAMELOT_MAP_SIZE;
    DMA3_COPY(src, (void *)TITLE_CHR_DEST, CAMELOT_CHR_SIZE);
    src += CAMELOT_CHR_SIZE;

    scroll = iwram_3001ad0;
    i = 0;
    {
        u16 z = 0;
        for (; i < TITLE_SCROLL_SHADOW_PAIRS; i++) {
            scroll[1] = z;
            scroll[0] = z;
            scroll += 2;
        }
    }
    DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, TITLE_SCROLL_SHADOW_LEN);

    LoadStaticUIGFX();
    ClearVRAM();
    Func_8003c3c(1);
    Func_8003ce0();
    REG_DISPCNT = TITLE_DISPCNT_RUN;

    for (i = 0; i < CAMELOT_FRAMES; i++) {
        offset = (iwram_3001e40 >> 3 & 3) << 10;
        DMA3_COPY(src + offset, (void *)TITLE_FRAME_DEST, CAMELOT_FRAME_SIZE);
        if (gKeyPress & TITLE_SELECT_KEY)
            break;
        WaitFrames(1);
    }
    return 0;
}
