typedef signed char s8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned char u8;

extern u8 *iwram_3001ed0;
extern s16 frameCounter asm(".L525c");
extern u16 sequenceIndex asm(".L5260");
extern s8 s8_ARRAY_932__0200bd28[];

void OvlFunc_932_200b9c8(void)
{
    register u8 *palette asm("r6");
    register s16 *counter asm("r4");
    register int counterValue asm("r3");
    asm volatile("ldr r3, =iwram_3001ed0\n\tldr r4, =.L525c\n\tldr r6, [r3]\n\tmov r2, #0\n\tldrsh r3, [r4, r2]"
                 : "=r"(palette), "=r"(counter), "=r"(counterValue) : : "r2");
    if (counterValue <= 0) {
        register u16 *sequence asm("r1");
        register s8 *values asm("r5");
        register int color asm("r0");
        register int next asm("r2");
        register int minusOne asm("r3");
retry:
        asm volatile(".Lretry932:\n\tldr r1, =.L5260\n\tldrh r3, [r1]\n\tldr r5, =s8_ARRAY_932__0200bd28\n\tadd r2, r3, #1\n\tlsl r3, #16\n\tasr r3, #16\n\tldrsb r0, [r5, r3]\n\tmov r3, #1\n\tneg r3, r3\n\tstrh r2, [r1]"
                     : "=r"(sequence), "=r"(values), "=r"(color), "=r"(next), "=r"(minusOne) : : "memory");
        asm volatile("cmp r0, r3\n\tbne .Lafter932\n\tldr r3, .Lzero932\n\tstrh r3, [r1]\n\tb .Lretry932\n\t.align 2, 0\n.Lzero932: .word 0\n\t.ltorg\n.Lafter932:"
                     : : "r"(color), "r"(minusOne), "r"(sequence) : "memory");
        asm volatile("add r3, r2, #1\n\tstrh r3, [r1]\n\tlsl r3, r2, #16\n\tasr r3, #16\n\tldrsb r3, [r5, r3]\n\tldr r4, =.L525c\n\tlsl r0, #1\n\tstrh r3, [r4]\n\tadd r0, r6, r0\n\tldr r3, =0x040000d4\n\tldr r1, =0x05000006\n\tldr r2, =0x80000009\n\tstmia r3!, {r0, r1, r2}\n\tsub r3, #0xc"
                     : : "r"(palette), "r"(sequence), "r"(values), "r"(color), "r"(next) : "r1", "r2", "r3", "memory");
    }
    (*counter)--;
}
