extern unsigned int __Random(void);
extern unsigned int _umodsi3_RAM(unsigned int value, unsigned int divisor);

unsigned int OvlFunc_882_2008030(unsigned char *actor)
{
    signed short *counter = (signed short *)(actor + 0x64);
    register unsigned int offset asm("r2") = 0;
    register signed int current asm("r3");
    register signed int value asm("r0");

    /* Keep the signed load and its copied working value in separate registers. */
    asm("" : "+r" (offset));
    current = *(signed short *)((unsigned char *)counter + offset);
    value = current;

    if (current == 0) {
        *(unsigned short *)(actor + 6) = __Random();
        value = _umodsi3_RAM(__Random(), 0x14) + 0x14;
        *counter = value;
    }
    {
        register signed int decremented asm("r3") = value - 1;
        *counter = decremented;
    }
    return 1;
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_882_2008030, . - OvlFunc_882_2008030");
