typedef unsigned short u16;
typedef unsigned int u32;

void Func_80e727c(int red_add, int green_add, int blue_add)
{
    register u32 mask asm("r7");
    register int index asm("r6");
    register volatile u16 *color asm("r5");
    register u16 packed asm("r2");
    register int red asm("r1");
    register int green asm("r4");
    register int blue asm("r0");
    register int red_delta asm("r8");
    register int green_delta asm("lr");
    register int blue_delta asm("r12");
    register u32 expanded asm("r3");
    register u32 green_bits asm("r2");

    asm volatile("ldr %0, 2f\n\tldr %1, 1f\n\tmov r8, r0\n\tmov lr, r1\n\tmov r12, r2"
                 : "=r" (color), "=r" (mask), "=r" (red_delta),
                   "=r" (green_delta), "=r" (blue_delta));
    index = 0;

    do {
        packed = *color;
        expanded = packed << 16;
        red = expanded >> 26;
        asm volatile("" : "+r" (red), "+r" (expanded));
        red &= mask;
        asm volatile("" : "+r" (red), "+r" (expanded), "+r" (mask));
        green = expanded >> 21;
        blue = 0x1f;
        green &= mask;
        blue &= packed;
        red += red_delta;
        green += green_delta;
        blue += blue_delta;

        if (red > 0x1f)
            red = 0x1f;
        if (green > 0x1f) {
            green = 0x1f;
            asm volatile("b 3f\n\t.align 2, 0\n1:\t.word 0x1f\n2:\t.word 0x05000002\n3:");
        }
        if (blue > 0x1f)
            blue = 0x1f;

        index++;
        expanded = red << 10;
        green_bits = green << 5;
        expanded |= green_bits;
        expanded |= blue;
        *color = expanded;
        color++;
    } while (index != 0x3f);
}
