typedef unsigned short u16;
extern void WaitFrames(int) asm("__WaitFrames");

void OvlFunc_924_200ae08(void)
{
    register int mask asm("r6");
    register u16 *palette asm("r0");
    register int zero_count asm("r5");
    register unsigned i asm("r4");

    asm volatile ("ldr r6, .Lfade_mask" : "=r" (mask));
    do {
        asm volatile ("ldr r0, .Lfade_palette" : "=r" (palette));
        zero_count = 0;
        i = 0;
        do {
            register int packed asm("r3") = *(volatile u16 *)palette;
            register int red asm("r1") = 0x1f;
            register int green asm("r2");
            register int blue asm("r3");
            red &= packed;
            asm volatile ("" : "+r" (red) : : "memory");
            asm volatile ("ldrh r3, [r0]\nlsr r2, r3, #5"
                          : "=r" (green) : "r" (palette) : "r3", "memory");
            asm volatile ("" : "+r" (green) : : "memory");
            blue = *(volatile u16 *)palette;
            blue >>= 10;
            green &= mask;
            blue &= mask;
            if (red > 0) red--;
            asm volatile (
                "cmp r2, #0\nble 1f\nsub r2, #1\nb 1f\n"
                ".align 2, 0\n.Lfade_mask: .word 0x1f\n"
                ".Lfade_palette: .word 0x50000c2\n1:"
                : "+r" (green));
            if (blue > 0) blue--;
            *palette = (blue << 10) | (green << 5) | red;
            if (*palette == 0) zero_count++;
            i++;
            palette++;
        } while (i <= 6);
        WaitFrames(5);
    } while (zero_count != 7);
}
