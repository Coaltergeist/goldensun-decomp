#include "gba/types.h"
#include "math.h"

extern int Func_8097a10(int a, int b);
extern fx32 Func_80008ac(fx32 num, fx32 denom);

static inline fx32 FxDiv(fx32 num, fx32 denom) {
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
}

int Func_80979a4(int param1, int param2, int param3)
{
    register int d asm("r4") = Func_8097a10(param1, 0x1680000);
    int y;

    if (d <= 0x3bffff) {
        y = fx32_multiply(param3, d);
    } else {
        if ((unsigned)(d - 0x3c0000) < 0x780000) {
            return param3;
        }
        if ((unsigned)(d - 0xb40000) > 0x3bffff) {
            goto ret_param2;
        }
        y = fx32_multiply(param3, 0xf00000 - d);
    }

    return FxDiv(0x3c0000, y);

ret_param2:
    {
        register int ret asm("r0") = param2;
        asm volatile("" : "+r"(ret));
        return ret;
    }
}
