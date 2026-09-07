/* rom_779188 (overlay file 879): consolidated TU — GS1 title-screen overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/title/exports.s");

extern unsigned char gOvl_020085f8[];

unsigned int Title_GetEntrances(void) {
    return (unsigned int)gOvl_020085f8;
}

unsigned int Title_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008628[];

void *Title_GetExits(void) {
    return (void *)gOvl_02008628;
}

extern unsigned char gOvl_0200862c[];

void *Title_GetActors(void) {
    return (void *)gOvl_0200862c;
}

extern unsigned char gOvl_02008644[];

void *Title_GetEvents(void) {
    return (void *)gOvl_02008644;
}

extern unsigned char Lconst_0[] __asm__(".Lconst_0");
__asm__(".equ .Lconst_0, 0");

extern unsigned char Lconst_1[] __asm__(".Lconst_1");
__asm__(".equ .Lconst_1, 1");

extern unsigned char Lconst_b[] __asm__(".Lconst_b");
__asm__(".equ .Lconst_b, 0xb");

extern unsigned char Lconst_4[] __asm__(".Lconst_4");
__asm__(".equ .Lconst_4, 4");

extern unsigned char gState[];
extern volatile unsigned int gKeyPress;
extern volatile unsigned int gKeyHeld;

int Title_MapInit(void) {
    int r1;
    short *state;
    int i;
    char *actor;

    r1 = 0xe1;
    r1 <<= 1;
    state = (short *)((char *)&gState + r1);
    r1 = 0;
    if (state[r1] == 10) {
        r1 = 0xfa;
        r1 <<= 1;
        actor = (char *)__MapActor_GetActor(*(int *)((char *)&gState + r1));
        *(actor + 0x55) = 0;
        __PlaySound(0x4b);
        OvlFunc_879_20082e8(0);
        __WaitFrames(0x78);
        i = 0;
        if (gKeyPress == 0) {
            do {
                __WaitFrames(1);
                if (++i > 0xe0f) break;
            } while (gKeyPress == 0);
        }
        __SetDestMap((int)Lconst_0, 2);
        return 0;
    }
    if (state[r1] == 9) {
        __PlaySound(0x43);
        __StartGS1Credits(0);
        __PlaySound(0x11);
        __Func_8003b70(0x3c);
        __Func_8003ce0();
        __CutsceneWait(0xf0);
        __PlaySound(0x13);
        __SetDestMap((int)Lconst_1, 2);
        return 0;
    }

    __Func_8002f3c((int)Lconst_b);
    r1 = 0;
    if (state[r1] == 2) {
    loop_f8:
        __PlaySound(0x13);
        __NintendoLogo(0);
        __CamelotLogo(0);
        if (__Func_801f77c() <= 0) goto dest1;
        __PlaySound(0x46);
        if (__StartTitleScreen(1) != 0) goto dest1;
        __PlaySound(0x11);
        __Func_8003b70(0x1e);
        __Func_8003ce0();
        i = 0;
        if (gKeyHeld != 0) goto loop_f8;
        do {
            __WaitFrames(1);
            if (++i > 0x77) goto loop_f8;
        } while (gKeyHeld == 0);
        goto loop_f8;
    dest1:
        __SetDestMap((int)Lconst_1, 1);
    } else {
        __PlaySound(0x40);
        __StartTitleScreen(0);
        __Func_8077f70();
        __SetDestMap((int)Lconst_4, 0x10);
        __PlaySound(0x11);
    }

    __PlaySound(0x11);
    __Func_8003b70(0x1e);
    __Func_8003ce0();
    __CutsceneWait(0x3c);
    __PlaySound(0x13);
    return 0;
}
#include "dma.h"
#include "file_table.h"

extern short L650[] __asm__(".L650");
extern int __UploadSpriteGFX(int, int, void *);

void OvlFunc_879_20081c0(int unused) {
    u8 *buf;
    u8 *gfx;

    buf = (u8 *)__alloc_ewram(0xa4 << 3);
    if (L650[0] == -1) {
        L650[0] = __AllocSpriteSlot();
    }
    __DecompressLZ(__GetFile(FILE_1c), buf);
    DMA3_COPY(buf, (void *)0x50003e0, 0x20);
    gfx = buf + 0x20;
    __UploadSpriteGFX(L650[0], 0xa0 << 3, gfx);
    WaitForDma3();
    __free(buf);
}

struct SpriteSlot {
    unsigned short unk0;
    unsigned short unk2;
};
extern struct SpriteSlot gSpriteSlots[];
extern unsigned char L6a0[] __asm__(".L6a0");
extern unsigned char L68c[] __asm__(".L68c");
extern unsigned char iwram_3001e40[];

struct TitleSprite {
    u32 a, b, c;
};

void OvlFunc_879_2008238(void) {
    int i;
    int x;
    int y;
    int tileId;
    int diff;
    volatile unsigned int *p;
    struct TitleSprite *q;

    q = (struct TitleSprite *)L6a0;
    p = (volatile unsigned int *)q;
    tileId = gSpriteSlots[L650[0]].unk2 >> 5;
    i = 0;
    x = 0x88;

    for (; i <= 17; i++, tileId += 2) {
        y = 0xe8 - ((18 - i) << 3);
        *p++ = 0;
        *p++ = (y << 16) | x | (0x84 << 8);
        *p++ = (0xf0 << 8) | tileId;

        diff = (*(short *)L68c / 2) - i;
        if (diff < 0) {
            diff = 0;
        }
        if (diff <= 2) {
            if (*(int *)iwram_3001e40 & 1) {
                diff = 0;
            }
        }
        if (diff != 0) {
            __Func_8003dec(q++, 0xff);
        }
    }

    (*(short *)L68c)++;
}
#include "gba/io.h"

/* DMA task queue: a u16 task count followed (at +4) by 12-byte
   {src, dest, control} entries, walked as u32 words. */
