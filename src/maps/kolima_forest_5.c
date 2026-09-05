// fakematch
/* rom_7a4370 (overlay file 917): consolidated TU — kolima_forest_5 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/kolima_forest_5/exports.s");

extern unsigned char gOvl_02009ba4[];

void *KolimaForest5_GetEntrances(void) {
    return (void *)gOvl_02009ba4;
}
extern unsigned char gScript_887__02009c04[];

void *KolimaForest5_GetSpecialExits(void) {
    return (void *)gScript_887__02009c04;
}
extern unsigned char gOvl_02009c24[];

void *KolimaForest5_GetExits(void) {
    return (void *)gOvl_02009c24;
}
extern unsigned char MapEntrance_ARRAY_941__02009c34[];

void *KolimaForest5_GetActors(void) {
    return (void *)MapEntrance_ARRAY_941__02009c34;
}

extern unsigned char iwram_3001ebc[];

void OvlFunc_917_2008050(void) {
    int r5;
    int r3;
    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    __Func_8092304(0, 0, 0);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    r3 = 0;
    __Func_8091e9c(*(short *)(r5 + r3));
    __CutsceneEnd();
}

extern unsigned char gOvl_02009d3c[];

void *KolimaForest5_GetEvents(void) {
    return (void *)gOvl_02009d3c;
}

extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void OvlFunc_917_20092f4(int, int);
extern int _MSG_1520;

void OvlFunc_917_2008088(void) {
    int x;
    __CutsceneStart();
    OvlFunc_917_20092f4(0xb, 1);
    if (__GetFlag(0x845)) {
        __MessageID(0x151d);
        __ActorMessage(9, 0);
    } else if (({ x = 0x84c; __asm__("" : "+r"(x)); __GetFlag(x); })) {
        __MessageID(0x1525);
        __ActorMessage(9, 0);
    } else {
        __MessageID((int) (&_MSG_1520));
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x3c);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0xa);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x28);
        __ActorMessage(9, 0);
        OvlFunc_917_20092f4(0xb, 0);
        __CutsceneWait(0x50);
        __ActorMessage_Wait(9, 0, 0x14);
        OvlFunc_917_20092f4(0xb, 1);
        __ActorMessage_Wait(9, 0, 0x14);
        __SetFlag(0x84c);
    }
    OvlFunc_917_20092f4(0xb, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2008158.s");


void OvlFunc_917_2008248(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151f);
    } else {
        __MessageID(0x14c8);
    }
    __ActorMessage(9, 0);
    __CutsceneEnd();
}

void OvlFunc_917_2008284(void) {
    __CutsceneStart();
    if (__GetFlag(0x845)) {
        __MessageID(0x151e);
    } else {
        __MessageID(0x14ec);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

extern void OvlFunc_917_20082ec(void);
extern void OvlFunc_917_2008488(void);

void OvlFunc_917_20082c0(void)
{
    __CutsceneStart();
    __Func_808e118();
    if (__GetFlag(0x844) == 0) {
        OvlFunc_917_20082ec();
    } else {
        OvlFunc_917_2008488();
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20082ec.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2008488.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/KolimaForest5_MapInit.s");

extern void __DeleteActor(void);

unsigned int OvlFunc_917_20091e8(int *p)
{
    *(unsigned int *)((char *)p + 0x18) += 0x1eb8;
    if (*(unsigned int *)((char *)p + 0x38) == 0x80000000) {
        if (*(unsigned int *)((char *)p + 0x3c) == 0x80000000) {
            if (*(unsigned int *)((char *)p + 0x40) == 0x80000000) {
                __DeleteActor();
            }
        }
    }
    return 1;
}

INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2009218.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20092b4.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20092f4.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_200952c.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20095a0.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_200972c.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2009768.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20097d0.s");

#include "dma.h"
extern unsigned int iwram_3001ed0;
extern unsigned char L1de0[] __asm__(".Lm917_1de0");

void OvlFunc_917_2009838(void) {
    DMA3_COPY((void *)iwram_3001ed0, L1de0, 0x380);
}

#include "dma.h"
extern unsigned char L24e0[] __asm__(".Lm917_24e0");

void OvlFunc_917_2009858(void) {
    DMA3_COPY((void *)iwram_3001ed0, L24e0, 0x380);
}

INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_2009878.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/OvlFunc_917_20098b8.s");
INCLUDE_ASM("asm/maps/kolima_forest_5/kolima_forest_5_data.s");

INCLUDE_ASM("asm/maps/kolima_forest_5/imports.s");
