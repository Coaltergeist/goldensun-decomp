extern unsigned char iwram_3001ebc[];

void Func_808bc44(void)
{
    register unsigned char *field asm("r3");
    register unsigned int offset asm("r0");
    register unsigned char *base asm("r1");
    register unsigned int zero asm("r2");

    asm volatile("ldr %0, .LFunc_808bc44_literals" : "=r"(field));
    offset = 0xb6;
    asm volatile("" : "+r"(field), "+r"(offset));
    base = *(unsigned char **)field;
    asm volatile("" : "+r"(base), "+r"(offset));
    offset <<= 1;
    asm volatile("" : "+r"(base), "+r"(offset));
    zero = 0;
    asm volatile("" : "+r"(base), "+r"(offset), "+r"(zero));

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
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".LFunc_808bc44_literals:\n"
    ".word iwram_3001ebc\n"
    ".size Func_808bc44, .-Func_808bc44\n");
