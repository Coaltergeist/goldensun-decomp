#include "gba/types.h"

extern void Func_802281c(void *args);
extern void _Func_80c10e8(void *args, int value);

void Func_80270ac(void)
{
    register u32 tail asm("r9");
    u16 args[4];

    *(u32 *)&args[2] = tail;
    args[0] = 0xff;
    Func_802281c(args);
    _Func_80c10e8(args, 1);
}
