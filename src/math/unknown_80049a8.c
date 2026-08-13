/* math/unknown_80049a8.c */
#include "nonmatching.h"
#include "gba/types.h"
#include "dma.h"
#include "math.h"

#define MatrixResetRaw(_m) \
    __asm__ volatile( \
        "mov r0, %0\n\t" \
        "mov r1, #0x80\n\t" \
        "mov r2, #0\n\t" \
        "mov r3, #0\n\t" \
        "mov r4, #0\n\t" \
        "lsl r1, r1, #9\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        "stmia r0!, {r1-r4}\n\t" \
        : \
        : "l" (_m) \
        : "r0","r1","r2","r3","r4", "memory" \
    ); \

#define FX_ONE 0x00010000  /* 1.0 in 16.16 */
#define fx_reciprocal(_x) FastDivide(0x80000000, _x)

void Func_80049a8(void) {}
