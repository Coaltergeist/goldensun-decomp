/*
 * Remaining diff vs target OvlFunc_970_2008f80 (exact 0x154 size and all 9 pool entries match):
 * - In `include/math.h`, `fx32_multiply(a, b)` is a `static inline` function rather than a
 *   statement-expression macro, so argument `a` (`Lm970_14c8[(acc >> 16) & 0xff]`) is evaluated
 *   before `fxmul = Func_8000888`. That causes `loop.c` to hoist `#255` before `Func_8000888`
 *   (swapping their reload scratch regs `r3`/`r0`) and shortens `fxmul`'s live_length by 5 insns
 *   (`38` vs `scale`'s `46`), swapping `lr` and `r8` between `scale` and `fxmul` in `global.c`.
 */
#include "math.h"

struct Wave970 {
    short buf[2][0x1e0][2];
    unsigned char page;
    unsigned char flag;
    unsigned short timer;
    unsigned char pad2[4];
    int val_f08;
    int val_f0c;
    int val_f10;
    int val_f14;
    int val_f18;
    int val_f1c;
};

extern struct Wave970 *gWave970 __asm__("iwram_3001ed8");
extern short iwram_3001ad0[];
extern short Lm970_14c8[] __asm__(".Lm970_14c8");

void OvlFunc_970_2008f80(void)
{
    struct Wave970 *base;
    int offset2;
    short *out;
    int step;
    int acc;
    int scale;
    unsigned int offset1;
    int i;

    base = gWave970;
    offset2 = iwram_3001ad0[7];

    out = &base->buf[base->page ^ 1][0][0];
    step = base->val_f10;
    acc = (base->timer + (unsigned short)offset2) * base->val_f08;
    scale = base->val_f18;
    offset1 = (unsigned short)iwram_3001ad0[6];

    for (i = 0; i != 160; i++) {
        int s = (unsigned short)(fx32_multiply(Lm970_14c8[(acc >> 16) & 0xff], scale) / 256) + offset1;
        *out = s;
        acc += step;
        out += 2;
    }

    out = &base->buf[base->page ^ 1][0][1];
    step = base->val_f14;
    acc = (base->timer + (unsigned short)offset2) * base->val_f0c;
    scale = base->val_f1c;

    for (i = 0; i != 160; i++) {
        int s = (unsigned short)(fx32_multiply(Lm970_14c8[(acc >> 16) & 0xff], scale) / 256) + (unsigned short)offset2;
        *out = s;
        acc += step;
        out += 2;
    }

    base->timer++;
    base->page ^= 1;
}
