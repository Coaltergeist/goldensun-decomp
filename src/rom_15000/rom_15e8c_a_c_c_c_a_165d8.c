typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;

void *Func_80165d8(void *ownerArg, int indexArg, int x, int yArg,
                   const u16 *valuesArg, int mode)
{
    register void *owner asm("r6") = ownerArg;
    register int index asm("r12") = indexArg;
    register int y asm("r7") = yArg;
    register const u16 *values asm("r5") = valuesArg;
    register u8 *candidate asm("r4");
    register u8 *entry asm("r0");
    register int i asm("r1");
    register int occupied asm("r3");

    asm volatile("mov r7, r3\n\tldr r3, =iwram_3001e8c\n\t"
                 "mov r12, r1\n\tldr r3, [r3]\n\t"
                 "mov r1, #0xc4\n\tlsl r1, #3\n\tadd r4, r3, r1\n\t"
                 "ldr r3, [r4]\n\tmov r6, r0\n\tldr r5, [sp, #0x10]\n\t"
                 "mov r0, #0\n\tmov r1, #0"
                 : "=r"(y), "=r"(index), "=r"(candidate),
                   "=r"(occupied), "=r"(owner), "=r"(values),
                   "=r"(entry), "=r"(i));
    goto check_slot;
next_slot:
        i++;
        candidate += 0x28;
        if (i == 3)
            goto search_done;
        occupied = *(int *)candidate;
check_slot:
        if (occupied != 0)
            goto next_slot;
        entry = candidate;
search_done:
    if (entry == 0)
        return entry;

    asm volatile(
        "lsl r3, r2, #8\n\tstrh r3, [r0, #0x1e]\n\t"
        "strh r3, [r0, #4]\n\tlsl r3, r7, #8\n\t"
        "strh r3, [r0, #6]\n\tmov r3, r12\n\t"
        "strh r3, [r0, #0x12]\n\tmov r3, #0xf\n\t"
        "strh r3, [r0, #0x16]\n\tmov r3, #0xa\n\t"
        "strh r3, [r0, #0x1a]\n\tldr r3, [sp, #0x14]\n\t"
        "mov r2, #0\n\tstr r6, [r0]\n\t"
        "strh r2, [r0, #0x14]\n\tstrh r2, [r0, #0x18]\n\t"
        "strh r2, [r0, #0x20]\n\tstrh r3, [r0, #0x24]"
        : : "r"(entry), "r"(x), "r"(y), "r"(index), "r"(owner)
        : "r2", "r3", "memory");

    asm volatile("cmp r5, #0\n\tbeq .LFunc80165d8_zero_values"
                 : : "r"(values));
    {
        register u16 *dest asm("r2");
        register u32 count asm("r1");
        asm volatile("mov r2, r0\n\tmov r1, #0\n\tadd r2, #8"
                     : "=r"(dest), "=r"(count) : "r"(entry));
        do {
            *dest++ = *values++;
            count++;
        } while (count <= 3);
    }
    asm volatile("b .LFunc80165d8_finish_values\n\t.pool\n"
                 ".LFunc80165d8_zero_values:");
    {
        register u16 *dest asm("r3");
        register u32 count asm("r1");
        register int zero asm("r2");
        asm volatile("mov r3, r0\n\tldr r2, =0\n\t"
                     "mov r1, #0\n\tadd r3, #8"
                     : "=r"(dest), "=r"(zero), "=r"(count)
                     : "r"(entry));
        do {
            *dest++ = zero;
            count++;
        } while (count <= 3);
    }
    asm volatile("b .LFunc80165d8_finish_values\n\t.pool\n"
                 ".LFunc80165d8_finish_values:");
    asm volatile("mov r3, #0\n\tstrh r3, [r0, #0x10]"
                 : : "r"(entry) : "r3", "memory");
    return entry;
}
