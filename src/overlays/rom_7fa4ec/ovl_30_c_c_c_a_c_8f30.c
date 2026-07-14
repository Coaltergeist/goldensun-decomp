extern unsigned char iwram_3001ed8[];

void OvlFunc_970_2008f30(void)
{
    unsigned int ptr;
    unsigned char idx;
    unsigned int off;
    unsigned int src;
    volatile unsigned short *dmareg;
    volatile unsigned int *bgofs;

    ptr = *(unsigned int *) iwram_3001ed8;
    idx = *(unsigned char *) (ptr + (0xf0 << 4));
    off = ((unsigned int) idx << 4) - idx;
    off <<= 7;
    src = ptr + off;

    dmareg = (volatile unsigned short *) 0x040000b0;
    {
        register unsigned short tmp asm("r4");
        tmp = dmareg[5];
        dmareg[5] = 0xc5ff & tmp;
        tmp = dmareg[5];
        dmareg[5] = 0x7fff & tmp;
    }

    bgofs = (volatile unsigned int *) 0x0400001c;
    {
        unsigned short scratch;
        unsigned int v;
        register unsigned int s asm("r0");
        register unsigned int d asm("r1");
        register unsigned int c asm("r2");
        register volatile unsigned int *p asm("r3");

        scratch = dmareg[5];
        v = *(unsigned int *) src;
        src += 4;
        *bgofs = v;
        (void) scratch;

        s = src;
        d = (unsigned int) bgofs;
        c = 0xa6600001;
        p = (volatile unsigned int *) dmareg;
        asm volatile("stmia\t%0!, {%1, %2, %3}\n\tsub\t%0, #0xc"
                     : "+r"(p) : "r"(s), "r"(d), "r"(c) : "memory");
    }
}
