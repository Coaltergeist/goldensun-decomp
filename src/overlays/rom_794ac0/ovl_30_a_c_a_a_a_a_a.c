/* OvlFunc_899_2008048 extracted from asm/overlays/rom_794ac0/ovl_30_a_c_a_a_a_a.s. */
typedef struct { unsigned char bytes[704]; } GlobalState;

extern GlobalState gState;
extern unsigned char L5cc8[] __asm__(".L5cc8");
extern unsigned char L5ab8[] __asm__(".L5ab8");
extern void __Func_808b868(unsigned int script);

unsigned int OvlFunc_899_2008048(void)
{
    unsigned int stateAddress;
    unsigned int offset;
    register int mapIndex asm("r3");
    register unsigned int selectedScript asm("r5");

    stateAddress = (unsigned int)&gState;
    offset = 0xe1;
    offset <<= 1;
    stateAddress += offset;
    offset = 0;
    mapIndex = *(short *)((char *)stateAddress + offset);

    /* Preserve Camelot's signed range branches instead of GCC's <= 14 rewrite. */
    asm volatile(
        "cmp %1, #17\n\t"
        "bgt 1f\n\t"
        "cmp %1, #15\n\t"
        "blt 1f\n\t"
        "ldr %0, =.L5cc8\n\t"
        "b 2f\n"
        "1:\n\t"
        "ldr %0, =.L5ab8\n"
        "2:"
        : "=r"(selectedScript)
        : "r"(mapIndex)
        : "cc");

    __Func_808b868(selectedScript);
    return selectedScript;
}

/* Include the inline-asm literal pool in the original function's symbol size. */
asm(".pool\n\t.size OvlFunc_899_2008048, . - OvlFunc_899_2008048");
