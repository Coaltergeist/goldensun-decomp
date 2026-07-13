extern unsigned char iwram_3001e74[];
extern unsigned char gState[];

void Func_80c24b0(void)
{
    register unsigned int base asm("r0");
    register unsigned int block asm("r1");
    register unsigned int offset asm("r2");
    register unsigned int work asm("r3");

    work = (unsigned int)iwram_3001e74;
    offset = 0xa6;
    asm volatile ("" : "+r"(work), "+r"(offset));
    base = *(unsigned int *)work;
    offset <<= 3;
    block = base + offset;
    asm volatile ("" : "+r"(base), "+r"(block));

    work = (unsigned int)gState;
    offset = 0x8f;
    offset <<= 2;
    work += offset;
    offset = 0;
    *(unsigned short *)work = offset;
    asm volatile ("" : "+r"(work), "+r"(offset) : : "memory");
    *(unsigned int *)block = offset;
    *(unsigned int *)(block + 4) = offset;
    *(unsigned int *)(block + 8) = offset;
    asm volatile ("" : "+r"(block), "+r"(offset) : : "memory");

    block = 0x542;
    asm volatile ("" : "+r"(block));
    work = 3;
    asm volatile ("" : "+r"(block), "+r"(work));
    base += block;
    do {
        --work;
        *(unsigned short *)base = offset;
        base -= 2;
    } while ((int)work >= 0);
}
