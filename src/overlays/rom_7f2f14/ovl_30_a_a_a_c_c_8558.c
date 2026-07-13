extern unsigned char *iwram_3001ebc;
extern void __Func_80929d8(unsigned char *object, unsigned int value);

void OvlFunc_968_2008558(void)
{
    register unsigned char **entry asm("r5");
    register unsigned int index asm("r6");
    register int target asm("r7");
    register unsigned int value asm("r2");
    register int coordinate asm("r3");
    register unsigned int masked asm("r1");
    register unsigned char *object asm("r0");
    register unsigned char *base asm("r3");

    base = iwram_3001ebc;
    asm volatile("" : "+r"(base));
    target = 0x212;
    asm volatile("" : "+r"(base), "+r"(target));
    entry = (unsigned char **)base;
    index = 8;
    asm volatile("" : "+r"(entry), "+r"(index), "+r"(target));
    entry = (unsigned char **)((unsigned char *)entry + 0x34);
    asm volatile("" : "+r"(entry), "+r"(index), "+r"(target));
    do {
        object = *entry++;
        coordinate = (int)object + 0x64;
        value = *(unsigned short *)coordinate;
        asm volatile("" : "+r"(object), "+r"(value), "+r"(coordinate));
        coordinate = (int)(value << 16) >> 20;
        if (coordinate == target) {
            masked = 0xf;
            asm volatile("" : "+r"(object), "+r"(masked), "+r"(value));
            masked &= value;
            __Func_80929d8(object, masked);
        }
        index++;
    } while (index <= 0x41);
}
