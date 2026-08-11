/* field/moves/carry.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/moves/carry/rom_9a44c_a_a.s");

extern void Func_809a65c(void);
extern int cos(int);
extern int sin(int);
extern void Func_809a484(int, int, int, int, int, int, int, int *);

void Func_809a6b8(unsigned int arg0)
{
  int s[10];
  int a[3];
  unsigned int r7;
  int theta;
  int *p;
  s[1] = 0;
  s[9] = (int) Func_809a65c;
  s[2] = 0xcccc;
  s[3] = 0xcccc;
  r7 = 0;
  do
  {
    theta = r7 << 12;
    a[0] = (cos(theta) * 3) / 2;
    a[1] = 0;
    a[2] = sin(theta);
    p = (int *) arg0;
    Func_809a484(p[2], p[3], p[4], a[0], a[1], a[2], 0x1090001, s);
    r7++;
  }
  while (r7 <= 0x10);
}

INCLUDE_ASM("asm/field/moves/carry/rom_9a44c_a_c.s");

extern void _Actor_SetPos();

void Func_809a890(unsigned int arg0)
{
    int r3;
    r3 = *(int *)(arg0 + 0x18);
    r3 -= 0x80;
    *(int *)(arg0 + 0x1c) = r3;
    *(int *)(arg0 + 0x18) = r3;
    if (r3 < (0x80 << 8)) {
        _Actor_SetPos(arg0, 0, 0, 0);
        *(int *)(arg0 + 0x6c) = 0;
    }
}

extern void Field_Whirlwind(void);

void Field_Whirlwind_Target(void) {
    Field_Whirlwind();
}

INCLUDE_ASM("asm/field/moves/carry/rom_9a44c_c_c_a.s");

extern unsigned char **iwram_3001f30;
extern void Field_Halt(void);

void Field_Halt_Target(void) {
    unsigned char *p;

    p = iwram_3001f30[5];
    p[0x5b] = 1;
    Field_Halt();
}

INCLUDE_ASM("asm/field/moves/carry/rom_9a44c_c_c_c.s");
