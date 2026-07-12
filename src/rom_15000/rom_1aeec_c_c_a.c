void Func_801c9c8(unsigned char *memory)
{
    register unsigned char *base asm("r0") = memory;
    register unsigned int offset asm("r1") = 0x80;
    register unsigned int zero asm("r2");
    register unsigned char *field asm("r3");

    asm volatile("" : "+r"(base), "+r"(offset));
    offset <<= 3;
    zero = 0;
    asm volatile("" : "+r"(base), "+r"(offset), "+r"(zero));

    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x34;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;
    field = base + offset;
    offset += 0x3c;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)(field + 0xa) = zero;

    field = base + offset;
    offset += 2;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)field = zero;
    field = base + offset;
    offset += 2;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)field = zero;
    field = base + offset;
    offset += 2;
    asm volatile("" : "+r"(field), "+r"(offset), "+r"(zero));
    *(unsigned short *)field = zero;
    field = base + offset;
    asm volatile("" : "+r"(field), "+r"(zero));
    *(unsigned short *)field = zero;

    field = (unsigned char *)0x57c;
    asm volatile("" : "+r"(base), "+r"(field), "+r"(zero));
    base += (unsigned int)field;
    asm volatile("" : "+r"(base), "+r"(zero));
    *(unsigned short *)base = zero;
}
