extern unsigned char *GetUnit(unsigned int unit_id);

int Func_807a2bc(unsigned int unit_id, unsigned int element, unsigned int bit)
{
    register unsigned int saved_bit asm("r6") = bit;
    register unsigned int saved_element asm("r5") = element;
    unsigned char *unit;
    unsigned int offset;
    register unsigned int mask asm("r2");
    register unsigned int value asm("r3");

    /* Keep the incoming indices live across GetUnit in the original registers. */
    __asm__ volatile ("" : "+r" (saved_bit));
    __asm__ volatile ("" : "+r" (saved_element));
    unit = GetUnit(unit_id);

    offset = saved_element * 4 + 0x108;
    __asm__ volatile ("" : "+r" (offset));
    value = *(unsigned int *)(unit + offset);
    __asm__ volatile ("" : "+r" (value));

    mask = 1u << saved_bit;
    __asm__ volatile ("" : "+r" (mask));
    value &= mask;
    __asm__ volatile ("" : "+r" (value));
    return (value | -value) >> 31;
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size Func_807a2bc, .-Func_807a2bc");
