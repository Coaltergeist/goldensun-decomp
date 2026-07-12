extern unsigned char gState[];
extern unsigned char gScript_887__02009ca4[];
extern int __GetFlag(int flag);

unsigned char *OvlFunc_967_20084b0(void)
{
    register unsigned char *stateField asm("r3");
    register int offset asm("r1");
    register int map asm("r2");
    register int expectedMap asm("r3");
    register int flag asm("r0");
    register unsigned char *script asm("r0");

    asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals"
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
    asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+4"
                 : "=r"(expectedMap));
    asm volatile("" : "+r"(map), "+r"(expectedMap));

    if (map == expectedMap) {
        asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+8"
                     : "=r"(flag));
        if (__GetFlag(flag)) {
            asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+12"
                         : "=r"(script));
            return script;
        }
        asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+16"
                     : "=r"(script));
        return script;
    }
    asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+8"
                 : "=r"(flag));
    if (__GetFlag(flag)) {
        asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+20"
                     : "=r"(script));
        return script;
    }
    asm volatile("ldr %0, .LOvlFunc_967_20084b0_literals+24"
                 : "=r"(script));
    return script;
}

/* Preserve Camelot's literal order and the residual TU's local data offsets. */
asm(
    ".section .data\n"
    ".LOvlFunc_967_data_base:\n"
    ".text\n"
    ".align 2, 0\n"
    ".LOvlFunc_967_20084b0_literals:\n"
    ".word gState\n"
    ".word 0xb4\n"
    ".word 0x9a7\n"
    ".word .LOvlFunc_967_data_base+0xcfc\n"
    ".word .LOvlFunc_967_data_base+0xba0\n"
    ".word gScript_887__02009ca4\n"
    ".word .LOvlFunc_967_data_base+0x780\n"
    ".size OvlFunc_967_20084b0, .-OvlFunc_967_20084b0\n");
