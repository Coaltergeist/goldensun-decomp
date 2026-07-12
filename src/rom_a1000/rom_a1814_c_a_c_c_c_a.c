extern unsigned char iwram_3001f2c[];

void Func_80a3480(void)
{
    register unsigned char *base asm("r3");
    register int marker asm("r2");
    register unsigned char **entry asm("r7");
    register int i asm("r6");
    register int savedMarker asm("r8");
    register unsigned char *value asm("r5");

    base = *(unsigned char **)iwram_3001f2c;
    asm volatile("" : "+r"(base));
    marker = 0xd;
    asm volatile("" : "+r"(base), "+r"(marker));
    entry = (unsigned char **)base;
    asm volatile("" : "+r"(entry), "+r"(marker));
    i = 0;
    asm volatile("" : "+r"(entry), "+r"(i), "+r"(marker));
    savedMarker = marker;
    asm volatile("" : "+r"(entry), "+r"(i), "+r"(savedMarker));
    entry = (unsigned char **)((unsigned char *)entry + 0x48);
    asm volatile("" : "+r"(entry), "+r"(i), "+r"(savedMarker));

    do {
        value = *entry++;
        if (value != 0 && i % 5 == 0)
            value[5] = savedMarker;
        i++;
    } while (i <= 0x1f);
}
