/* field/moves/frost.c */
#include "nonmatching.h"

extern unsigned char iwram_3001e40[];
extern void _Actor_SetColorswap(unsigned int, unsigned int);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

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

INCLUDE_ASM("asm/field/moves/frost/Func_8099070.s");

INCLUDE_ASM("asm/field/moves/frost/Func_80990cc.s");

INCLUDE_ASM("asm/field/moves/frost/Field_Frost_Target.s");

INCLUDE_ASM("asm/field/moves/frost/Field_Frost.s");
