typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void *galloc_ewram(u32 slot, u32 size);
extern u32 iwram_3001e70;
extern s32 iwram_3001af4;

int Func_80935d4(void)
{
    register u8 *base asm("r7");
    u8 *p;
    u8 flagtmp;
    register u8 flag asm("r10");
    register s16 *addr358 asm("r8");

    base = (u8 *)iwram_3001e70;
    p = (u8 *)galloc_ewram(0x1b, 0xccc);
    asm volatile(
        "mov r1, #0xf0\n\t"
        "lsl r1, #1\n\t"
        "add r0, r1"
        : "+r"(p)
        :
        : "r1");
    flagtmp = *(u8 *)(*(u32 *)p + 0x5b);
    flag = flagtmp;
    if (flagtmp != 0) goto skip;

    {
        register s32 checkval asm("r3");
        asm volatile(
            "mov r2, #0xd6\n\t"
            "lsl r2, #2\n\t"
            "add r2, %2\n\t"
            "mov r0, #0\n\t"
            "ldrsh r3, [r2, r0]\n\t"
            "mov r8, r2"
            : "=r"(checkval), "=r"(addr358)
            : "r"(base)
            : "r0", "r2");
        if (checkval == 0) goto skip;
    }

    {
        register s32 *addr350 asm("r6");
        register s16 *addr35a asm("r5");

        asm volatile(
            "mov r1, #0xd4\n\t"
            "mov r2, #0xd5\n\t"
            "lsl r1, #2\n\t"
            "lsl r2, #2\n\t"
            "add r6, %2, r1\n\t"
            "add r3, %2, r2\n\t"
            "ldr r2, [r3]\n\t"
            "ldr r3, [r6]\n\t"
            "sub r2, r3\n\t"
            "ldr r3, =0x35a\n\t"
            "add r5, %2, r3\n\t"
            "ldrh r3, [r5]\n\t"
            "add r3, #1\n\t"
            "strh r3, [r5]\n\t"
            "lsl r3, #16\n\t"
            "asr r3, #16\n\t"
            "mov r0, r3\n\t"
            "mul r0, r2\n\t"
            "mov r3, %3\n\t"
            "mov r2, #0\n\t"
            "ldrsh r1, [r3, r2]\n\t"
            "bl __divsi3\n\t"
            "mov r2, r0\n\t"
            "mov r0, #0xd2\n\t"
            "ldr r1, [r6]\n\t"
            "lsl r0, #2\n\t"
            "add r3, %2, r0\n\t"
            "ldr r4, =Func_8000888\n\t"
            "ldr r0, [r3]\n\t"
            "add r1, r2\n\t"
            ".align 2, 0\n\t"
            "mov r12, pc\n\t"
            "bx r4\n\t"
            "mov r1, #0xd3\n\t"
            "lsl r1, #2\n\t"
            "add r3, %2, r1\n\t"
            "str r0, [r3]\n\t"
            "mov r0, #0x8c\n\t"
            "lsl r0, #1\n\t"
            "add r3, %2, r0\n\t"
            "ldrh r3, [r3]\n\t"
            "ldr r2, =iwram_3001af4\n\t"
            "add r3, #1\n\t"
            "str r3, [r2]"
            : "=r"(addr350), "=r"(addr35a)
            : "r"(base), "r"(addr358)
            : "r0", "r1", "r2", "r3", "r4", "r12", "lr", "cc", "memory");

        {
            register s32 val35a asm("r2");
            register s32 val358 asm("r3");
            asm volatile(
                "mov r1, #0\n\t"
                "ldrsh r2, [r5, r1]\n\t"
                "mov r1, r8\n\t"
                "mov r0, #0\n\t"
                "ldrsh r3, [r1, r0]"
                : "=r"(val35a), "=r"(val358)
                : "r"(addr35a), "r"(addr358)
                : "r0", "r1");
            if (val35a != val358) goto skip;
        }

        {
            register u8 flagcopy asm("r2");
            flagcopy = flag;
            asm volatile(
                "mov r3, r8\n\t"
                "strh r2, [r3]"
                :
                : "r"(flagcopy), "r"(addr358)
                : "r3");
        }
        asm volatile(
            "ldr r0, =Func_80935d4\n\t"
            "bl StopTask"
            :
            :
            : "r0", "r1", "r2", "r3", "r12", "lr", "cc", "memory");
    }

skip:
    return;
}
