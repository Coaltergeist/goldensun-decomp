typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;

void Func_80173ac(void)
{
    register u8 *state asm("r2") = iwram_3001e8c;
    register unsigned int value asm("r3");
    register u8 *field asm("r1");
    register unsigned int zero asm("r0");

    value = 0xeae;
    field = state + value;
    value = 0xf;
    asm("" : "+r"(field), "+r"(value));
    *(u16 *)field = value;
    value = 0xea8;
    field = state + value;
    value = 0xa;
    asm("" : "+r"(field), "+r"(value));
    *(u16 *)field = value;
    value = 0x12b0;
    field = state + value;
    value = 9;
    asm("" : "+r"(field), "+r"(value));
    *(u16 *)field = value;
    {
        register unsigned int offset asm("r1");
        register u8 *last_field asm("r3");

        asm("ldr %0, =0xeac" : "=r"(offset));
        asm volatile("mov %0, #0" : "=r"(zero) : : "memory");
        last_field = state + offset;
        asm("" : "+r"(last_field), "+r"(zero));
        *(u16 *)last_field = zero;
    }
    asm volatile("" : : : "memory");
    asm("ldr %0, =0xeaa" : "=r"(value));
    state += value;
    value = 1;
    asm("" : "+r"(state), "+r"(value));
    *(u16 *)state = value;
}
