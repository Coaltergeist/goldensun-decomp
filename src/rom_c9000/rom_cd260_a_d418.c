typedef unsigned char u8;
typedef unsigned short u16;
typedef volatile unsigned short vu16;

extern u8 *iwram_3001eec;

void Func_80cd418(void)
{
    register u8 *base asm("r2") = iwram_3001eec;
    register int offset asm("r0") = 0x77bc;
    register vu16 *reg asm("r1");
    register u8 *address asm("r3");
    unsigned int value;

    asm volatile("" : "+r"(base), "+r"(offset));

#define LOAD_HALFWORD()                         \
    do {                                        \
        address = base + offset;                \
        asm volatile("" : "+r"(address));      \
        value = *(u16 *)address;                \
        asm volatile("" : "+r"(value));        \
    } while (0)

    LOAD_HALFWORD();
    reg = (vu16 *)0x04000040;
    offset += 2;
    asm volatile("" : "+r"(reg), "+r"(offset));
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    LOAD_HALFWORD();
    reg += 2;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg -= 1;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg += 2;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg += 1;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg += 1;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg -= 0x25;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    offset += 2;
    LOAD_HALFWORD();
    reg += 0x28;
    *reg = value;
    asm volatile("" : "+r"(offset) : : "memory");
    base += 0x77cc;
    asm volatile("" : "+r"(base));
    reg += 1;
    *reg = *(u16 *)base;

#undef LOAD_HALFWORD
}
