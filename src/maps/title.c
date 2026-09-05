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

INCLUDE_ASM("asm/maps/title/Title_MapInit.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_20081c0.s");
INCLUDE_ASM("asm/maps/title/OvlFunc_879_2008238.s");
#include "gba/io.h"

struct DmaTransfer {
    const void *src;
    void *dest;
    unsigned int control;
};

struct DmaQueue {
    unsigned short count;
    struct DmaTransfer tasks[32];
};

extern struct DmaQueue gDMATaskCount;
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
    count = (queue)->count; \
    if (count < 32) { \
        task = (unsigned int *)((unsigned int)(queue) + (unsigned int)count * 12 + 4); \
        *(volatile unsigned short *)&(queue)->count = count + 1; \
        *task++ = (unsigned int)(src); \
        *task++ = (unsigned int)(dest); \
        *task = 0x20000; \
    } \
    SET_IO(REG_IME, savedIme); \
} while (0)

void OvlFunc_879_20082e8(void) {
    struct DmaQueue *queue;
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
