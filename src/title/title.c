/* title.c -- consolidated TU. */
#include "nonmatching.h"
#include "dma.h"
#include "file_table.h"
#include "palette.h"
#include "title.h"

INCLUDE_ASM("asm/title/title/Func_80f2028.s");
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
INCLUDE_ASM("asm/title/title/StartTitleScreen.s");

void Func_80f2b6c(void) {}

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
#define LOGO_BUFFER     ((void *)0x02010000)

int NintendoLogo(int arg0)
{
    int result = 0;
    u16 tile;
    u16 *map;
    u8 *file;
    unsigned int i;
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
    DecompressLZ(file, LOGO_BUFFER);
    DMA3_COPY(LOGO_BUFFER, (void *)TITLE_CHR_DEST, LOGO_CHR_SIZE);

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
INCLUDE_ASM("asm/title/title/CamelotLogo.s");

void Func_80f2eb8(void) {}

typedef int (*DivFn)(int, int);
extern int divsi3_RAM(int, int);

/* GCC calls r10 "sl"; the ROM provides its bx-r10 veneer as _call_via_r10. */
__asm__(".set _call_via_sl, _call_via_r10");
void Func_80f2ebc(u16* cur, u16* target, u16* delta, int frames)
{
	int i;

	if (frames > 0) {
		DivFn fn = divsi3_RAM;

		for (i = sizeof(PaletteBGRData) / sizeof(u16) - 1; i >= 0; i--) {
			s16 curSample = (s16)*cur++;

			*delta++ = (u16)fn((s16)*target++ - curSample, frames);
		}
	}
}

// see non_matching/title/Func_80f2f10.c
INCLUDE_ASM("asm/title/title/Func_80f2f10.s");
extern void Func_80f2f10(void);

// see non_matching/title/Func_80f3078.c
INCLUDE_ASM("asm/title/title/Func_80f3078.s");
extern void Func_80f3078(unsigned int mode, PaletteData* source, PaletteBGRData* target, int type);

#include "task.h"
extern void *galloc_ewram(int index, unsigned int size);

void Func_80f377c(void)
{
    TitlePaletteState *p;

    p = (TitlePaletteState*)galloc_ewram(0x20, 0x3004);
    DMA3_CLEAR(p, 0x3004);
    DMA3_COPY(PALETTE_BG, (void*)&p->startPal.palBG, sizeof(p->startPal.palBG));
    DMA3_COPY(PALETTE_OBJ, (void*)&p->startPal.palOBJ, sizeof(p->startPal.palOBJ));
    Func_80f3078(PALMODE_PLANE, &p->startPal, &p->targetBGR, PALFADE_ALL);
    StartTask(Func_80f2f10, 0xc80);
}

extern void gfree(int index);

void Func_80f37ec(void) {
    StopTask(Func_80f2f10);
    gfree(0x20);
}

void Func_80f3804(int arg0, TitlePalFadeType type) {
    TitlePaletteState *p = GetPaletteFadeState();
    if (p != NULL) {
        Func_80f3078(arg0, &p->startPal, &p->targetBGR, type);
    }
}


void Func_80f3824(unsigned int arg0, TitlePalFadeType type) {
    TitlePaletteState *p = GetPaletteFadeState();
    if (p != NULL) {
        Func_80f3078(arg0, &p->startPal, &p->currentBGR, type);
    }
}

extern unsigned short *iwram_3001ed0__a2 __asm__("iwram_3001ed0");

void Func_80f3844(int arg0)
{
    unsigned short *p;
    p = iwram_3001ed0__a2;
    if (p)
        *p = arg0;
}

void Func_80f3858(int frames)
{
    TitlePaletteState *p = GetPaletteFadeState();
    if (p != NULL) {
        p->rampFrames = frames;
        p->rampPos = 0;
        Func_80f2ebc(&p->currentBGR.channels[0], &p->targetBGR.channels[0], &p->rampDelta.channels[0], frames);
    }
}

int Func_80f3898(int curveLv) {
    if (curveLv > 0x1f)
        curveLv = 0x1f;
    else if (curveLv < 0)
        curveLv = 0;
    return curveLv;
}

int Func_80f38ac(int channel) {
    int max;

    max = 0xf8 << 7;
    if (channel > max)
        channel = max;
    return channel;
}
