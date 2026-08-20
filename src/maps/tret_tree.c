/* rom_7a5214 (overlay file 918): consolidated TU — tret_tree map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_0200a5cc[];

void *TretTree_GetEntrances(void) {
    return (void *)gOvl_0200a5cc;
}
extern unsigned char gOvl_0200a9d4[];

void *TretTree_GetSpecialExits(void) {
    return (void *)gOvl_0200a9d4;
}
extern unsigned char gOvl_0200aa14[];

void *TretTree_GetExits(void) {
    return (void *)gOvl_0200aa14;
}
extern unsigned char gOvl_0200aa58[];

void *TretTree_GetActors(void) {
    return (void *)gOvl_0200aa58;
}

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2008334.s");

extern void OvlFunc_918_2008334(int a, int b, int c, int d);

void OvlFunc_918_2008494(void) {
    OvlFunc_918_2008334(0x200, 0x40, 0x23, 0x15);
}


void OvlFunc_918_20084a8(void) {
    OvlFunc_918_2008334(0x201, 0x41, 0x23, 0x16);
}


void OvlFunc_918_20084c0(void) {
    OvlFunc_918_2008334(0x202, 0x42, 0x23, 0x17);
}


void OvlFunc_918_20084d8(void) {
    OvlFunc_918_2008334(0x203, 0x43, 0x23, 0x18);
}


void OvlFunc_918_20084f0(void) {
    OvlFunc_918_2008334(0x204, 0x44, 0x23, 0x19);
}


void OvlFunc_918_2008504(void) {
    OvlFunc_918_2008334(0x205, 0x45, 0x23, 0x1a);
}


void OvlFunc_918_200851c(void) {
    OvlFunc_918_2008334(0x206, 0x46, 0x23, 0x1b);
}


void OvlFunc_918_2008534(void) {
    OvlFunc_918_2008334(0x207, 0x47, 0x23, 0x1c);
}


void OvlFunc_918_200854c(void) {
    OvlFunc_918_2008334(0x208, 0x48, 0x23, 0x1d);
}


void OvlFunc_918_2008560(void) {
    OvlFunc_918_2008334(0x209, 0x49, 0x23, 0x1f);
}


void OvlFunc_918_2008578(void) {
    OvlFunc_918_2008334(0x20a, 0x4a, 0x23, 0x20);
}


void OvlFunc_918_2008590(void) {
    OvlFunc_918_2008334(0x20b, 0x4f, 0x23, 0x32);
}


void OvlFunc_918_20085a8(void) {
    OvlFunc_918_2008334(0x20c, 0x4b, 0x23, 0x33);
}


void OvlFunc_918_20085bc(void) {
    OvlFunc_918_2008334(0x20d, 0x4c, 0x23, 0x34);
}


void OvlFunc_918_20085d4(void) {
    OvlFunc_918_2008334(0x20e, 0x4d, 0x23, 0x35);
}


void OvlFunc_918_20085ec(void) {
    OvlFunc_918_2008334(0x20f, 0x4e, 0x23, 0x36);
}


void OvlFunc_918_2008604(void) {
    OvlFunc_918_2008334(0x210, 0x50, 0x23, 0x37);
}


void OvlFunc_918_2008618(void) {
    OvlFunc_918_2008334(0x211, 0x51, 0x23, 0x38);
}


void OvlFunc_918_2008630(void) {
    OvlFunc_918_2008334(0x212, 0x52, 0x23, 0x39);
}


void OvlFunc_918_2008648(void) {
    OvlFunc_918_2008334(0x213, 0x53, 0x23, 0x3a);
}


void OvlFunc_918_2008660(void) {
    OvlFunc_918_2008334(0x214, 0x54, 0x23, 0x3b);
}

extern int __Func_8093c00(void);
extern unsigned char L2dd0[] __asm__(".Lm918_2dd0");

void OvlFunc_918_2008674(void) {
    if (!__Func_8093c00())
        *(short *)(*(unsigned int *)L2dd0) = -1;
}

extern unsigned char gOvl_0200aae8[];

void *TretTree_GetEvents(void) {
    return (void *)gOvl_0200aae8;
}

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200869c.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2008918.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2008f58.s");
INCLUDE_ASM("asm/maps/tret_tree/TretTree_MapInit.s");

/* OvlFunc_918_2009224; inline DMA3: SAD=0x05000000 (palette RAM, built as
 * 0xa0<<19), DAD=*iwram_3001ed0, CNT=0x84000070 (DMA_ENABLE|32bit, 0x70 words
 * = 0x1c0 bytes). Uses the existing DMA3_COPY helper (stmia r3!,{r0,r1,r2}). */
#include "dma.h"
extern void *iwram_3001ed0;

void OvlFunc_918_2009224(void) {
    DMA3_COPY((void *)(0xa0 << 19), iwram_3001ed0, 0x1c0);
}

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2009244.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_2009424.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_20095ac.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200962c.s");

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_20097ec.s");

extern void __StopTask(void (*fn)(void));
extern void OvlFunc_918_2009244(void);

void OvlFunc_918_200984c(void) {
    __StopTask(OvlFunc_918_2009244);
}

INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_200985c.s");
INCLUDE_ASM("asm/maps/tret_tree/OvlFunc_918_20098b8.s");
