typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
extern u8 *iwram_3001f2c;
extern u32 iwram_3001e40;
extern u8 xOffsets asm(".Laf294");
extern u8 yOffsets asm(".Laf29d");

void Func_80a1a40(int xOffset, int yOffset)
{
    register u8 *context asm("r5");
    register u32 *phasePtr asm("r14");
    register int phase asm("r3");
    register int seven asm("r12");
    register u8 *table asm("r2");
    register u8 *source asm("r6");
    register u8 *dest asm("r4");
    register int mask16 asm("r5");
    register int x asm("r2");
    register int y asm("r3");
    asm volatile("ldr r3, =iwram_3001f2c\n\tldr r5, [r3]\n\tldr r3, =iwram_3001e40\n\tmov r14, r3\n\tldr r3, [r3]\n\tmov r6, #7\n\tlsr r3, #1\n\tmov r12, r6\n\tand r3, r6\n\tldr r2, =.Laf294\n\tldr r6, [r5, #0x10]"
                 : "=r"(context), "=r"(phasePtr), "=r"(phase), "=r"(seven), "=r"(table), "=r"(source));
    { register int scaled asm("r3");
      x = table[phase] + xOffset;
      scaled = *(u16 *)(source + 0xc) << 3;
      dest = *(u8 **)(context + 0x14);
      x += scaled; }
    asm volatile("ldr r5, .Lmask16_80a1a40\n\tadd r2, #8\n\tldr r3, .Lmask9_80a1a40\n\tstrh r2, [r4, #6]\n\tand r2, r5\n\tldrh r0, [r4, #0x16]\n\tand r2, r3\n\tldr r3, =0xfffffe00\n\tand r3, r0\n\torr r3, r2\n\tmov r0, r14\n\tstrh r3, [r4, #0x16]\n\tldr r3, [r0]\n\tldr r2, =.Laf29d\n\tmov r0, r12\n\tlsr r3, #1\n\tand r3, r0"
                 : "=r"(phase), "=r"(table), "=r"(mask16) : "r"(phasePtr), "r"(seven), "r"(x), "r"(dest) : "r0", "memory");
    y = table[phase] + yOffset + (*(u16 *)(source + 0xe) << 3) + 8;
    *(u16 *)(dest + 8) = y;
    y &= mask16;
    dest[0x14] = y;
    asm volatile("b .Ldone80a1a40\n\t.align 2, 0\n.Lmask16_80a1a40: .word 0xffff\n.Lmask9_80a1a40: .word 0x1ff\n\t.ltorg\n.Ldone80a1a40:");
}