extern unsigned short gDMATaskCount;
extern unsigned char iwram_3001ebc[];
extern unsigned char L68c[] __asm__(".L68c");

extern void OvlFunc_879_2008454(void);
extern void OvlFunc_879_20081c0(int);
extern void OvlFunc_879_2008238(void);

#define SetRegAnimDest(queue, dest, src) do { \
    unsigned int savedIme = REG_IME; \
    int count; \
    unsigned int *task; \
    SET_IO(REG_IME, REG_ADDR_IME); \
    count = *(queue); \
    if (count < 32) { \
        task = (unsigned int *)((queue) + 2) + count * 3; \
        *(queue) = count + 1; \
        *task++ = (unsigned int)(src); \
        *task++ = (unsigned int)(dest); \
        *task = 0x20000; \
    } \
    SET_IO(REG_IME, savedIme); \
} while (0)

void OvlFunc_879_20082e8(void) {
    unsigned short *queue;
    int i;
    int off;
    char *base;

    OvlFunc_879_2008454();
    __CutsceneWait(0x1e);
    *(unsigned short *)L68c = 0;
    OvlFunc_879_20081c0(0);
    __StartTask(OvlFunc_879_2008238, 0xc8 << 4);

    queue = &gDMATaskCount;
    SetRegAnimDest(queue, (void *)(0x80 << 19), (void *)(0xaa << 5));
    SetRegAnimDest(queue, (void *)REG_ADDR_BLDCNT, (void *)0x2fce);
    SetRegAnimDest(queue, (void *)REG_ADDR_BLDY, (void *)0x10);
    SetRegAnimDest(queue, (void *)REG_ADDR_BLDALPHA, (void *)0x1010);

    __CutsceneWait(0x78);

    i = 0;
    do {
        SetRegAnimDest(queue, (void *)REG_ADDR_BLDY, (void *)(16 - i));
        __WaitFrames(3);
    } while (++i <= 16);

    off = 0xe4;
    base = *(char **)iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = 0;
    off <<= 1;
    *(int *)(base + off) = 1;
    __MapTransitionIn();
    __WaitMapTransition();
    *(int *)(*(char **)iwram_3001ebc + off) = 0x3c;
}
INCLUDE_ASM("asm/maps/title/OvlFunc_879_2008454.s");
INCLUDE_ASM("asm/maps/title/title_data.s");

INCLUDE_ASM("asm/maps/title/imports.s");
