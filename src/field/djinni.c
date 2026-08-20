/* field/djinni.c -- djinni-get table + supporting field tasks. */
#include "nonmatching.h"

INCLUDE_ASM("asm/field/djinni/Func_8095938.s");
INCLUDE_ASM("asm/field/djinni/GetJupiterDjinni.s");
INCLUDE_ASM("asm/field/djinni/Func_8095b8c.s");

extern void _DeleteActor(void);

void Func_8095bac(unsigned int arg0)
{
    short *p;
    unsigned int v2;
    unsigned short v3;

    p = (short *)((char *)arg0 + 0x64);
    v2 = (unsigned int)((*p * 5) << 4);
    v3 = *(unsigned short *)((char *)arg0 + 6);
    *(unsigned short *)((char *)arg0 + 6) = v3 + v2 + 0x1000;
    if (v2 < 0x1000)
        (*(unsigned short *)p)++;
}
void Func_8095bd8(unsigned char *p)
{
    int v1c;
    int v18;
    unsigned short v6;

    v1c = *(int *)(p + 0x1c) + (int)0xfffffe40;
    v18 = *(int *)(p + 0x18) + (int)0xfffffe40;
    *(int *)(p + 0x1c) = v1c;
    v6 = *(unsigned short *)(p + 6) + (0x80 << 6);
    *(unsigned short *)(p + 6) = v6;
    *(int *)(p + 0x18) = v18;
    if (v18 < (0xc0 << 6))
        _DeleteActor();
}

INCLUDE_ASM("asm/field/djinni/Func_8095c08.s");
INCLUDE_ASM("asm/field/djinni/GetMarsDjinni.s");


void Func_8095f9c(unsigned char *p)
{
    int v1c;
    int v18;
    unsigned short h6;
    int limit;

    v1c = *(int *)(p + 0x1c) - 0x400;
    v18 = *(int *)(p + 0x18) - 0x400;
    *(int *)(p + 0x1c) = v1c;
    h6 = *(unsigned short *)(p + 6) + (0x80 << 6);
    *(unsigned short *)(p + 6) = h6;
    limit = 0xc0 << 6;
    *(int *)(p + 0x18) = v18;
    if (v18 < limit)
        _DeleteActor();
}

INCLUDE_ASM("asm/field/djinni/Func_8095fcc.s");
INCLUDE_ASM("asm/field/djinni/Func_8096048.s");
INCLUDE_ASM("asm/field/djinni/GetVenusDjinni.s");
INCLUDE_ASM("asm/field/djinni/Func_809641c.s");

void Func_8096574(int *p)
{
  int *new_var3;
  int new_var2;
  int *r4 = ((int **) p)[26];
  int cur;
  int new_var;
  int diff;
  unsigned char sign;
  cur = p[2];
  new_var2 = 31;
  diff = r4[2] - cur;
  sign = ((unsigned int) diff) >> 31;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[2] = cur;
  new_var3 = &diff;
  cur = p[3];
  diff = r4[3] - cur;
  sign = ((unsigned int) (*new_var3)) >> 31;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[3] = cur;
  cur = (new_var = p[4]);
  diff = r4[4] - cur;
  sign = ((unsigned int) diff) >> new_var2;
  diff = (diff + sign) >> 1;
  cur += diff;
  p[4] = cur;
}

INCLUDE_ASM("asm/field/djinni/GetMercuryDjinni.s");
