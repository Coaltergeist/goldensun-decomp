extern unsigned short *iwram_3001ebc;
extern unsigned char Value_1018[] __asm__("0x1018");

void OvlFunc_932_200b410(void)
{
    register unsigned int base asm("r3") = (unsigned int)&iwram_3001ebc;
    register unsigned int offset asm("r1") = 0xbf;
    register unsigned short *slot asm("r2");

    /* Preserve the original literal-pool order. */
    asm volatile("" : "+r"(base), "+r"(offset));
    base = *(unsigned int *)base;
    offset <<= 1;
    slot = (unsigned short *)(base + offset);
    base = (unsigned int)Value_1018;
    asm volatile("" : "+r"(base), "+r"(slot));
    *slot = base;
}
