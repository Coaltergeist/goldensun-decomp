typedef unsigned char u8;
typedef int s32;

typedef struct {
    s32 value0;
    s32 value1;
    u8 pad08[0x10];
    s32 status;
} Entry80e73a0;

void Func_80e73a0(int value0, int value1_arg)
{
    register int value1 asm("r5");
    register int minus_one asm("r6");
    register int index asm("r4");
    register u8 **owner_slot asm("r1");
    register Entry80e73a0 *entry asm("r2");
    register int status asm("r3");

    asm volatile(
        "mov r6, r9\n\t"
        "push {r6}\n\t"
        "sub sp, #4\n\t"
        "mov r2, r9\n\t"
        "mov r3, sp\n\t"
        "str r2, [r3]\n\t"
        "mov r3, r2\n\t"
        "mov r5, %6\n\t"
        "mov r1, r3\n\t"
        "sub r1, #0x88\n\t"
        "ldr r3, [r1]\n\t"
        "mov r6, #0xe1\n\t"
        "lsl r6, #7\n\t"
        "add r2, r3, r6\n\t"
        "ldr r3, [r2, #0x18]\n\t"
        "mov r6, #1\n\t"
        "neg r6, r6\n\t"
        "mov r4, #0"
        : "=r"(value1), "=r"(minus_one), "=r"(index), "=r"(owner_slot), "=r"(entry), "=r"(status)
        : "r"(value1_arg)
        : "memory", "cc");

    if (status == minus_one) {
        entry->status = index;
    } else {
        do {
            ++index;
            if (index == 0x20)
                goto cleanup;
            asm volatile(
                "lsl r3, r4, #3\n\t"
                "sub r3, r4\n\t"
                "ldr r2, [r1]\n\t"
                "lsl r3, #2\n\t"
                "add r2, r3\n\t"
                "mov r3, #0xe1\n\t"
                "lsl r3, #7\n\t"
                "add r2, r3\n\t"
                "mov r6, #1\n\t"
                "ldr r3, [r2, #0x18]\n\t"
                "neg r6, r6"
                : "+r"(minus_one), "+r"(owner_slot), "=r"(entry), "=r"(status)
                : "r"(index)
                : "memory", "cc");
        } while (status != minus_one);
        entry->status = 0;
    }
    entry->value0 = value0;
    entry->value1 = value1;
cleanup:
    asm volatile(
        "add sp, #4\n\t"
        "pop {r3}\n\t"
        "mov r9, r3"
        : : : "r3", "memory");
}
