typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u16 *iwram_3001e8c;

void Func_8019000(u8 *box, u32 tile, int x, int y, u32 mode)
{
    register u8 *boxReg asm("r0") = box;
    register int drawY asm("r4");
    register u16 *map asm("r6");
    register u32 tileReg asm("r7");
    register int drawX asm("r1");
    register u32 modeReg asm("r2");
    register u32 limit asm("r3");
    register u32 attributes asm("r5");
    register u32 index asm("r0");

    asm volatile(
        "mov r4, r3\n\t"
        "ldr r3, =iwram_3001e8c\n\t"
        "ldr r6, [r3]\n\t"
        "ldrh r3, [r0, #10]\n\t"
        "mov r7, r1\n\t"
        "add r4, #1\n\t"
        "mov r1, r2\n\t"
        "sub r3, #1\n\t"
        "ldr r2, [sp, #16]\n\t"
        "add r1, #1"
        : "=r" (drawY), "=r" (map), "=r" (tileReg),
          "=r" (drawX), "=r" (modeReg), "=r" (limit), "+r" (boxReg));

    if ((u32)drawY > limit)
        return;
    if ((u32)drawX > (u32)(*(u16 *)(boxReg + 8) - 1))
        return;

    asm volatile(
        "mov r5, #240\n\t"
        "lsl r5, #8\n\t"
        "cmp r2, #3\n\t"
        "beq 2f\n\t"
        "cmp r2, #3\n\t"
        "bhi 1f\n\t"
        "mov r5, #224\n\t"
        "lsl r5, #8\n\t"
        "cmp r2, #2\n\t"
        "beq 2f\n\t"
        "b 3f\n"
        "1:\n\t"
        "mov r5, #128\n\t"
        "lsl r5, #5\n\t"
        "cmp r2, #4\n\t"
        "beq 2f\n"
        "3:\n\t"
        "mov r5, #0\n"
        "2:"
        : "=r" (attributes), "+r" (modeReg));

    if (modeReg == 1)
        return;

    asm volatile(
        "cmp r2, #1\n\t"
        "bcc .LFunc_8019000_plain");
    asm volatile("" : "+r" (modeReg));
    if (modeReg <= 4) {
        index = (u32)boxReg;
        asm volatile(
            "ldrh r2, [r0, #14]\n\t"
            "ldrh r3, [r0, #12]\n\t"
            "add r2, r4\n\t"
            "add r3, r1\n\t"
            "lsl r2, #5\n\t"
            "add r0, r2, r3"
            : "+r" (index)
            : "r" (drawY), "r" (drawX)
            : "r2", "r3");
        if (index >= 640)
            return;
        asm volatile(
            "lsl r3, r0, #1\n\t"
            "orr r5, r7\n\t"
            "strh r5, [r6, r3]"
            : "+r" (attributes)
            : "r" (index), "r" (tileReg), "r" (map)
            : "r3", "memory");
        return;
    }
plain_tile:
    asm volatile(".LFunc_8019000_plain:");
    {
        index = (u32)boxReg;
        asm volatile(
            "ldrh r2, [r0, #14]\n\t"
            "ldrh r3, [r0, #12]\n\t"
            "add r2, r4\n\t"
            "add r3, r1\n\t"
            "lsl r2, #5\n\t"
            "add r0, r2, r3"
            : "+r" (index)
            : "r" (drawY), "r" (drawX)
            : "r2", "r3");
        if (index >= 640)
            return;
        asm volatile(
            "lsl r3, r0, #1\n\t"
            "strh r7, [r6, r3]"
            :
            : "r" (index), "r" (tileReg), "r" (map)
            : "r3", "memory");
    }
}
