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

INCLUDE_ASM("asm/title/title/Func_80f2ebc.s");
extern void Func_80f2ebc(void* cur, void* target, void* delta, unsigned int frames);

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

INCLUDE_ASM("asm/title/title/Func_80f2f10.s");
extern void Func_80f2f10(void); // see non_matching/title/Func_80f2f10.c

INCLUDE_ASM("asm/title/title/Func_80f3078.s");
extern void Func_80f3078(unsigned int, void*, void* target, int);

#include "task.h"
extern void *galloc_ewram(int index, unsigned int size);

void Func_80f377c(void)
{
    TitlePaletteState *p;

    p = (TitlePaletteState*)galloc_ewram(0x20, 0x3004);
    DMA3_CLEAR(p, 0x3004);
    DMA3_COPY(PALETTE_BG, (void*)&p->startPal.palBG, sizeof(p->startPal.palBG));
    DMA3_COPY(PALETTE_OBJ, (void*)&p->startPal.palOBJ, sizeof(p->startPal.palOBJ));
    Func_80f3078(0x10000, &p->startPal, &p->targetBGR, PALFADE_ALL);
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

void Func_80f3858(unsigned int frames)
{
    TitlePaletteState *p = GetPaletteFadeState();
    if (p != NULL) {
        p->rampFrames = frames;
        p->rampPos = 0;
        Func_80f2ebc(&p->currentBGR, &p->targetBGR, &p->rampDelta, frames);
    }
}

int Func_80f3898(int channel) {
    if (channel > 0x1f)
        channel = 0x1f;
    else if (channel < 0)
        channel = 0;
    return channel;
}

int Func_80f38ac(int channel) {
    int max;

    max = 0xf8 << 7;
    if (channel > max)
        channel = max;
    return channel;
}
