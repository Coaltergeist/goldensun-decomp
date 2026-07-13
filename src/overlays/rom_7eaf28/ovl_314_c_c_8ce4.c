typedef unsigned short u16;
typedef unsigned int u32;

extern u32 iwram_3001e40;

void OvlFunc_960_2008ce4(void)
{
    register u32 work asm("r3") = iwram_3001e40;
    register u32 value asm("r2");

    asm volatile("" : "+r"(work));
    value = 0x3f;
    asm volatile("" : "+r"(work), "+r"(value));
    work &= value;
    work <<= 16;
    value = work >> 16;
    asm volatile("" : "+r"(work), "+r"(value));
    if (value > 0x1f) {
        work = ((u16)(0x40 - value)) << 16;
    }
    work >>= 17;
    work += 7;
    {
        register u32 green asm("r1") = work << 5;
        register u32 blue asm("r2") = work << 10;
        register volatile u16 *palette asm("r2");

        asm volatile("" : "+r"(green), "+r"(blue), "+r"(work));
        blue |= green;
        work |= blue;
        work <<= 16;
        palette = (volatile u16 *)0x0500019e;
        work >>= 16;
        asm volatile("" : "+r"(palette), "+r"(work));
        *palette = work;
    }
}
