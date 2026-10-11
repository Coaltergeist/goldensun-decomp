/* title.c -- consolidated TU. */
#include "nonmatching.h"
#include "dma.h"
#include "palette.h"

INCLUDE_ASM("asm/title/title/Func_80f2028.s");
INCLUDE_ASM("asm/title/title/LoadGS1TitleGFX.s");
INCLUDE_ASM("asm/title/title/StartTitleScreen.s");

void Func_80f2b6c(void) {}

INCLUDE_ASM("asm/title/title/NintendoLogo.s");
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

/* `mode` argument of Func_80f3078.
 * The argument is overloaded: the function branches on the range the value
 * falls in, so the constants below are grouped by that range.
 *
 *   mode <  PALMODE_INDIRECT   the value is a raw BGR555 colour and the plane
 *                              is flood-filled with it
 *   mode == PALMODE_INDIRECT   the value is the address of such a colour
 *   PALMODE_PLANE..PALMODE_WARM_ALT
 *                              colour opcode, one per post-processing effect
 *   mode >= PALMODE_PACKED     the low 15 bits are the colour and the
 *                              PALMODE_FLAG_* bits select the operation
 */
typedef enum {
    PALMODE_INDIRECT = 0x8000,    /* also the upper bound of a raw colour */
    PALMODE_PLANE = 0x10000,   /* straight BGR555 plane decomposition */
    PALMODE_GREYSCALE = 0x10001,   /* luminance / 7 in all three planes */
    PALMODE_SEPIA = 0x10002,
    PALMODE_WARM = 0x10003,   /* warm highlight wash */
    PALMODE_CONTRAST = 0x10004,   /* level clamp through curve 1 */
    PALMODE_HALFBLEND = 0x10005,   /* half-way to the plane average */
    PALMODE_DESATURATE = 0x10006,
    PALMODE_WARM_ALT = 0x10007,   /* separate copy of PALMODE_WARM */
    PALMODE_PACKED = 0x100000,  /* >= this: colour | PALMODE_FLAG_* */

    /* Operation bits packed into `mode` when it is >= PALMODE_PACKED. */
	PALMODE_FLAG_GAIN = 0x200000,  /* per-channel gain */
	PALMODE_FLAG_FADE = 0x400000,  /* fade towards the gain colour */
	PALMODE_FLAG_OVERLAY = 0x800000,  /* brightness overlay */
} PaletteMode;

typedef enum {
    PALFADE_ALL = 0,
    PALFADE_BG = 1,
    PALFADE_OBJ = 2,
} TitlePalFadeType;

typedef struct {
    PaletteData startPal;
    PaletteBGRData currentBGR; // +0x0400
    PaletteBGRData targetBGR;  // +0x1000
    PaletteBGRData rampDelta;  // +0x1c00
    PaletteData paletteBuf[2]; // +0x2800, +0x2c00; palBG +0x000, palOBJ +0x200
    u8 paletteIdx;             // +0x3000
    signed char rampFrames;    // +0x3001, read with ldrsb; s8/char is unsigned here
    u8 rampPos;                // +0x3002
    u8 pad_3003;               // +0x3003
} TitlePaletteState;

extern unsigned char iwram_3001ed0[];

static inline TitlePaletteState* GetPaletteFadeState(void) {
    return *(TitlePaletteState**)&iwram_3001ed0;
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
