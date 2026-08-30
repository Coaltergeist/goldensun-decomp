/* rom_7b6668 (overlay file 928): consolidated TU — xian map overlay. */

#include "nonmatching.h"

extern void __Func_80955b0(int a, int b, int c);

void OvlFunc_928_2008314(void) {
    __Func_80955b0(0x16, 1, 2);
}

void OvlFunc_928_2008324(void)
{
  unsigned char *p;
  unsigned char *flags;
  int new_var;
  p = __MapActor_GetActor(0);
  if ((*((short *) (p + 0xe))) > 0x1f)
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    new_var = (*flags) | 2;
    *flags = new_var;
  }
  else
  {
    p = __MapActor_GetActor(0x14);
    flags = p + 0x23;
    *flags = (*flags) & 0xfd;
  }
}

extern void *__MapActor_GetActor(int);

void OvlFunc_928_2008358(void)
{
    unsigned char *r0 = (unsigned char *)__MapActor_GetActor(0x13);
    unsigned short *r2 = *(unsigned short **)(r0 + 0x50);
    *(unsigned short *)((char *)r2 + 0x1e) += 0x1400;
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008370.s");

extern int Func_8000948(int);

int OvlFunc_928_20083cc(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008408.s");
INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008500.s");

extern unsigned char gOvl_020097e8[];

unsigned int Xian_GetEntrances(void) {
    return (unsigned int)gOvl_020097e8;
}

int Xian_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020098d8[];

void *Xian_GetExits(void) {
    return (void *)gOvl_020098d8;
}

extern unsigned char L1900[] __asm__(".Lm928_1900");

unsigned int * Xian_GetActors(void) {
    if (__GetFlag(0x895)) {
        L1900[0xbe] = 0;
    }
    return (unsigned int *)L1900;
}

void OvlFunc_928_20085d4(void) {
    __CutsceneStart();
    __MessageID(0x17e8);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_20085f4.s");

void OvlFunc_928_200894c(void) {
    unsigned char *r4;
    r4 = __MapActor_GetActor(0);
    if ((*(int *)(r4 + 0x10) >> 20) <= 0xd) {
        __Func_8092b08(0x14, 1);
    }
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008968.s");
INCLUDE_ASM("asm/maps/xian/OvlFunc_928_20089dc.s");

void OvlFunc_928_2008cec(void) {
    __CutsceneStart();
    __MessageID(0x17f7);
    __Func_8093054(0x11, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008d0c.s");

extern unsigned char iwram_3001ebc[];
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(unsigned int);

void OvlFunc_928_2008de8(unsigned int arg0)
{
    int sp1 = 0x8000;
    int sp2 = 0x4000;
    int dist = -0x10;
    unsigned char *actor;

    do { } while (sp1 == 0);

    actor = (unsigned char *)__MapActor_GetActor(0);
    actor[0x55] = 0;
    __MapActor_SetSpeed(0, sp1, sp2);

    if (arg0 == 6) {
        __MapActor_SetAnim(0, 2);
        __MapActor_TravelBy(0, 0, dist);
    } else {
        __Func_8092208(0, 2, dist);
    }

    *(unsigned int *)(*(unsigned int *)iwram_3001ebc + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008e4c.s");
INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2008f30.s");
INCLUDE_ASM("asm/maps/xian/OvlFunc_928_2009060.s");

extern unsigned char gOvl_02009ac8[];

void *Xian_GetEvents(void) {
    return (void *)gOvl_02009ac8;
}

INCLUDE_ASM("asm/maps/xian/Xian_MapInit.s");
