#include "gba/types.h"

extern u8 Lb3d40[] asm(".Lb3d40");
extern u16 Lb413c[] asm(".Lb413c");

void Func_80b06ec(s32 param_1, u8 *param_2, s32 param_3)
{
    u8 *src = Lb3d40 + (param_1 << 5);
    u8 *dst = param_2 + Lb413c[param_3] + 2;
    register s32 i asm("r4") = 3;

    do {
        register u8 c asm("r2") = *src;
        register s32 cond asm("r3") = c;

        asm volatile("" : "+r"(cond));
        if (cond != 0) {
            dst[0] = c;
            src++;
            c = *src;
            cond = c;
            asm volatile("" : "+r"(cond));
            if (cond != 0) {
                dst[1] = c;
                src++;
                c = *src;
                cond = c;
                asm volatile("" : "+r"(cond));
                if (cond != 0) {
                    dst[0x1e] = c;
                    src++;
                    c = *src;
                    cond = c;
                    asm volatile("" : "+r"(cond));
                    if (cond != 0) {
                        dst[0x1f] = c;
                        src++;
                    }
                }
            }
        }
        i--;
        dst += 4;
    } while (i >= 0);
}
