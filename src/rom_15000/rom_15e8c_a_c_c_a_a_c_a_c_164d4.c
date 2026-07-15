typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u16 *iwram_3001e8c;
extern void Func_801e260(u32 left, u32 top, u32 width, u32 height);

void Func_80164d4(u8 *box, u32 startX, u32 startY, u32 endX, u32 endY)
{
    register u32 left asm("r5");
    register u32 top asm("r7");
    register u32 width asm("r6");
    register u32 height asm("r4");
    register u16 *map asm("r8");

    /* Preserve the original compiler's argument-load and register schedule. */
    asm volatile(
        "sub sp, #4\n\t"
        "mov r7, r2\n\t"
        "ldr r2, =iwram_3001e8c\n\t"
        "mov r5, r1\n\t"
        "ldr r1, [sp, #0x18]\n\t"
        "ldr r2, [r2]\n\t"
        "lsr r4, r5, #3\n\t"
        "add r3, #7\n\t"
        "ldrh r5, [r0, #0xc]\n\t"
        "add r1, #7\n\t"
        "ldrh r0, [r0, #0xe]\n\t"
        "mov r8, r2\n\t"
        "lsr r3, #3\n\t"
        "lsr r2, r7, #3\n\t"
        "lsr r1, #3\n\t"
        "add r2, r0\n\t"
        "add r4, r5\n\t"
        "add r3, r5\n\t"
        "add r1, r0\n\t"
        "add r5, r4, #1\n\t"
        "add r7, r2, #1\n\t"
        "sub r6, r3, r4\n\t"
        "sub r4, r1, r2"
        : "=r" (left), "=r" (top), "=r" (width), "=r" (height), "=r" (map)
        :
        : "r0", "r1", "r2", "r3", "memory");

    /* The call sequence is an ABI scheduling island; the calculation is C above. */
    asm volatile(
        "mov r3, r4\n\t"
        "mov r1, r7\n\t"
        "mov r2, r6\n\t"
        "mov r0, r5\n\t"
        "str r4, [sp]\n\t"
        "bl Func_801e260"
        : "+r" (left), "+r" (top), "+r" (width), "+r" (height), "+r" (map)
        :
        : "r0", "r1", "r2", "r3", "lr", "memory");

    {
        register u16 *destination asm("r0");
        register u32 row asm("r1");

        asm volatile(
            "lsl r3, r7, #5\n\t"
            "add r3, r5\n\t"
            "ldr r4, [sp]\n\t"
            "lsl r3, #1\n\t"
            "mov r2, r8\n\t"
            "mov r1, #0\n\t"
            "add r0, r3, r2"
            : "=r" (destination), "=r" (row), "+r" (height)
            : "r" (left), "r" (top), "r" (map)
            : "r2", "r3", "memory");

        if (row < height) {
            register u32 stride asm("r3") = (32 - width) * 2;
            do {
                register u32 column asm("r5") = 0;
                if (column < width) {
                    register u16 value asm("r2");
                    asm volatile("ldr r2, .LFunc_80164d4_value"
                                 : "=r" (value));
                    do {
                        *destination++ = value;
                        column++;
                    } while (column < width);
                }
                row++;
                destination = (u16 *)((u8 *)destination + stride);
            } while (row < height);
        }
    }

    asm volatile(
        "ldr r2, =0xea3\n\t"
        "mov r3, #1\n\t"
        "add r2, r8\n\t"
        "strb r3, [r2]\n\t"
        "add sp, #4\n\t"
        "b .LFunc_80164d4_pool_end\n\t"
        ".align 2, 0\n"
        ".LFunc_80164d4_value:\n\t"
        ".word 0xf020\n\t"
        ".pool\n"
        ".LFunc_80164d4_pool_end:"
        :
        : "r" (map)
        : "r2", "r3", "memory");
}
