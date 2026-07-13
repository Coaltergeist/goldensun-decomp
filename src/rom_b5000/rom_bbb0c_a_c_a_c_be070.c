extern int Func_80b6c08(int category, unsigned short *values);

int Func_80be070(unsigned int value)
{
    unsigned short values[8];
    register unsigned int item asm("r6") = value;
    register unsigned short *base asm("r5");
    register unsigned short *cursor asm("r1");
    register int index asm("r2");
    register int difference asm("r3");
    register int count asm("r0") = 1;

    if (item > 7)
        count = 2;
    base = values;
    count = Func_80b6c08(count, base);
    index = 0;
    if (index < count && *base != item) {
        cursor = base;
        do {
            ++index;
            if (index >= count)
                break;
            ++cursor;
        } while (*cursor != item);
    }
    difference = index;
    asm volatile ("" : "+r"(difference));
    difference ^= count;
    asm volatile ("" : "+r"(difference));
    count = -difference;
    asm volatile ("" : "+r"(count), "+r"(difference));
    count |= difference;
    asm volatile ("" : "+r"(count));
    count = (unsigned int)count >> 31;
    return count;
}
