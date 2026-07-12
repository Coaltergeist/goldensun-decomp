extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_882_200c5b8(void) {
    register unsigned char *actor asm("r0");
    register unsigned char *source asm("r6");
    register int targetValue asm("r1");
    register int temp2 asm("r2");
    register int temp3 asm("r3");
    register int mask asm("r5");

    actor = __MapActor_GetActor(0);
    source = *(unsigned char **)(actor + 0x50);
    asm volatile("" : "+r"(source));
    actor = __MapActor_GetActor(0x16);
    actor = *(unsigned char **)(actor + 0x50);
    asm volatile("" : "+r"(actor));
    temp3 = source[9];
    asm volatile("" : "+r"(temp3));
    mask = 0xd;
    asm volatile("" : "+r"(mask));
    targetValue = actor[9];
    asm volatile("" : "+r"(targetValue));
    mask = -mask;
    asm volatile("" : "+r"(mask));
    temp2 = 0xc;
    temp2 &= temp3;
    temp3 = mask;
    temp3 &= targetValue;
    temp3 |= temp2;
    actor[9] = temp3;

    actor = __MapActor_GetActor(8);
    temp2 = source[9];
    asm volatile("" : "+r"(temp2));
    {
        register unsigned char *target asm("r1") =
            *(unsigned char **)(actor + 0x50);

        asm volatile("" : "+r"(target));
        temp3 = 0xc;
        temp3 &= temp2;
        temp2 = target[9];
        mask &= temp2;
        mask |= temp3;
        target[9] = mask;
    }
}
