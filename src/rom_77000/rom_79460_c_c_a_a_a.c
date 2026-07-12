extern unsigned char gState[];
extern unsigned char Data_84a8c[] asm(".L84a8c");
extern unsigned int *Func_8077330(int index);

int Func_8079754(int delta)
{
    register int result asm("r0") = delta;
    register int value asm("r2");
    register unsigned int field asm("r3");

    field = (unsigned int)gState;
    value = 0x8e;
    value <<= 1;
    field += value;
    value = 0;
    value = *(signed char *)(field + value);
    value += result;
    if (value > 0x1c)
        value = 0x1c;
    if (value < 0)
        value = 0;
    *(unsigned char *)field = value;
    result = value;
    return result;
}

int Func_807977c(unsigned char *output)
{
    int savedCount;
    register unsigned int *flags asm("r0");
    register int count asm("r1");
    register unsigned int mask asm("r2");
    register unsigned int work asm("r3");
    register unsigned char *destination asm("r5");
    register unsigned int flag asm("r6");
    register unsigned char *source asm("r7") = Data_84a8c;
    register unsigned int one asm("r8");
    register unsigned char *end asm("r10");

    end = source + 0xf;
    work = 1;
    asm("" : "+r"(work));
    asm volatile("" : "=m"(savedCount) : "r"(work));
    destination = output;
    asm("" : "+r"(destination) : "r"(work));
    count = 0;
    asm("" : "+r"(work) : "r"(destination), "r"(count));
    one = work;
    asm volatile("" : "+r"(destination), "+r"(count), "+r"(one));
    do {
        flags = 0;
        asm volatile("" : "+r"(flags), "+r"(count), "+r"(source));
        flag = *source;
        asm volatile("" : "+r"(flags), "+r"(count), "+r"(flag), "+r"(source));
        savedCount = count;
        asm volatile("" : "+m"(savedCount));
        flags = Func_8077330((int)flags);
        mask = one;
        work = *flags;
        mask <<= flag;
        work &= mask;
        source++;
        asm volatile("" : "+m"(savedCount));
        count = savedCount;
        if (work != 0) {
            *destination = flag;
            count++;
            destination++;
        }
    } while (source <= end);
    *destination = 0x20;
    return count;
}
