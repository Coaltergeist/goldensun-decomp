#include "gba/types.h"

void Func_80aac84(s32 amount)
{
    register s32 zero asm("r1") = 0;
    register s32 adjustment asm("r5");
    register s32 group asm("r12");
    register s32 mask asm("r7");
    register s32 palette asm("r3");

    asm volatile("" : "+r"(zero));
    adjustment = amount;
    asm volatile("" : "+r"(adjustment));
    palette = 15;
    asm volatile("" : "+r"(palette));
    group = zero;
    asm volatile("" : "+r"(group));
    mask = 31;
    asm volatile("" : "+r"(mask));

    do {
        register s32 color asm("r6") = 0;
        register s32 paletteBase asm("r14") = palette * 16;

        do {
            register s32 index asm("r3") = paletteBase + color;
            register s32 offset asm("r0");
            register u32 packed asm("r3");
            register volatile u16 *source asm("r3");
            register u32 sourceBase asm("r1");
            register s32 blue asm("r4");
            register s32 green asm("r2");
            register s32 red asm("r1");

            asm volatile("" : "+r"(index));
            sourceBase = 0x05000000;
            asm volatile("" : "+r"(sourceBase));
            offset = index * 2;
            source = (volatile u16 *)(offset + sourceBase);
            asm volatile("" : "+r"(source));
            packed = *source;
            asm volatile("" : "+r"(packed), "+r"(mask), "+r"(offset));
            blue = (packed >> 10) & mask;
            asm volatile("" : "+r"(blue));
            green = packed >> 5;
            asm volatile("" : "+r"(green));
            red = mask;
            asm volatile("" : "+r"(red));
            green &= mask;
            asm volatile("" : "+r"(green));
            red &= packed;
            asm volatile("" : "+r"(red));
            blue += adjustment;
            green += adjustment;
            red += adjustment;

            if (blue > 31)
                blue = 31;
            if (green > 31)
                green = 31;
            if (red > 31)
                red = 31;
            if (blue < 0)
                blue = 0;
            if (green < 0)
                green = 0;
            if (red < 0)
                red = 0;

            {
                register s32 result asm("r3");
                register u32 destinationBase asm("r1");
                register volatile u16 *destination asm("r2");
                green <<= 5;
                asm volatile("" : "+r"(green));
                result = blue << 10;
                asm volatile("" : "+r"(result));
                result |= green;
                result |= red;
                asm volatile("" : "+r"(result));
                destinationBase = 0x04ffffe0;
                asm volatile("" : "+r"(destinationBase));
                color++;
                destination = (volatile u16 *)(offset + destinationBase);
                asm volatile("" : "+r"(destination));
                *destination = result;
            }
        } while (color <= 15);

        palette = 5;
        if (group != 0) {
            adjustment = 12;
            asm volatile("" : "+r"(adjustment));
            palette = 7;
            asm volatile("" : "+r"(palette));
            adjustment = -adjustment;
            asm volatile("" : "+r"(adjustment));
        }
        {
            register s32 one asm("r1") = 1;
            asm volatile("" : "+r"(one));
            group += one;
        }
    } while (group <= 2);
}
