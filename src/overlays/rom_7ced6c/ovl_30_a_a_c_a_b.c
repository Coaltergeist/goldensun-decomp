void OvlFunc_946_20089dc(unsigned char *actor, int value)
{
    register unsigned char *sprite __asm__("r0") =
        *(unsigned char **)(actor + 0x50);
    register int flags __asm__("r2") = sprite[9];
    int mask;

    value &= 3;
    /* Do not fold the two constants into a subtraction. */
    __asm__ volatile ("" : : : "r3");
    mask = ~0xc;
    value <<= 2;
    mask &= flags;
    mask |= value;
    sprite[9] = mask;
}

__asm__(".align 2, 0\n.size OvlFunc_946_20089dc, . - OvlFunc_946_20089dc");
