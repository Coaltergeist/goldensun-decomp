/* rom_7bc690 (overlay file 933): consolidated TU — lamakan_desert map overlay. */

#include "nonmatching.h"

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_933_2008314(void) {
    __Func_80955b0(0xd, 3, 3);
}

extern void __WaitFrames(int);

void OvlFunc_933_2008324(unsigned int *arg0, int arg1)
{
    int i;

    i = 0x3c;
    while (i != 0) {
        __WaitFrames(1);
        i--;
        if ((int)arg0[3] <= arg1)
            break;
    }
}

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008344.s");
INCLUDE_ASM("asm/maps/lamakan_desert/LamakanDesert_GetEntrances.s");

int LamakanDesert_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a36c[];

void *LamakanDesert_GetExits(void) {
    return (void *)gOvl_0200a36c;
}

INCLUDE_ASM("asm/maps/lamakan_desert/LamakanDesert_GetActors.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008498.s");

extern unsigned char gOvl_0200a500[];

void *LamakanDesert_GetEvents(void) {
    return (void *)gOvl_0200a500;
}

INCLUDE_ASM("asm/maps/lamakan_desert/lamakan_desert_data.s");

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20084e4.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_200888c.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008c38.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008c6c.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008cd0.s");

extern int Func_8000948(int);

int OvlFunc_933_2008e00(int *a, int *b)
{
  int r3;
  int r4;
  int r2;
  int new_var;
  int new_var2;
  int (*fp)(int);
  r3 = *(a++);
  r4 = *(b++);
  r2 = *((int *) (((char *) a) + 4));
  r4 -= r3;
  r3 = (new_var = *b);
  r3 -= r2;
  r4 >>= 16;
  r3 >>= 16;
  new_var2 = (r4 * r4) + (r3 * r3);
  fp = Func_8000948;
  r4 = fp(new_var2);
  return r4;
}

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2008e2c.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2009054.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2009180.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20092fc.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20094b0.s");
INCLUDE_ASM("asm/maps/lamakan_desert/LamakanDesert_MapInit.s");
INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_2009874.s");

INCLUDE_ASM("asm/maps/lamakan_desert/OvlFunc_933_20098a4.s");

extern unsigned char L2730[] __asm__(".Lm933_2730");
extern unsigned char L26d0[] __asm__(".Lm933_26d0");
extern unsigned char L26be[] __asm__(".Lm933_26be");
extern unsigned char L3030[] __asm__(".Lm933_3030");
extern unsigned char OvlData_933_2009fa0[];
extern void OvlFunc_933_20098a4(void);

void OvlFunc_933_2009c1c(void)
{
    unsigned short *slotPtr;
    int slot;

    __DecompressLZ(OvlData_933_2009fa0, L2730);
    slotPtr = (unsigned short *)L26d0;
    slot = __AllocSpriteSlot();
    *slotPtr = slot;
    __UploadSpriteGFX((short)slot, 0x90 << 3, 0);
    *(unsigned short *)L26be = 0;
    *(unsigned short *)L3030 = 0;
    __StartTask(OvlFunc_933_20098a4, 0xc76);
}

extern unsigned short L3030__a1 __asm__(".Lm933_3030");

void OvlFunc_933_2009c78(unsigned short x) {
    L3030__a1 = x;
}


/* overlay-owned data blobs (no .text) */
