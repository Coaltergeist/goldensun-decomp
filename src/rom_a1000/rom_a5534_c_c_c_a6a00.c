typedef unsigned int u32;

extern void *_GetUnit(u32 unitId);

int Func_80a6a00(u32 *resultArgument, int indexArgument)
{
    register u32 *result asm("r9");
    register int current asm("r6");
    register int total asm("r7");
    register int nextCurrent asm("r3");
    register void *unit asm("r11");
    register int currentGroups asm("r10");
    register int remainder asm("r8");
    int totalGroups;

    asm volatile(
        "ldr r3, =iwram_3001f2c\n\t"
        "mov r2, #0x86\n\t"
        "ldr r6, [r3]\n\t"
        "lsl r2, #2\n\t"
        "mov r10, r2\n\t"
        "mov r5, r1\n\t"
        "add r3, r6, #2\n\t"
        "add r5, r10\n\t"
        "mov r9, r0\n\t"
        "ldrb r0, [r3, r5]\n\t"
        "mov r8, r3\n\t"
        "bl _GetUnit"
        : "=r" (result)
        :
        : "r0", "r1", "r2", "r3", "r5", "r6", "r8", "r10", "lr",
          "memory");

    asm volatile(
        "mov r2, r10\n\t"
        "ldrb r7, [r6, r2]\n\t"
        "mov r2, r8\n\t"
        "ldrb r3, [r2, r5]\n\t"
        "mov r2, #0x98\n\t"
        "lsl r2, #2\n\t"
        "add r3, r2\n\t"
        "ldrsb r6, [r6, r3]\n\t"
        "add r3, r6, #1\n\t"
        "mov r11, r0"
        : "=r" (current), "=r" (total), "=r" (unit), "=r" (nextCurrent)
        :
        : "r0", "r2", "r3", "memory");

    if (nextCurrent > total)
        current = total - 1;

    currentGroups = current / 5;
    remainder = current % 5;
    totalGroups = total / 5;
    if (total % 5 != 0)
        totalGroups++;

    asm volatile(
        "mov r2, r9\n\t"
        "mov r3, r11\n\t"
        "str r3, [r2]\n\t"
        "mov r3, r10\n\t"
        "str r3, [r2, #8]\n\t"
        "mov r3, r8\n\t"
        "str r5, [r2, #0xc]\n\t"
        "str r3, [r2, #0x10]\n\t"
        "str r7, [r2, #0x14]\n\t"
        "str r6, [r2, #0x18]"
        :
        : "r" (result), "r" (unit), "r" (currentGroups),
          "r" (totalGroups), "r" (remainder), "r" (total), "r" (current)
        : "r2", "r3", "memory");
    return 1;
}
