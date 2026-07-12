void ActorAttrOp_width(unsigned char *actor, int operation, int value) {
    register int savedValue asm("r4") = value;

    asm volatile("" : "+r"(savedValue));
    if (operation == 0) {
        *(unsigned short *)(actor + 0x20) = savedValue;
    } else if (operation == 1) {
        *(unsigned short *)(actor + 0x20) += savedValue;
    } else {
        register int signedValue asm("r3");
        register unsigned int width asm("r2");
        register int equal asm("r1");
        register unsigned char *destination asm("r3");

        signedValue = savedValue << 16;
        asm volatile("" : "+r"(signedValue));
        width = *(unsigned short *)(actor + 0x20);
        asm volatile("" : "+r"(width), "+r"(signedValue));
        signedValue >>= 16;
        equal = 0;
        asm volatile("" : "+r"(equal));
        if (width == signedValue)
            equal = 1;
        destination = actor + 0x57;
        asm volatile("" : "+r"(destination), "+r"(equal));
        *destination = equal;
    }
}
