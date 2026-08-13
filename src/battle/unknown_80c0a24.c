/* battle/unknown_80c0a24.c */
#include "nonmatching.h"

#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)
#define REG_BLDCNT (*(volatile unsigned short *)0x04000050)

static inline void MatrixResetRaw(int *dst)
{
    register int *_p __asm__("r0");
    register int _a __asm__("r1");
    register int _b __asm__("r2");
    register int _c __asm__("r3");
    register int _d __asm__("r4");

    __asm__ volatile ("" : : : "r0");
    _p = dst;
    __asm__ volatile ("" : : "r" (_p));
    _a = 0x80;
    _b = 0;
    _c = 0;
    _d = 0;
    _a <<= 9;
    __asm__ volatile (
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}\n\t"
        "stmia\tr0!, {r1, r2, r3, r4}"
        :
        : "r" (_p), "r" (_a), "r" (_b), "r" (_c), "r" (_d)
        : "r0", "memory"
    );
}

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0a24.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0be4.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0cec.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0df4.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0e38.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0e70.s");

void Func_80c0ea8(void) {
    REG_BLDCNT = 0xbf;
}

void Func_80c0eb8(int *m)
{
    int old = m[0];

    MatrixResetRaw(m);
    m[1] = old + m[0];
}

int Func_80c0edc(int x)
{
    return x / 16;
}

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0eec.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c0f98.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c1014.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c1054.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/Func_80c1084.s");

INCLUDE_ASM("asm/battle/unknown_80c0a24/rodata.s");
