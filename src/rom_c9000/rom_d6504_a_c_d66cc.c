typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
extern u16 gBuffer[];
extern u16 ewram_2010082[];
extern u8 ewram_200fffa[];
void Func_80d66cc(void)
{
    register u16 *buf asm("r6") = gBuffer;
    register u16 blank asm("r5") = 0xfff1;
    register u16 *dst asm("r1") = ewram_2010082;
    register u8 *src asm("r4") = ewram_200fffa;
    register int i asm("r0") = 0;
    do {
        if ((unsigned)(i - 8) < 128) {
            int value = *buf - *src;
            if (value < 0) value = 0;
            if (value > 0xf0) value = 0xf0;
            *dst = value;
        } else *dst = blank;
        i++; dst++; src++;
    } while (i != 0xa0);
    {
        register volatile u16 *dma asm("r3") = (volatile u16 *)0x040000b0;
        register int mask asm("r2") = 0xc5ff;
        mask = mask & dma[5];
        dma[5] = mask;
        mask = 0x7fff;
        mask = mask & dma[5];
        dma[5] = mask;
        {
            register u32 unused asm("r2");
            register u32 sad asm("r0");
            register u32 dad asm("r1");
            register u32 cnt asm("r2");
            unused = dma[5];
            sad = (u32)ewram_2010082;
            dad = 0x04000040;
            cnt = 0xa2600001;
            asm volatile ("stmia r3!, {r0, r1, r2}\n\tsub r3, #12"
                          : "+r" (dma) : "r" (sad), "r" (dad), "r" (cnt) : "memory");
        }
    }
}
