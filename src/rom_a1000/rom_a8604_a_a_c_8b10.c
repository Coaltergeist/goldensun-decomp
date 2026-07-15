typedef signed char s8;
typedef signed short s16;

typedef struct Unit {
    unsigned char pad0[0x38];
    s16 field38;
    unsigned char pad3A[0xf6];
    s8 field130;
    s8 field131;
    unsigned char pad132[0xe];
    unsigned char field140;
} Unit;

extern Unit *_GetUnit(int unitId);

int Func_80a8b10(unsigned char *flags, int mode, int unitId)
{
    register Unit *unit asm("r2") = _GetUnit(unitId);
    register int zero asm("r1") = 0;
    register unsigned char *base asm("r12");
    register int count asm("r0");
    register unsigned char *cursor asm("r3");
    s8 field131;

    asm volatile("add r3, r5, #4\n\tmov r12, r5"
                 : "=r" (cursor), "=r" (base) : "r" (flags));
    do {
        *cursor = zero;
        cursor--;
    } while ((int)cursor >= (int)base);

    count = 0;
    if (unit->field38 == 0 && mode == 1) {
        flags[0] = 1;
        count = 1;
    }
    field131 = unit->field131;
    if (field131 != 0) {
        if (field131 == 1)
            flags[1] = 1;
        else
            flags[2] = 1;
        count++;
    }
    if (unit->field130 != 0) {
        flags[3] = 1;
        count++;
    }
    {
        register int field140 asm("r3");
        register int offset asm("r1");
        asm volatile("mov r1, #0xa0\n\tlsl r1, #1\n\tadd r3, r2, r1\n\tldrb r3, [r3]"
                     : "=r" (field140), "=r" (offset) : "r" (unit));
        if (field140 != 0) {
            flags[4] = 1;
            count++;
        }
    }
    return count;
}
