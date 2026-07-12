extern unsigned char gFlags[];

unsigned int GetFlagByte(unsigned int flag)
{
    register unsigned int shifted asm("r3") = flag;
    register unsigned char *flags asm("r3");

    shifted <<= 20;
    flag = shifted >> 23;
    flags = gFlags;
    asm volatile("" : "+r"(flag), "+r"(flags));
    return flags[flag];
}

void SetFlagByte(unsigned int flag, unsigned int value)
{
    register unsigned int shifted asm("r3") = flag;
    register unsigned char *flags asm("r3");

    shifted <<= 20;
    flag = shifted >> 23;
    flags = gFlags;
    asm volatile("" : "+r"(flag), "+r"(flags));
    flags[flag] = value;
}

unsigned int IncFlagByte(unsigned int flag)
{
    register unsigned int work asm("r3") = flag;
    register unsigned char *flags asm("r1");
    register unsigned int value asm("r2");

    work <<= 20;
    flags = gFlags;
    asm volatile("" : "+r"(work), "+r"(flags));
    flag = work >> 23;
    value = flags[flag];
    work = value;
    asm volatile("" : "+r"(work), "+r"(value), "+r"(flag), "+r"(flags));
    if (work <= 0xfe) {
        work = value + 1;
        flags[flag] = work;
    }
    return flags[flag];
}

unsigned int DecFlagByte(unsigned int flag)
{
    register unsigned int work asm("r3") = flag;
    register unsigned char *flags asm("r1");
    register unsigned int value asm("r2");

    work <<= 20;
    flags = gFlags;
    asm volatile("" : "+r"(work), "+r"(flags));
    flag = work >> 23;
    value = flags[flag];
    work = value;
    asm volatile("" : "+r"(work), "+r"(value), "+r"(flag), "+r"(flags));
    if (work != 0) {
        work += 0xff;
        flags[flag] = work;
    }
    return flags[flag];
}

int GetFlagNybble(unsigned int flag)
{
    register unsigned int work asm("r3") = flag;
    register unsigned int shift asm("r1") = 4;
    register unsigned int mask asm("r2");
    register unsigned int result asm("r0");
    register unsigned char *flags asm("r3");

    work <<= 20;
    shift &= flag;
    result = work >> 23;
    flags = gFlags;
    asm volatile("" : "+r"(result), "+r"(flags), "+r"(shift));
    mask = 0xf;
    asm volatile("" : "+r"(result), "+r"(flags), "+r"(mask), "+r"(shift));
    result = flags[result];
    mask <<= shift;
    result &= mask;
    return (int)result >> shift;
}
