typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gState[];

void Func_801ce90(u8 *object)
{
    register unsigned int field_offset asm("r2");
    register u8 *base asm("r3");
    register unsigned int offset asm("r2");
    register u8 *counter asm("r1");
    register unsigned int current asm("r2");
    register unsigned int next asm("r3");

    asm("ldr %0, Func_801ce90_FieldOffset" : "=r"(field_offset));
    object += field_offset;
    asm("" : "+r"(object));
    switch (*(u16 *)object) {
    case 0:
        asm("ldr %0, Func_801ce90_State\n\t"
            "mov %1, #0x83"
            : "=r"(base), "=r"(offset));
        offset <<= 2;
        break;
    case 1:
        asm("ldr %0, Func_801ce90_State" : "=r"(base));
        asm("ldr %0, Func_801ce90_Offset1" : "=r"(offset));
        break;
    case 2:
        asm("ldr %0, Func_801ce90_State" : "=r"(base));
        asm("ldr %0, Func_801ce90_Offset2" : "=r"(offset));
        break;
    default:
        return;
    }
    counter = base + offset;
    asm("ldrb %0, [%1]" : "=r"(current) : "r"(counter));
    asm("mov %0, %1" : "=r"(next) : "r"(current));
    if (next != 0) {
        next += 0xff;
        *counter = next;
    }
}

asm(".align 2, 0\n"
    "Func_801ce90_FieldOffset:\n"
    ".word 0x574\n"
    "Func_801ce90_State:\n"
    ".word gState\n"
    "Func_801ce90_Offset1:\n"
    ".word 0x205\n"
    "Func_801ce90_Offset2:\n"
    ".word 0x206");
