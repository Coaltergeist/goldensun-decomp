extern unsigned char gFlags[];

int GetFlag(unsigned int flag)
{
    register unsigned int result asm("r0") = flag;
    register unsigned int bit asm("r2");
    register unsigned int work asm("r3");

    work = 7;
    work &= result;
    bit = 1;
    bit <<= work;
    work = result << 20;
    result = work >> 23;
    work = (unsigned int)gFlags;
    work = *(unsigned char *)(work + result);
    work &= bit;
    result = -work;
    result |= work;
    result >>= 31;
    return result;
}

void SetFlag(unsigned int flag)
{
    register unsigned int index asm("r0") = flag;
    register unsigned char *base asm("r1");
    register unsigned int bit asm("r2");
    register unsigned int work asm("r3");

    work = 7;
    work &= index;
    bit = 1;
    asm volatile("" : "+r"(index), "+r"(bit), "+r"(work));
    base = gFlags;
    asm volatile("" : "+r"(index), "+r"(base), "+r"(bit), "+r"(work));
    bit <<= work;
    work = index << 20;
    index = work >> 23;
    work = base[index];
    bit |= work;
    base[index] = bit;
}

void ClearFlag(unsigned int flag)
{
    register unsigned int index asm("r0") = flag;
    register unsigned char *base asm("r1");
    register unsigned int bit asm("r2");
    register unsigned int work asm("r3");

    work = 7;
    work &= index;
    bit = 1;
    bit <<= work;
    asm volatile("" : "+r"(index), "+r"(bit));
    base = gFlags;
    asm volatile("" : "+r"(index), "+r"(base), "+r"(bit));
    work = index << 20;
    index = work >> 23;
    work = base[index];
    work &= ~bit;
    base[index] = work;
}
