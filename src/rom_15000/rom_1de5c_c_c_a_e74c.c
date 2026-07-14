typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern void BufferString(int text_id, int mode);
extern void Func_8017aa4(u16 *text, int destination, int x, int y);

void DrawSmallText(int text_id, int destination, int x, int y)
{
    register u8 *state asm("r5");
    register u16 *cursor asm("r6");
    register u16 zero asm("r8");
    register int saved_destination asm("r10");
    register int saved_x asm("r9");
    register int saved_y asm("r11");

    asm volatile (
        "mov r11, r3\n\tldr r3, 2f\n\tmov r9, r2\n\tldr r5, [r3]\n\t"
        "ldr r2, 3f\n\tmov r3, #0\n\tmov r8, r3\n\tadd r6, r5, r2\n\t"
        "mov r2, r8\n\tmov r10, r1\n\tstrh r2, [r6]"
        : "=r" (state), "=r" (zero), "=r" (cursor),
          "=r" (saved_destination), "=r" (saved_x), "=r" (saved_y)
        : "r" (destination) : "r2", "r3", "memory");
    BufferString(text_id, 1);
    asm volatile (
        "ldrh r3, [r6]\n\tmov r1, #0xeb\n\tlsl r1, #4\n\t"
        "lsl r3, #1\n\tadd r3, r1\n\tmov r2, r8\n\t"
        "strh r2, [r5, r3]"
        : : "r" (cursor), "r" (state), "r" (zero)
        : "r1", "r2", "r3", "memory");
    asm volatile (
        "ldrh r3, [r6]\n\tldr r2, 1f\n\tadd r3, #1\n\t"
        "and r3, r2\n\tadd r5, r1\n\tstrh r3, [r6]"
        : "+r" (state) : "r" (cursor) : "r2", "r3", "memory");
    Func_8017aa4((u16 *)state, saved_destination, saved_x, saved_y);
    asm volatile (
        "b 4f\n\t.align 2, 0\n"
        "1:\n\t.word 0x1ff\n"
        "2:\n\t.word iwram_3001e8c\n"
        "3:\n\t.word 0x12b2\n"
        "4:");
}
