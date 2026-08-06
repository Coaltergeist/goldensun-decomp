/* rom_7892c8 (overlay file 888): consolidated TU — vale_sanctum map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vale_sanctum/exports.s");

int OvlFunc_888_2008030(int arg0) {
    int *r2;
    int r3;

    r2 = (int *)__MapActor_GetActor(*(short *)((char *)arg0 + 0x64));
    r3 = *(int *)((char *)arg0 + 0x10);
    *(short *)((char *)arg0 + 6) = __atan2(
        *(int *)((char *)r2 + 0x10) - r3,
        *(int *)((char *)r2 + 8) - *(int *)((char *)arg0 + 8));
    return 0;
}

extern unsigned char gOvl_0200baa8[];

unsigned int ValeSanctum_GetEntrances(void) {
    return (unsigned int)gOvl_0200baa8;
}

unsigned int ValeSanctum_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200bbc8[];

void *ValeSanctum_GetExits(void) {
    return (void *)gOvl_0200bbc8;
}

INCLUDE_ASM("asm/maps/vale_sanctum/ovl_30_c_c_a_a_a_a.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_888_2008574(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned long long t;
    unsigned long v;

    __CutsceneStart();
    __MapActor_Face(10, 0, 0);
    __CutsceneWait(10);
    __MessageID(0x119f);
    __ShowActorMessage_NoWait(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    t = 10;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_sanctum/ovl_30_c_c_a_a_a_c.s");

unsigned int OvlFunc_888_200b2a8(void)
{
    unsigned char *p;
    unsigned int v;

    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0x5fff) << 16;
    if (v <= 0x3ffe0000) {
        return 1;
    }
    return 0;
}

extern void __UI_Sanctum(int a);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_888_200b2d0(void) {
    if (OvlFunc_888_200b2a8() != 0) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __MessageID(0x1bfc);
        } else if (__GetFlag(0x815)) {
            __MessageID(0x119d);
        } else {
            __MessageID(0x1035);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/vale_sanctum/ovl_30_c_c_a_a_c_c.s");


void OvlFunc_888_200b45c(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x845)) {
            __MessageID(0x171c);
        } else {
            __MessageID(0x1408);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_888_200b4a8(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x190a);
        if (__GetFlag(0x909)) {
            __MessageID(0x1951);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}


void OvlFunc_888_200b4f0(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x1823);
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/vale_sanctum/ovl_30_c_c_c.s");

INCLUDE_ASM("asm/maps/vale_sanctum/imports.s");
