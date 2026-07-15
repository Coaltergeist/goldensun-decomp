typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 Func_8005868(u32 sector);

u32 Func_8005b64(u32 sector)
{
    register u32 result asm("r0");

    asm volatile(
        "ldr\tr3, =iwram_3001f1c\n\t"
        "sub\tsp, #0x14\n\t"
        "mov\tr5, r0\n\t"
        "ldr\tr6, [r3]\n\t"
        "mov\tr0, sp\n\t"
        "mov\tr3, #0\n\t"
        "str\tr3, [r0]\n\t"
        "add\tr1, sp, #4\n\t"
        "ldr\tr3, =0x040000d4\n\t"
        "ldr\tr2, =0x85000004\n\t"
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr1, =0x040000d4\n\t"
        "lsl\tr2, r2, #24\n\t"
        "0:\n\t"
        "ldr\tr3, [r1, #8]\n\t"
        "and\tr3, r2\n\t"
        "cmp\tr3, #0\n\t"
        "bne\t0b\n\t"
        "ldr\tr3, =0x040000d4\n\t"
        "ldr\tr0, =.L79b8\n\t"
        "add\tr1, sp, #4\n\t"
        "ldr\tr2, =0x84000002\n\t"
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc\n\t"
        "mov\tr3, #0x80\n\t"
        "ldr\tr1, =0x040000d4\n\t"
        "lsl\tr3, r3, #24\n\t"
        "1:\n\t"
        "ldr\tr2, [r1, #8]\n\t"
        "and\tr2, r3\n\t"
        "cmp\tr2, #0\n\t"
        "bne\t1b\n\t"
        "add\tr0, sp, #4\n\t"
        "mov\tr3, #0x10\n\t"
        "mov\tr1, r6\n\t"
        "strb\tr3, [r0, #7]\n\t"
        "strh\tr2, [r0, #0xa]\n\t"
        "ldr\tr3, =0x040000d4\n\t"
        "add\tr1, #0x40\n\t"
        "ldr\tr2, =0x84000004\n\t"
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc\n\t"
        "mov\tr2, #0x80\n\t"
        "ldr\tr1, =0x040000d4\n\t"
        "lsl\tr2, r2, #24\n\t"
        "2:\n\t"
        "ldr\tr3, [r1, #8]\n\t"
        "and\tr3, r2\n\t"
        "cmp\tr3, #0\n\t"
        "bne\t2b\n\t"
        "mov\tr0, r5\n\t"
        "bl\tFunc_8005868\n\t"
        "cmp\tr0, #0\n\t"
        "beq\t3f\n\t"
        "mov\tr0, #1\n\t"
        "b\t4f\n\t"
        "3:\n\t"
        "mov\tr2, r5\n\t"
        "mov\tr3, #0x10\n\t"
        "add\tr2, #0x10\n\t"
        "strb\tr0, [r6, r5]\n\t"
        "strb\tr3, [r6, r2]\n\t"
        "lsl\tr3, r5, #1\n\t"
        "add\tr3, #0x20\n\t"
        "strh\tr0, [r6, r3]\n\t"
        "mov\tr0, #0\n\t"
        "4:\n\t"
        "add\tsp, #0x14"
        : "=r"(result)
        :
        : "r1", "r2", "r3", "r5", "r6", "lr", "cc", "memory"
    );

    return result;
}
