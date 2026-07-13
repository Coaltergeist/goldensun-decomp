typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;

void Func_8019d0c(void)
{
    register u8 **global asm("r3");
    register unsigned int offset asm("r0");
    register unsigned int value asm("r2");
    register u8 *state asm("r3");
    register u8 *field asm("r1");

    asm("ldr %0, Func_8019d0c_Global\n\t"
        "ldr %1, Func_8019d0c_Offset"
        : "=r"(global), "=r"(offset));
    state = *global;
    asm("ldr %0, Func_8019d0c_Value" : "=r"(value) : "r"(state));
    field = state + offset;
    offset += 2;
    *(u16 *)field = value;
    field = state + offset;
    asm("" : "+r"(field));
    *(u16 *)field = value;
}

asm(".align 2, 0\n"
    "Func_8019d0c_Value:\n"
    ".word 0x3e7\n"
    "Func_8019d0c_Global:\n"
    ".word iwram_3001e8c\n"
    "Func_8019d0c_Offset:\n"
    ".word 0x12ec");
