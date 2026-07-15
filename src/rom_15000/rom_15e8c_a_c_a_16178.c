typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern void Func_801e260(unsigned int x, unsigned int y, unsigned int width,
                        unsigned int height, unsigned int fill);

void ClearUIRegion(unsigned int x, unsigned int y, unsigned int width,
                   unsigned int height)
{
    u8 *state = iwram_3001e8c;
    u16 *tile = (u16 *)state + y * 32 + x;
    register unsigned int fill asm("r4") = 0xf000;
    register unsigned int row asm("r2");
    unsigned int scratch;

    if (y + height > 20)
        height = 20 - y;
    if (width <= 1)
        width = 2;
    if (width > 30)
        width = 30;
    if (height <= 1)
        height = 2;
    if (height > 30)
        height = 30;

    asm volatile("" : : "m" (scratch));
    asm volatile(
        "mov r2, r6\n\t"
        "mov r1, r8\n\t"
        "mov r3, r7\n\t"
        "str r4, [sp]\n\t"
        "bl Func_801e260\n\t"
        "mov r2, #0\n\t"
        "ldr r4, [sp]"
        : "=r" (row), "+r" (fill)
        :
        : "r0", "r1", "r3", "r12", "r14", "memory", "cc");

    for (; row < height; row++) {
        unsigned int column;
        if (state[0xea5] != 0) {
            if (y + row > 16)
                fill = 0xf07f;
            else
                fill = 0xf000;
        }
        for (column = 0; column < width; column++)
            *tile++ = fill;
        tile += 32 - width;
    }
    state[0xea3] = 1;
}
