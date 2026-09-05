/* rom_7ebdfc (overlay file 961): consolidated TU — suhalla map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/suhalla/exports.s");

extern void OvlFunc_961_20080f8();

extern unsigned char gOvl_020082f0[];

unsigned int Suhalla_GetEntrances(void) {
    return (unsigned int)gOvl_020082f0;
}

unsigned int Suhalla_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020083c8[];

void *Suhalla_GetExits(void) {
    return (void *)gOvl_020083c8;
}

extern unsigned char L4e0[] __asm__(".Lm961_4e0");
extern unsigned char L3f0[] __asm__(".Lm961_3f0");

unsigned int *Suhalla_GetActors(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L4e0;
    return (unsigned int *)L3f0;
}

INCLUDE_ASM("asm/maps/suhalla/OvlFunc_961_2008068.s");
INCLUDE_ASM("asm/maps/suhalla/OvlFunc_961_20080b0.s");

void OvlFunc_961_20080f8(void)
{
  int new_var3;
  long new_var4;
  int new_var2;
  long new_var;
  int new_var5;
  new_var = 1;
  new_var3 = 4;
  new_var2 = new_var3;
  new_var4 = new_var;
  new_var5 = 9;
  __Func_8010704(0x19, new_var5, new_var4, new_var4, new_var2, 9);
  __SetFlag(0x201);
}

INCLUDE_ASM("asm/maps/suhalla/OvlFunc_961_2008120.s");
INCLUDE_ASM("asm/maps/suhalla/OvlFunc_961_2008194.s");

extern unsigned char L758[] __asm__(".Lm961_758");
extern unsigned char L614[] __asm__(".Lm961_614");

unsigned int *Suhalla_GetEvents(void)
{
    if (__GetFlag(0x96f))
        return (unsigned int *)L758;
    return (unsigned int *)L614;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
typedef struct { unsigned char _pad0[0x1c0]; int transition; unsigned char _pad1[4]; int transitionSpeed; } MapState;
extern MapState *iwram_3001ebc;

int Suhalla_MapInit(void)
{
    unsigned int r3;
    unsigned int r2;
    MapState *p;
    int iVar;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 0x5a) {
        __SetFlag(0x96f);
    }
    p = iwram_3001ebc;
    p->transition = 0x100;
    p->transitionSpeed = 0x18;
    iVar = __GetFlag(0x201);
    if (iVar != 0) {
        OvlFunc_961_20080f8();
        __MapActor_SetAnim(0x10, 4);
    }
    return 0;
}

INCLUDE_ASM("asm/maps/suhalla/suhalla_data.s");

INCLUDE_ASM("asm/maps/suhalla/imports.s");
