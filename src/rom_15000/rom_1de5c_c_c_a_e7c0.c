typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern void BufferString(int textId, int mode);
extern void Func_801de5c(u8 *text, u16 *tilemap, u16 *vram, int subpixel);

void Func_801e7c0(int textId, u8 *box, u32 x, u32 y)
{
    register u8 *state asm("r7");
    register u8 *target asm("r10");
    register u32 drawX asm("r9");
    register u32 drawY asm("r6");
    register int zero asm("r8");
    register u16 *cursor asm("r5");

    asm volatile("mov r6, r3\n\tldr r3, =iwram_3001e8c\n\t"
                 "mov r10, r1\n\tldr r7, [r3]\n\tmov r9, r2\n\t"
                 "ldr r1, =0x12b2\n\tmov r2, #0\n\tmov r8, r2\n\t"
                 "add r5, r7, r1\n\tmov r3, r8\n\tstrh r3, [r5]"
                 : "=r"(drawY), "=r"(target), "=r"(state),
                   "=r"(drawX), "=r"(zero), "=r"(cursor));
    BufferString(textId, 1);
    asm volatile("ldrh r3, [r5]\n\tmov r4, #0xeb\n\tlsl r4, #4\n\t"
                 "lsl r3, #1\n\tadd r3, r4\n\tmov r0, r8\n\t"
                 "strh r0, [r7, r3]\n\tldrh r3, [r5]\n\t"
                 "ldr r2, .LFunc801e7c0_mask\n\tadd r3, #1\n\t"
                 "and r3, r2\n\tstrh r3, [r5]"
                 : : "r"(cursor), "r"(state), "r"(zero)
                 : "r0", "r2", "r3", "r4", "memory");

    {
        register u32 offset asm("r3");
        register u32 check asm("r1");
        register u32 limit asm("r0");
        asm volatile("mov r1, r10\n\tldrh r3, [r1, #0xe]\n\t"
                     "lsr r6, #3\n\tldrh r2, [r1, #0xc]\n\t"
                     "add r3, r6\n\tmov r4, r9\n\tlsr r1, r4, #3\n\t"
                     "add r3, #1\n\tadd r2, r1\n\tlsl r3, #5\n\t"
                     "add r3, r2\n\tmov r0, #0xa0\n\tadd r1, r3, #1\n\t"
                     "lsl r0, #2"
                     : "=r"(offset), "=r"(check), "=r"(limit),
                       "+r"(drawY)
                     : "r"(target), "r"(drawX) : "r2", "r4");
        if (check < limit) {
            asm volatile(
                "ldr r3, =0x6002000\n\tmov r4, #0xeb\n\t"
                "lsl r1, #1\n\tlsl r4, #4\n\t"
                "add r2, r1, r3\n\tadd r0, r7, r4\n\t"
                "b .LFunc801e7c0_call\n\t.align 2\n"
                ".LFunc801e7c0_mask: .word 0x1ff\n\t.pool\n"
                ".LFunc801e7c0_call:\n\tmov r3, #7\n\tmov r4, r9\n\t"
                "add r1, r7, r1\n\tand r3, r4\n\tbl Func_801de5c"
                : : "r"(check), "r"(state), "r"(drawX), "r"(offset)
                : "r0", "r1", "r2", "r3", "r4", "memory");
        }
    }
}
