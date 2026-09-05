/* rom_7f6e64 (overlay file 969): consolidated TU — venus_lighthouse_aerie map overlay. */

#include "nonmatching.h"

extern void OvlFunc_969_200a11c();

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_2008314.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20083a0.s");

void OvlFunc_969_2008400(unsigned char *p)
{
    unsigned char *q;
    unsigned short h;
    int a;
    int b;

    q = *(unsigned char **)(p + 0x50);
    a = 0xffff;
    h = *(unsigned short *)(q + 0x1e);
    if ((int)((h + a) << 16) < 0) {
        b = 0xfffff600;
        *(unsigned short *)(q + 0x1e) = h + b;
    }
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_2008424.s");

extern unsigned char gOvl_0200e3d4[];

unsigned int VenusLighthouseAerie_GetEntrances(void) {
    return (unsigned int)gOvl_0200e3d4;
}

unsigned int VenusLighthouseAerie_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200e464[];

unsigned int VenusLighthouseAerie_GetExits(void) {
    return (unsigned int)gOvl_0200e464;
}
extern unsigned char gOvl_0200e478[];

unsigned int VenusLighthouseAerie_GetActors(void) {
    return (unsigned int)gOvl_0200e478;
}

extern int Func_8000948(int);

int OvlFunc_969_2008480(int *a, int *b)
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

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20084bc.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_2008518.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20085ec.s");

void OvlFunc_969_20086c0(void) {
    ((unsigned char *) __MapActor_GetActor(0))[0x55] = 3;
    ((unsigned char *) __MapActor_GetActor(0xc))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xd))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xe))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0xf))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0x10))[0x55] = 4;
    ((unsigned char *) __MapActor_GetActor(0x11))[0x55] = 4;
}

extern unsigned char gOvl_0200e6ec[];

unsigned int VenusLighthouseAerie_GetEvents(void) {
    return (unsigned int)gOvl_0200e6ec;
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/VenusLighthouseAerie_MapInit.s");

extern void __ActorMessage(int a, int b);
extern void __CutsceneWait(int a);

void OvlFunc_969_2008894(int a) {
	__ActorMessage(a, 0);
	__CutsceneWait(0xa);
}

extern void __Func_8092adc(int a, int b, int c);

void OvlFunc_969_20088a8(int a, int b) {
    __Func_8092adc(a, b, 10);
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20088b4.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_2009280.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_20092c8.s");

extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int, unsigned int);
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_969_200a200(unsigned int);

void OvlFunc_969_200a0dc(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (_umodsi3_RAM(iwram_3001e40, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");

void OvlFunc_969_200a11c(arg0) int arg0;
{
    if (iwram_3001e40__a1 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a1 >> 1, 6));
    }
    if (_umodsi3_RAM(iwram_3001e40__a1, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a15c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a1ac.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a200.s");

extern void __Func_8096fb0(int a, int b);

void OvlFunc_969_200a334(void) {
    __Func_8096fb0(0x8c, 0);
}

extern void __Func_8097194(void);

void OvlFunc_969_200a344(void) {
    __Func_8097194();
}

extern void __MapActor_GetActor(int);

void OvlFunc_969_200a350(void) {
    __MapActor_GetActor(6);
    OvlFunc_969_200a11c();
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200a360.s");

void OvlFunc_969_200b5c4(void) {
    __PlaySound(0xbb);
    __Func_8091200(0x7fff, 1);
    __Func_8091254(1);
    __WaitFrames(4);
    __Func_8091200(0x40250d, 1);
    __Func_8091254(1);
    __WaitFrames(1);
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b600.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b660.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b6d0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b7c4.s");

extern void OvlFunc_969_200bbc8(void);
extern void OvlFunc_969_200be9c(void);
extern void OvlFunc_969_200c23c(void);

void OvlFunc_969_200b8c0(void) {
    __CutsceneStart();
    OvlFunc_969_200bbc8();
    OvlFunc_969_200be9c();
    OvlFunc_969_200c23c();
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];
extern void OvlFunc_969_200c8d8(void);
extern void OvlFunc_969_200cb28(void);

void OvlFunc_969_200b8dc(void)
{
    unsigned int *p;
    __CutsceneStart();
    OvlFunc_969_200c8d8();
    OvlFunc_969_200cb28();
    __SetFlag(0x11a);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x18;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(1);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200b924.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200bbc8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200be9c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200c23c.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200c8d8.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200cb28.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200cbec.s");

void OvlFunc_969_200d688(unsigned int arg0) {
    unsigned int r3;
    r3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 0x38) = r3;
    *(unsigned int *)(arg0 + 0x3c) = r3;
    *(unsigned int *)(arg0 + 0x40) = r3;
    r3 = 0;
    *(unsigned int *)(arg0 + 0x24) = r3;
    *(unsigned int *)(arg0 + 0x28) = r3;
    *(unsigned int *)(arg0 + 0x2c) = r3;
    *(unsigned short *)(arg0 + 0x64) = r3;
}

INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200d6a0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200d9f0.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200da28.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/OvlFunc_969_200db90.s");
INCLUDE_ASM("asm/maps/venus_lighthouse_aerie/venus_lighthouse_aerie_data.s");
