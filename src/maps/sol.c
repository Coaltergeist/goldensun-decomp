/* rom_78dee8 (overlay file 895): consolidated TU — sol map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol/exports.s");

INCLUDE_ASM("asm/maps/sol/ovl_30_a.s");

int Sol_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009f14[];

void *Sol_GetExits(void) {
    return (void *)gOvl_02009f14;
}

INCLUDE_ASM("asm/maps/sol/ovl_30_c_c_a_a.s");

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

INCLUDE_ASM("asm/maps/sol/ovl_30_c_c_a_c.s");


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

INCLUDE_ASM("asm/maps/sol/ovl_30_c_c_c_a.s");

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

INCLUDE_ASM("asm/maps/sol/ovl_30_c_c_c_c.s");

INCLUDE_ASM("asm/maps/sol/imports.s");
