/* rom_78c76c (overlay file 891): consolidated TU — sol_sanctum_2 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_2/exports.s");

extern unsigned char gOvl_0200a5c0[];

unsigned int SolSanctum2_GetEntrances(void) {
    return (unsigned int)gOvl_0200a5c0;
}

unsigned int SolSanctum2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a698[];

void *SolSanctum2_GetExits(void) {
    return (void *)gOvl_0200a698;
}
extern unsigned char gOvl_0200a6bc[];

void *SolSanctum2_GetActors(void) {
    return (void *)gOvl_0200a6bc;
}
extern unsigned char gOvl_0200a80c[];

void *SolSanctum2_GetEvents(void) {
    return (void *)gOvl_0200a80c;
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008054.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008098.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008150.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008614.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008c8c.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2008eb0.s");

void OvlFunc_891_2008fe4(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0xc0 << 8)) {
        __Func_8093c00();
    }
}

void OvlFunc_891_2009000(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0x80 << 7)) {
        __Func_8093c00();
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200901c.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/SolSanctum2_MapInit.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20094b8.s");

extern void OvlFunc_891_2009c14(void);

void OvlFunc_891_2009574(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(9, 0x1f, 9);
    if (r0 != 0) {
        OvlFunc_891_2009c14();
    }
}

extern void OvlFunc_891_2009d14(void);

void OvlFunc_891_200958c(void)
{
    int r0;

    r0 = OvlFunc_891_2009be8(0xb, 0x28, 9);
    if (r0 != 0) {
        OvlFunc_891_2009d14();
    }
}

extern void OvlFunc_891_2009e10(void);

void OvlFunc_891_20095a4(void)
{
    if (OvlFunc_891_2009be8(0xd, 0x1f, 0xc) != 0) {
        OvlFunc_891_2009e10();
    }
}

extern void OvlFunc_891_2009f0c(void);

void OvlFunc_891_20095bc(void)
{
    int r0;
    r0 = OvlFunc_891_2009be8(0xf, 0x28, 0xc);
    if (r0 != 0) {
        OvlFunc_891_2009f0c();
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20095d4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20095fc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009624.s");


void OvlFunc_891_200966c(void)
{
  void *p;
  unsigned int x;
  int new_var2;
  int new_var;
  p = __MapActor_GetActor(0);
  x = (*((int *) (((char *) p) + 8))) >> 20;
  p = __MapActor_GetActor(0);
  new_var = 0xd0 << 16;
  if (((*((int *) (((char *) p) + 0x10))) >> 20) == 7)
  {
    new_var2 = 0xe0 << 15;
    if (((unsigned int) (x - 0xd)) <= 1)
    {
      __Func_8012078(2, new_var, new_var2, 0xff);
    }
  }
}


void OvlFunc_891_20096a4(void)
{
  void *p;
  long new_var2;
  int x;
  int new_var;
  p = __MapActor_GetActor(0);
  x = (*((int *) (((char *) p) + 8))) >> 20;
  p = __MapActor_GetActor(0);
  new_var = 0xb0 << 17;
  if (((*((int *) (((char *) p) + 0x10))) >> 20) == 7)
  {
 new_var2 = 0xe0 << 15; do { if (((unsigned int) (x - 0x15)) <= 1) { __Func_8012078(2, new_var, new_var2, 0xff); } } while (0);
  }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_20096dc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200995c.s");

extern void OvlFunc_891_2009b44(int, int, int, int, int);

void OvlFunc_891_20099e4(void)
{
    OvlFunc_891_2009b44(9, 31, 9, 30, 9);
    OvlFunc_891_2009c14();
}


void OvlFunc_891_2009a04(void)
{
    OvlFunc_891_2009b44(11, 40, 9, 41, 9);
    OvlFunc_891_2009d14();
}


void OvlFunc_891_2009a24(void)
{
    OvlFunc_891_2009b44(13, 31, 12, 30, 12);
    OvlFunc_891_2009e10();
}


void OvlFunc_891_2009a44(void)
{
    OvlFunc_891_2009b44(15, 40, 12, 41, 12);
    OvlFunc_891_2009f0c();
}

extern void OvlFunc_891_200a244(void);

void OvlFunc_891_2009a64(void)
{
    OvlFunc_891_2009b44(10, 14, 7, 13, 7);
    OvlFunc_891_200a244();
}


void OvlFunc_891_2009a84(void) {
    int res;
    int v;

    res = __MapActor_GetActor(0xa);
    if (res != 0) {
        v = *(int *)((char *)res + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v + 1, 0xd, v);
    }
}
void OvlFunc_891_2009aac(void) {
    unsigned char *p;
    int v;

    p = (unsigned char *)__MapActor_GetActor(0xa);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xa, 0xd, v - 1, 0xd, v);
    }
}

extern void OvlFunc_891_200a2f4(void);

void OvlFunc_891_2009ad4(void)
{
    OvlFunc_891_2009b44(12, 21, 7, 22, 7);
    OvlFunc_891_200a2f4();
}


void OvlFunc_891_2009af4(void) {
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0xc);
    if (p != (unsigned char *)0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v + 1, 0x16, v);
    }
}
void OvlFunc_891_2009b1c(void) {
    unsigned char *p;
    int v;

    p = __MapActor_GetActor(0xc);
    if (p != 0) {
        v = *(int *)(p + 0x10) >> 20;
        OvlFunc_891_2009b44(0xc, 0x16, v - 1, 0x16, v);
    }
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009b44.s");


unsigned int OvlFunc_891_2009be8(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    void *p;
    p = __MapActor_GetActor();
    if (p == (void *)0)
        return 0;
    if ((*(int *)((char *)p + 8) >> 20) != (int)arg1)
        return 0;
    if ((*(int *)((char *)p + 0x10) >> 20) != (int)arg2)
        return 0;
    return 1;
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009c14.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009d14.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009e10.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009f0c.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_2009ff4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200a244.s");
INCLUDE_ASM("asm/maps/sol_sanctum_2/OvlFunc_891_200a2f4.s");

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_891_200a3a4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/sol_sanctum_2/ovl_30_c_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/sol_sanctum_2/imports.s");
