#include "gba/types.h"

void Func_80b98b4(int adjustment)
{
    register int delta asm("r5");
    register int pass asm("r14");
    register int palette asm("r3");
    register int check asm("r1");
    register int mask asm("r7");
    asm volatile("mov r1, #0\n\tmov r5, r0\n\tmov r3, #15\n\tmov r14, r1\n\tmov r7, #31");
    do {
        register int base asm("r12");
        register int color asm("r6") = 0;
        palette <<= 4;
        base = palette;
        do {
            register unsigned offset asm("r0");
            register int red asm("r4");
            register int green asm("r2");
            register int blue asm("r1");
            asm volatile(
                "mov r2, r12\n\tadd r3, r2, r6\n\tmov r1, #160\n\tlsl r1, #19\n\tlsl r0, r3, #1\n\tadd r3, r0, r1\n\tldrh r3, [r3]\n\tlsr r4, r3, #10\n\tand r4, r7\n\tlsr r2, r3, #5\n\tmov r1, r7\n\tand r2, r7\n\tand r1, r3\n\tadd r4, r5\n\tadd r2, r5\n\tadd r1, r5"
                : "=r"(offset), "=r"(red), "=r"(green), "=r"(blue)
                : "r"(base), "r"(color), "r"(delta), "r"(mask)
                : "r3");
            if (red > 31) red = 31;
            if (green > 31) green = 31;
            if (blue > 31) blue = 31;
            if (red < 0) red = 0;
            if (green < 0) green = 0;
            if (blue < 0) blue = 0;
            asm volatile("lsl r2, #5\n\tlsl r3, r4, #10\n\torr r3, r2\n\torr r3, r1\n\tldr r1, =0x04ffffe0\n\tadd r6, #1\n\tadd r2, r0, r1\n\tstrh r3, [r2]"
                         : "+r"(color)
                         : "r"(offset), "r"(red), "r"(green), "r"(blue));
        } while (color <= 15);
        asm volatile("mov r2, #1\n\tadd r14, r2\n\tmov r1, r14" : "=r"(check), "+r"(pass) : : "r2");
        palette = 5;
    } while (check <= 1);
}
