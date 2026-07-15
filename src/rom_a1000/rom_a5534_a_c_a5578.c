typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern int Func_80a3d6c(int unitId);
extern void *_GetUnit(int unitId);

int Func_80a5578(int *output, int slotOffset)
{
    register u8 *state asm("r8");
    register int offset asm("r5");
    register u8 *base asm("r6");
    register int *result asm("r10");
    register int total asm("r7");
    register void *unit asm("r11");
    register int available asm("r6");
    register int groups asm("r9");
    register int remainder asm("r8");
    register int rows asm("r5");
    int unitId;
    register int limit asm("r3");

    asm volatile(
        "ldr r3, =iwram_3001f2c\n\t"
        "ldr r3, [r3]\n\t"
        "mov r2, #0x86\n\t"
        "mov r8, r3\n\t"
        "lsl r2, #2\n\t"
        "mov r5, r1\n\t"
        "mov r6, r8\n\t"
        "add r5, r2\n\t"
        "add r6, #2\n\t"
        "mov r10, r0"
        : "=r"(state), "=r"(offset), "=r"(base), "=r"(result)
        : "r"(output), "r"(slotOffset)
        : "r2", "r3");
    unitId = base[offset];
    total = Func_80a3d6c(unitId);
    {
        register void *unitCall asm("r0") = _GetUnit(base[offset]);
        asm volatile(
            "ldrb r3, [r6, r5]\n\t"
            "mov r2, #0x98\n\t"
            "lsl r2, #2\n\t"
            "add r3, r2\n\t"
            "mov r2, r8\n\t"
            "ldrsb r6, [r2, r3]\n\t"
            "add r3, r6, #1\n\t"
            "mov r11, r0"
            : "=r"(available), "=r"(limit), "=r"(unit)
            : "r"(base), "r"(offset), "r"(state), "r"(unitCall)
            : "r2");
    }

    if (limit > total)
        available = total - 1;

    groups = available / 5;
    remainder = available % 5;
    rows = total / 5;
    if (total % 5 != 0)
        rows++;

    asm volatile(
        "mov r2, r10\n\t"
        "mov r3, r11\n\t"
        "str r3, [r2]\n\t"
        "mov r3, r9\n\t"
        "str r3, [r2, #8]\n\t"
        "mov r3, r8\n\t"
        "str r5, [r2, #0xc]\n\t"
        "str r3, [r2, #0x10]\n\t"
        "str r7, [r2, #0x14]\n\t"
        "str r6, [r2, #0x18]"
        :
        : "r"(result), "r"(unit), "r"(groups), "r"(rows),
          "r"(remainder), "r"(total), "r"(available)
        : "r2", "r3", "memory");
    return 1;
}
