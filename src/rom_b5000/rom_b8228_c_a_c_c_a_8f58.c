typedef unsigned short u16;
typedef unsigned int u32;

extern int iwram_3001e40;
extern int cos(int angle);

void Func_80b8f58(void)
{
    register u32 initial_mask asm("r1") = 0x1f;
    register u32 mask asm("r8") = initial_mask;
    register volatile u16 *palette asm("r6") = (volatile u16 *)0x050001c0;
    register int remaining asm("r7") = 15;

    do {
        register u32 color asm("r5") = palette[16];
        int phase = iwram_3001e40;
        int brightness = (0x10000 - cos(phase * 3 * 0x400)) / 0x2aaa;
        register u32 red asm("r3") = color >> 10;
        register u32 green asm("r2");
        register u32 blue asm("r1");

        red &= mask;
        green = color >> 5;
        green &= mask;
        red += brightness;
        blue = mask;
        blue &= color;
        green += brightness;
        blue += brightness;

        if (red > 0x1f)
            red = 0x1f;
        if (green > 0x1f)
            green = 0x1f;
        if (blue > 0x1f)
            blue = 0x1f;

        remaining--;
        *palette++ = (red << 10) | (green << 5) | blue;
    } while (remaining >= 0);
}
