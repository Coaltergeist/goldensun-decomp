extern unsigned char gState[];
extern unsigned char Lba8[] asm(".Lba8");
extern unsigned char Lc98[] asm(".Lc98");
extern unsigned char gOvl_02008c50[];
extern unsigned char Lb90[] asm(".Lb90");
extern int __GetFlag(int flag);

unsigned char *OvlFunc_963_200808c(void)
{
    register unsigned char *stateField asm("r3");
    register int offset asm("r1");
    register int map asm("r2");
    register int expectedMap asm("r3");
    register int flag asm("r0");
    register unsigned char *script asm("r0");

    asm volatile("ldr %0, .LOvlFunc_963_200808c_literals"
                 : "=r"(stateField));
    offset = 0xe0;
    asm volatile("" : "+r"(stateField), "+r"(offset));
    offset <<= 1;
    asm volatile("" : "+r"(stateField), "+r"(offset));
    stateField += offset;
    asm volatile("" : "+r"(stateField));
    offset = 0;
    asm volatile("" : "+r"(stateField), "+r"(offset));
    map = *(short *)(stateField + offset);

    asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+4"
                 : "=r"(expectedMap));
    if (map == expectedMap) {
        asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+8"
                     : "=r"(script));
        return script;
    }

    asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+12"
                 : "=r"(expectedMap));
    if (map == expectedMap) {
        asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+16"
                     : "=r"(flag));
        if (__GetFlag(flag)) {
            asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+20"
                         : "=r"(script));
            return script;
        }
        asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+24"
                     : "=r"(script));
        return script;
    }

    asm volatile("ldr %0, .LOvlFunc_963_200808c_literals+28"
                 : "=r"(script));
    return script;
}

/* Preserve Camelot's literal order while keeping the selection logic in C. */
asm(
    ".text\n"
    ".align 2, 0\n"
    ".LOvlFunc_963_200808c_literals:\n"
    ".word gState\n"
    ".word 0xaa\n"
    ".word .Lba8\n"
    ".word 0xa9\n"
    ".word 0x96f\n"
    ".word .Lc98\n"
    ".word gOvl_02008c50\n"
    ".word .Lb90\n"
    ".size OvlFunc_963_200808c, .-OvlFunc_963_200808c\n");
