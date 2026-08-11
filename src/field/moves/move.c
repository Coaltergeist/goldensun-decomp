/* field/moves/move.c -- consolidated TU. */
#include "nonmatching.h"

extern unsigned int gKeyHeld;
extern unsigned short L9f0f8[] __asm__(".L9f0f8");

unsigned short Func_8097b54(void)
{
    return L9f0f8[(gKeyHeld >> 4) & 0xf];
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_a_c_a.s");

extern void Field_Force(void);

void Field_Force_Target(void) {
    Field_Force();
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_a_c_c_a_a.s");

extern unsigned char iwram_3001e40[];
extern void _Actor_SetColorswap(unsigned int, unsigned int);

void Func_8099018(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        _Actor_SetColorswap(arg0, 2);
    } else if (v == 2) {
        _Actor_SetColorswap(arg0, 0);
    }
}

extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_8099040(void *arg0)
{
  if (arg0 != ((void *) 0))
  {
    char *p = arg0;
    int v1c;
    int v18 = (*((int *) (p + 0x18))) - 0x1000;
    *((int *) (p + 0x1c)) = (*((int *) (p + 0x1c))) - 0x1000;
    *((int *) (p + 0x18)) = v18;
    if (v18 <= 0x1000)
    {
      _Actor_SetScript(arg0, Data_9f0b0);
    }
  }
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_a_c_c_a_c_c.s");

extern void Field_Ply(void);
extern void Func_8097174(void);

void Field_Ply_Target(void)
{
	Field_Ply();
	Func_8097174();
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_a_c_c_c.s");

extern unsigned char gState;
extern void Func_8099678(void);
extern void StartTask(void *task, int priority);

void Func_8099810(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&gState;
    r2 = 0x93;
    r2 <<= 2;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 0) {
        StartTask(Func_8099678, 0xc8 << 4);
    }
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_c_a_a.s");

extern int Random(void);

void Func_80999a8(int *r6)
{
    int r5;

    r6[3] += (int)0xffffb334;
    r5 = Random();
    r5 -= Random();
    r6[2] += r5;
    if (r6[3] <= r6[5])
        _Actor_SetScript(r6, Data_9f0b0);
}

extern void Field_Douse(void);

void Field_Douse_Target(void) {
    Field_Douse();
}

INCLUDE_ASM("asm/field/moves/move/rom_97b54_c_c.s");
