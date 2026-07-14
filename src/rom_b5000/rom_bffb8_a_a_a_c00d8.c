typedef unsigned int (*FillVram)(unsigned int address, unsigned int size,
                                  unsigned int value);

extern unsigned int Func_80008d8(void);
extern unsigned char ewram_2010200;

void Func_80c00d8(unsigned int address)
{
    register unsigned int a0 asm("r0") = address;
    register unsigned int size asm("r1") = 0x80;
    register unsigned int value asm("r2") = 1;
    register FillVram fill asm("r5") = (FillVram)Func_80008d8;
    register unsigned int base asm("r6");
    register unsigned int off asm("r3");
    register unsigned int i asm("r3");
    register unsigned int *p asm("r6");
    register FillVram fill2 asm("r3");

    size <<= 1;
    value = -value;
    base = a0;
    asm volatile("" : "+r"(a0), "+r"(size), "+r"(value), "+r"(fill), "+r"(base));
    fill(a0, size, value);

    off = 0x80;
    off <<= 1;
    base += off;
    a0 = base;
    size = 0x80;
    value = 0x3ff03ff;
    asm volatile("" : "+r"(a0), "+r"(size), "+r"(value), "+r"(fill), "+r"(base));
    fill(a0, size, value);

    value = (unsigned int)&ewram_2010200;
    asm volatile("" : "+r"(value));
    size = 0x20002;
    asm volatile("" : "+r"(size));
    base += 0x80;
    asm volatile("" : "+r"(base));
    p = (unsigned int *)base;
    i = 0;
    asm volatile("" : "+r"(value), "+r"(size), "+r"(i), "+r"(p));
    do {
        i++;
        *p++ = value;
        value += size;
    } while (i <= 0xef);
    base = (unsigned int)p;

    size = 0xa0;
    fill2 = (FillVram)Func_80008d8;
    a0 = base;
    size <<= 2;
    value = 0x3ff03ff;
    asm volatile("" : "+r"(a0), "+r"(size), "+r"(value), "+r"(fill2));
    fill2(a0, size, value);
}
