void OvlFunc_911_20080a0(unsigned char *actor)
{
    register unsigned char *entry __asm__("r0") = actor + 0x48;
    register unsigned int index __asm__("r2") = 0;
    register unsigned int common_type __asm__("r6") = 0x69;
    register unsigned int special_type __asm__("r5") = 0x6e;
    register unsigned int flags __asm__("r4") = 2;
    register unsigned int active __asm__("r1") = 1;
    register unsigned int range __asm__("r3");

    __asm__ volatile ("" : : "r" (entry), "r" (index),
                      "r" (common_type), "r" (special_type),
                      "r" (flags), "r" (active));
    do {
        range = index - 6;
        *(unsigned short *)entry = common_type;
        if (range <= 1) {
            *(unsigned short *)entry = special_type;
        }
        index++;
        entry[0x16] = flags;
        *(unsigned int *)(entry + 4) = active;
        entry += 0x18;
    } while (index <= 8);
}

__asm__(".align 2, 0\n.size OvlFunc_911_20080a0, . - OvlFunc_911_20080a0");
