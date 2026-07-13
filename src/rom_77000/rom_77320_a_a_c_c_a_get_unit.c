typedef unsigned char u8;

extern u8 gPartyStatus[];
extern u8 *iwram_3001f28;

void *GetUnit(unsigned int unit)
{
    register unsigned int size asm("r3");
    register u8 *base asm("r2");
    void *result;

    asm volatile("mov r3, lr" ::: "r3");
    base = gPartyStatus;
    asm("" : "+r"(base), "+r"(unit));
    if (unit < 8) {
        size = 0xa6;
        size <<= 1;
        size *= unit;
        result = (void *)(size + (unsigned int)base);
    } else if (unit - 0x80 < 6 && *(u8 **)&iwram_3001f28 != 0) {
        base = *(u8 **)&iwram_3001f28;
        size = 0xa6;
        size <<= 1;
        size *= unit;
        result = base + size - 0xa600;
    } else {
        result = 0;
    }
    return result;
}
