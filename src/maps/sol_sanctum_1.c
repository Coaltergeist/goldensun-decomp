/* rom_78b2ac (overlay file 890): consolidated TU — sol_sanctum_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/sol_sanctum_1/exports.s");

extern unsigned char gOvl_0200aafc[];

unsigned int SolSanctum1_GetEntrances(void) {
    return (unsigned int)gOvl_0200aafc;
}

unsigned int SolSanctum1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200abec[];

void *SolSanctum1_GetExits(void) {
    return (void *)gOvl_0200abec;
}
extern unsigned char gScript_884__0200ac14[];

void *SolSanctum1_GetActors(void) {
    return (void *)gScript_884__0200ac14;
}
extern unsigned char gOvl_0200ad34[];

void *SolSanctum1_GetEvents(void) {
    return (void *)gOvl_0200ad34;
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008054.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008108.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008150.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20081ec.s");

/* OvlFunc_890_200822c; *(vu16*)0x05000000 = 0.
 * Address (0xa0<<19) and value (0) both synthesized. Value var FIRST -> r2,
 * address pointer -> r3 (matching strh r2,[r3]). */

void OvlFunc_890_200822c(void) {
    unsigned short v = 0;
    volatile unsigned short *p = (volatile unsigned short *)0x05000000;
    *p = v;
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008238.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20082cc.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008360.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20083f4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008488.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_20089f4.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008c00.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2008d9c.s");
/* PROBE: 2008ef8 best near-miss (base_14.c, diff=8) + COMPLETE prototypes.
   Tests §2.4/§2.5-caveat: whole-function arg-order should collapse the
   4-site r0-position residual once every callee has a full prototype.
   Body is base_14.c verbatim; only the three prototypes are added. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2ddc[] __asm__(".Lm890_2ddc");
extern unsigned char Lm890_2de8[] __asm__(".Lm890_2de8");

void OvlFunc_890_2008ef8(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2ddc;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x21, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x22, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x23, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2f, 0x3b, 0x2a, 0x25, v, five);
        goto end;
    case 0x5a:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2f, 0x31, 0x2a, 0x21, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 100) {
        *p = 0;
    }
}
/* Twin of 2008ef8, constants adapted from OvlFunc_890_200901c.s.
   global .Lm890_2de0, r0=0x30 r1=0x3b r2=0x1f, r3 base 0x24, special 0x5f,
   threshold 105 (0x69). Complete prototypes per §2.4/§2.5. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2de0[] __asm__(".Lm890_2de0");
void OvlFunc_890_200901c(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2de0;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x30, 0x3b, 0x1f, 0x28, v, five);
        goto end;
    case 0x5f:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x30, 0x31, 0x1f, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 105) {
        *p = 0;
    }
}
/* Twin of 2008ef8, constants adapted from OvlFunc_890_2009140.s.
   global .Lm890_2dec, r0=0x2e r1=0x3b r2=0x29, r3 base 0x24, special 0x55,
   threshold 95 (0x5f). Complete prototypes per §2.4/§2.5. */
int  __Random(void);
void __PlaySound(int sound);
void __CopyMapTiles(int a, int b, int c, int d, int e, int f);

extern unsigned char Lm890_2dec[] __asm__(".Lm890_2dec");
void OvlFunc_890_2009140(void)
{
    unsigned int r;
    unsigned short *p;
    int v;
    unsigned short five;

    r = __Random();
    if ((r & 3) == 0) {
        return;
    }

    p = (unsigned short *)Lm890_2dec;
    v = *p;
    switch (v) {
    case 0:
        __PlaySound(0xbb);
        {
            unsigned short t1 = 1;
            unsigned short t2 = 5;
            __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, t1, t2);
        }
        goto end;
    case 1:
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x24, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, five);
        goto end;
    case 2:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x25, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, five);
        goto end;
    case 3:
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x26, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, five);
        goto end;
    case 4:
        *(int *)Lm890_2de8 = 2;
        v = 1;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x27, v, v);
        five = 5;
        __CopyMapTiles(0x2e, 0x3b, 0x29, 0x28, v, five);
        goto end;
    case 0x55:
        {
            unsigned short t1 = 1;
            unsigned short t2 = 10;
            __CopyMapTiles(0x2e, 0x31, 0x29, 0x24, t1, t2);
        }
        goto end;
    default:
        goto end;
    }

end:
    *p = *p + 1;
    v = *p;
    r = __Random();
    if ((unsigned int)v > (r * 40 >> 16) + 95) {
        *p = 0;
    }
}
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009264.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009380.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009510.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009790.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009a58.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009be8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_2009ca8.s");
INCLUDE_ASM("asm/maps/sol_sanctum_1/SolSanctum1_MapInit.s");

extern int __GetFlag(int);

unsigned int OvlFunc_890_200a5b0(void) {
    unsigned int r5 = 1;
    if (!__GetFlag(0x80b))
        r5 = 0;
    if (!__GetFlag(0x80c))
        r5 = 0;
    if (!__GetFlag(0x80d))
        r5 = 0;
    if (!__GetFlag(0x80e))
        r5 = 0;
    return r5;
}

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_890_200a5fc(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/OvlFunc_890_200a614.s");

extern void __CutsceneStart(void);
extern void __MessageID(int a);
extern void __ActorMessage_Wait(volatile unsigned long a, int b, int c);
extern void __Func_8092adc(int a, int b, int c);
extern void __CutsceneEnd(void);

void OvlFunc_890_200a924(void)
{
  int new_var;
  __CutsceneStart();
  new_var = 0xc0 << 8;
  if (__GetFlag(0x896))
  {
    __MessageID(0xffd);
  }
  else
  {
    __MessageID(0xfff);
  }
  __ActorMessage_Wait(0x10, 0, 0xa);
  __Func_8092adc(0x10, new_var, 0xa);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/sol_sanctum_1/ovl_30_c_c_c_c_c.s");

INCLUDE_ASM("asm/maps/sol_sanctum_1/imports.s");
