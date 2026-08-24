/* rom_78dee8 (overlay file 895): consolidated TU — sol map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol/exports.s");

INCLUDE_ASM("asm/maps/sol/Sol_GetEntrances.s");

int Sol_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009f14[];

void *Sol_GetExits(void) {
    return (void *)gOvl_02009f14;
}

INCLUDE_ASM("asm/maps/sol/Sol_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_13[], _EVENT_10[];
extern unsigned char Lm895_22e4[] __asm__(".Lm895_22e4");
extern unsigned char Lm895_241c[] __asm__(".Lm895_241c");
extern unsigned char Lm895_2524[] __asm__(".Lm895_2524");
extern unsigned char Lm895_232c[] __asm__(".Lm895_232c");
extern unsigned char Lm895_22d8[] __asm__(".Lm895_22d8");

int Sol_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_13)
        return (int)Lm895_22e4;
    if (ev == (int)_EVENT_10) {
        int f1 = *(short *)((char *)p + 0x1c2);
        switch (f1) {
        case 0xb: case 0xc: case 0xd:
            return (int)Lm895_241c;
        case 0xe: case 0xf: case 0x10:
            return (int)Lm895_2524;
        default:
            return (int)Lm895_232c;
        }
    }
    return (int)Lm895_22d8;
}
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008154.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008200.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008258.s");

extern unsigned char *iwram_3001ebc;

void OvlFunc_895_20083bc(void)
{
    unsigned char *b;
    unsigned short *p;
    unsigned short v;

    __CutsceneStart();
    if (__GetFlag(0x821)) {
        __Func_801776c(0x1034, 1);
    } else if (__GetFlag(0xf02)) {
        b = iwram_3001ebc;
        __Func_801776c(0x1031, 1);
        p = (unsigned short *)(b + (0xb9 << 1));
        v = 1;
        *p = v;
    } else {
        __Func_801776c(0x1031, 1);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008420.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_200856c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_20085ac.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_20085ec.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008634.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_200867c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_20086c4.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_200870c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008754.s");


unsigned int OvlFunc_895_200879c(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;
    unsigned int *p;

    base = (unsigned int *)iwram_3001ebc;
    i = 8;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        p = (unsigned int *)*r2;
        r2++;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20)) {
            if (arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
                return (unsigned int)p;
        }
        i++;
    } while (i <= 0x41);
    return 0;
}

INCLUDE_ASM("asm/maps/sol/OvlFunc_895_20087d0.s");
INCLUDE_ASM("asm/maps/sol/Sol_MapInit.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_200892c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008a24.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008d1c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2008f8c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_200961c.s");
INCLUDE_ASM("asm/maps/sol/OvlFunc_895_20097c0.s");

void OvlFunc_895_2009aac(void)
{
  int new_var;
  int a0 = 0x953;
  int new_var2;
  new_var = 1;
  __CutsceneStart();
  new_var2 = 0;
 do { } while (new_var2);
  __Func_801776c(a0, new_var);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/sol/OvlFunc_895_2009ac8.s");

INCLUDE_ASM("asm/maps/sol/imports.s");
