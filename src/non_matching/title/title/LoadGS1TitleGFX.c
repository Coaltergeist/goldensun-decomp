/* LoadGS1TitleGFX -- title-screen asset loader (ROM 0x080f24a0).
 *
 * Loads the two title graphics files, decompresses them into gBuffer and
 * uploads the palettes/tiles to VRAM, fills both screenblocks with the logo
 * tile pattern, then arms the window/blend registers.  It also clears the work
 * block's header (the same block Func_80f2028 uses) and the BG scroll shadow.
 *
 * PARKED (not byte-exact). 209/209 instructions match the ROM and all 12
 * relocations are identical, but the tail DMA load order differs: gcc 2.96's
 * -fschedule-insns2 hoists the dependency-free `ldr r1,=0x04000010` above the
 * six `state` stores (the ROM keeps it after them), which also swaps two
 * literal-pool words. 16 differing .text bytes. See
 * docs/LoadGS1TitleGFX-analysis.md.
 */

#include "title.h"
#include "dma.h"
#include "file_table.h"

/* The two screenblocks the logo tile pattern is written to. */
#define TITLE_MAP_0 ((u16 *)0x0600F000)
#define TITLE_MAP_1 ((u16 *)0x0600F800)

extern u32 DecompressLZ1(const void *src, void *dst);

void LoadGS1TitleGFX(void)
{
    TitleScreenWork *state = gTitleWork;
    u16 *map;
    u16 tile;
    int row;
    int i;
    u8 *file;
    u16 blank;

    REG_DISPCNT = 0;

    file = GetFile(FILE_15);
    DMA3_COPY(file, PALETTE_OBJ, PALETTE_SIZE);
    *(vu16 *)&PALETTE_OBJ = 0;
    file += PALETTE_SIZE;
    DecompressLZ1(file, gBuffer);

    DMA3_SET(gBuffer, (void *)0x06010000, 0x80000F00);

    file = GetFile(FILE_17);
    DMA3_COPY(file, (void *)PALETTE_BG, PALETTE_SIZE);
    *(vu16 *)&PALETTE_BG = 0;
    file += PALETTE_SIZE;
    DecompressLZ1(file, gBuffer);

    DMA3_SET(ewram_2012940, (void *)0x06000000, 0x80002760);
    DMA3_SET(ewram_201a140, (void *)0x06004EC0, 0x80004EC0);

    blank = TITLE_BLANK_TILE;
    map = TITLE_MAP_0;
    tile = 0x267;
    for (row = 0; row <= 10; row++) {
        for (i = 29; i >= 0; i--) {
            *map++ = tile++;
        }
        *map++ = blank;
        *map++ = blank;
    }
    tile = 0x13B;
    for (row = 11; row <= 31; row++) {
        for (i = 29; i >= 0; i--) {
            *map++ = tile++;
        }
        *map++ = blank;
        *map++ = blank;
    }
    map = TITLE_MAP_1;
    tile = 0x12C;
    for (row = 0; row <= 10; row++) {
        for (i = 29; i >= 0; i--) {
            *map++ = tile++;
        }
        *map++ = blank;
        *map++ = blank;
    }
    tile = 0;
    for (row = 11; row <= 31; row++) {
        for (i = 29; i >= 0; i--) {
            *map++ = tile++;
        }
        *map++ = blank;
        *map++ = blank;
    }

    REG_BG1CNT = 0x1F43;
    REG_BG2CNT = 0x1E81;
    REG_WIN0H = 0xF0;
    REG_WIN0V = 0x9F;
    REG_WIN1H = 0xF0;
    REG_WIN1V = 0x9F;
    REG_WININ = 0x1616;

    {
        u16 *p = iwram_3001ad0;
        u16 z = 0;
        for (row = 3; row >= 0; row--) {
            p[1] = z;
            p[0] = z;
            p += 2;
        }
    }
    TITLE_BG1_VOFS = 0x60;
    TITLE_BG2_VOFS = 0x60;
    state->logoFrame = 0;
    state->unk00 = 0;
    state->unk04 = 0;
    state->tick = 0;
    state->parallaxFrame = 0;
    state->state = 0;
    DMA3_COPY(iwram_3001ad0, (void *)REG_ADDR_BG0HOFS, TITLE_SCROLL_SHADOW_LEN);
    REG_BLDCNT = 0x3FBF;
    REG_BLDALPHA = 0x1010;
    REG_BLDCNT = 0x3F44;
}
