unsigned char *Func_80b606c(int unused0, int unused1, const unsigned short *source)
{
    unsigned char text[5];
    register unsigned char *base asm("r5");
    register unsigned char *write asm("r0");
    register unsigned char *replace asm("r4");
    register int remaining asm("r1");
    register int replacement asm("r6");

    base = text;
    asm volatile ("" : : "r" (base));
    replacement = '_';
    asm volatile ("" : : "r" (replacement));
    replace = base;
    asm volatile ("" : : "r" (replace));
    write = base;
    asm volatile ("" : : "r" (write));
    remaining = 3;
    asm volatile ("" : : "r" (remaining));

    do {
        unsigned int value = *source++;
        *write++ = value;
        if ((value << 24) == 0) {
            *replace = replacement;
        }
        remaining--;
        replace++;
    } while (remaining >= 0);
    base[4] = 0;
    asm volatile ("" : : "r" (base) : "memory");
    return write;
}
