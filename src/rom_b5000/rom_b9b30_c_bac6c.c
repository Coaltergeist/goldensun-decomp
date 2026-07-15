typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed short s16;

extern u8 *iwram_3001e74;
extern u8 *_GetUnit();
extern void Func_80c1ebc(int unitId);

void Func_80bac6c(int unitId)
{
    register int id asm("r6");
    register u8 *state asm("r5");
    register u8 *unit asm("r0");
    register int offset asm("r2");
    register int value asm("r3");
    register int replacement asm("r1");

    asm volatile("ldr r3, =iwram_3001e74\n\tmov r6, r0\n\tldr r5, [r3]"
                 : "=r"(id), "=r"(state));
    unit = _GetUnit();
    asm volatile("mov r3, #0x95\n\tlsl r3, #1\n\t"
                 "add r2, r0, r3\n\tldr r1, .LFunc80bac6c_fe1\n\t"
                 "mov r3, #0\n\tstrb r3, [r2]"
                 : "=r"(replacement) : "r"(unit)
                 : "r2", "r3", "memory");

    offset = 0x58;
    for (;;) {
        asm volatile("ldrsh r3, [r2, r5]" : "=r"(value)
                     : "r"(offset), "r"(state));
        asm volatile("cmp r3, r6\n\tbne .LFunc80bac6c_first_miss\n\t"
                     "strh r1, [r2, r5]\n\tb .LFunc80bac6c_found\n\t"
                     ".align 2\n.LFunc80bac6c_fe1: .word 0xfe\n\t"
                     ".pool\n.LFunc80bac6c_first_miss:"
                     : : "r"(value), "r"(id), "r"(replacement),
                       "r"(offset), "r"(state) : "memory");
        if (value == 0xff)
            break;
        offset += 2;
    }

    {
        register u8 *base asm("r0");
        register int index asm("r1");
        asm volatile("mov r1, #0\n\tadd r0, r5, #2"
                     : "=r"(index), "=r"(base) : "r"(state));
    for (;;) {
        asm volatile("lsl r3, r1, #1\n\tmov r2, r3\n\tadd r2, #0x64"
                     : "=r"(offset) : "r"(index) : "r3");
        value = *(s16 *)(base + offset);
        asm volatile("cmp r3, r6\n\tbne .LFunc80bac6c_second_miss\n\t"
                     "ldr r3, .LFunc80bac6c_fe2\n\tstrh r3, [r0, r2]\n\t"
                     "b .LFunc80bac6c_found\n.LFunc80bac6c_second_miss:"
                     : : "r"(value), "r"(id), "r"(base), "r"(offset)
                     : "r3", "memory");
        index++;
        if (value == 0xff)
            break;
    }
    }
    asm volatile("b .LFunc80bac6c_end\n\t.align 2\n"
                 ".LFunc80bac6c_fe2: .word 0xfe\n\t"
                 ".pool\n.LFunc80bac6c_found:");
    Func_80c1ebc(id);
    {
        register u32 i asm("r1") = 0;
        register int removed asm("r0") = 0xff;
        offset = 0x2ec;
        do {
            asm volatile("ldrsh r3, [r2, r5]" : "=r"(value)
                         : "r"(offset), "r"(state));
            if (value == id)
                asm volatile("strh r0, [r2, r5]" : : "r"(removed),
                             "r"(offset), "r"(state) : "memory");
            i++;
            offset += 0x10;
        } while (i <= 0x13);
    }
    asm volatile(".LFunc80bac6c_end:");
}
