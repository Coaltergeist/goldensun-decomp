extern unsigned char ewram_2020000[];
extern unsigned char gBuffer[];

void Func_8011164(int x)
{
    unsigned short *src = (unsigned short *)(ewram_2020000 + ((x / 2 & 0x1f) * 4));
    register unsigned int r5v asm("r5");
    unsigned short *dst;
    register unsigned int i asm("r0");
    register unsigned int tile asm("r2");
    register unsigned int addr asm("r3");

    asm volatile("ldr %0, =0x6004000" : "=r"(r5v));
    dst = (unsigned short *)((x & 0x3e) + r5v);
    i = 0;

    do {
        tile = *src;
        asm volatile("ldr %0, =gBuffer" : "=r"(r5v));
        tile = tile * 4;
        addr = tile + r5v;
        asm volatile("" : "+r"(addr));
        *dst = *(unsigned short *)addr;
        r5v += 2;
        addr = tile + r5v;
        asm volatile("" : "+r"(addr));
        addr = *(unsigned short *)addr;
        asm volatile("" : "+r"(addr));
        i++;
        dst[0x20] = addr;
        dst += 0x40;
        src += 0x40;
    } while (i < 0x40);
}
