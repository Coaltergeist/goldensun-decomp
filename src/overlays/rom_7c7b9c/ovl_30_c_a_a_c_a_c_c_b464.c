extern unsigned int __GetFlag(unsigned int flag);
extern const unsigned int gOvl943FlagResults[];

unsigned int OvlFunc_943_200b464(unsigned int group)
{
    register unsigned int flag asm("r6") = 0;
    register unsigned int i asm("r5");
    register unsigned int offset asm("r2");
    register const unsigned char *base asm("r3");

    switch (group) {
    case 0:
        flag = 0x92c;
        break;
    case 1:
        flag = 0x935;
        break;
    case 2:
        flag = 0x917;
        break;
    case 3:
        flag = 0x990;
        break;
    }

    i = 0;
    do {
        if (__GetFlag(flag + i)) {
            base = (const unsigned char *)gOvl943FlagResults;
            asm volatile("" : "+r"(base));
            offset = i << 2;
            asm volatile("" : "+r"(offset));
            return *(const unsigned int *)(base + offset);
        }
        i++;
    } while (i <= 8);

    return 0;
}
