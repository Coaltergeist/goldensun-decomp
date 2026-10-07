/* field/moves/carry.c */
#include "nonmatching.h"

extern void Func_809a65c(void);
extern int cos(int);
extern int sin(int);
extern void Func_809a484(int, int, int, int, int, int, int, int *);

INCLUDE_ASM("asm/field/moves/carry/Func_8099d18.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry_Target.s");

INCLUDE_ASM("asm/field/moves/carry/Field_Carry.s");

INCLUDE_ASM("asm/field/moves/carry/Func_809a3c4.s");

void Func_809a44c(void *arg0)
{
    unsigned char *base;
    int *r1;
    unsigned short *r0;

    base = (unsigned char *)arg0;
    *(int *)(base + 8) += *(int *)(base + 0x44);
    *(int *)(base + 0xc) += *(int *)(base + 0x48);
    *(int *)(base + 0x10) += *(int *)(base + 0x4c);
    *(int *)(base + 0x18) += *(int *)(base + 0x30);
    *(int *)(base + 0x1c) += *(int *)(base + 0x34);
    r1 = *(int **)(base + 0x50);
    r0 = (unsigned short *)(base + 0x64);
    *(short *)((char *)r1 + 0x1e) += *r0;
}

INCLUDE_ASM("asm/field/moves/carry/Func_809a484.s");

INCLUDE_ASM("asm/field/moves/carry/Func_809a65c.s");

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
