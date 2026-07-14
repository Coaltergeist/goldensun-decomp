#include "gba/types.h"
#include "math.h"

extern fx32 Func_80008ac(fx32 num, fx32 denom);

static inline fx32 FxDiv(fx32 num, fx32 denom) {
    fx32 (*divide)(fx32, fx32) = Func_80008ac;
    return divide(num, denom);
}

int Func_8097a10(int a, int b)
{
    if (b == 0) {
        return 0;
    }
    if (b & 0xf0000000) {
        b = -b;
    }
    return a - fx32_multiply(FxDiv(b, a) & 0xffff0000, b);
}
