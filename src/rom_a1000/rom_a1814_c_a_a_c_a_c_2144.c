#include "dma.h"

void Func_80a2144(int palette_index)
{
    register u16 *palette asm("r5") =
        (u16 *)(0x05000000 + palette_index * 0x20);
    register u16 color asm("r2");
    register unsigned red asm("r0");
    register unsigned green asm("r1");
    register unsigned blue asm("r4");

    asm volatile (
        "mov r1, r5\n\tldr r3, 3f\n\tldr r0, 4f\n\tldr r2, 5f\n\t"
        "stmia r3!, {r0, r1, r2}\n\tsub r3, #0xc\n\t"
        "ldr r0, 4f\n\tldr r2, 6f\n\t"
        "stmia r3!, {r0, r1, r2}\n\tsub r3, #0xc"
        : : "r" (palette) : "r0", "r1", "r2", "r3", "memory");

    color = *(volatile u16 *)(palette + 4);
    asm volatile (
        "lsl r3, r2, #16\n\t"
        "lsr r4, r3, #26\n\t"
        "lsr r1, r3, #21\n\t"
        "ldr r3, 1f\n\t"
        "mov r0, #0x1f\n\t"
        "add r4, #9\n\t"
        "and r1, r3\n\t"
        "and r0, r2"
        : "=r" (blue), "=r" (green), "=r" (red), "+r" (color)
        : : "r3", "cc");
    if (blue > 0x1f)
        blue = 0x1f;
    green += 9;
    if (green > 0x1f)
        green = 0x1f;
    asm volatile (
        "add r0, #9\n\tcmp r0, #0x1f\n\tbls 2f\n\t"
        "mov r0, #0x1f\n\tb 2f\n\t"
        ".align 2, 0\n"
        "1:\n\t.word 0x1f\n"
        "3:\n\t.word 0x040000d4\n"
        "4:\n\t.word 0x050001e0\n"
        "5:\n\t.word 0x80000010\n"
        "6:\n\t.word 0x84000008\n"
        "2:\n\tlsl r3, r4, #10\n\tlsl r2, r1, #5\n\t"
        "orr r3, r2\n\torr r3, r0\n\tstrh r3, [r5, #8]"
        : "+r" (red)
        : "r" (blue), "r" (green), "r" (palette)
        : "r2", "r3", "cc", "memory");
}
