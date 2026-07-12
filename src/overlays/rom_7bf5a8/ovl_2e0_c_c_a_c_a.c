extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_935_2008704(void) {
    register int zero asm("r3") = 0;
    register int unusedZero asm("r8");
    register int actorId asm("r6") = 0x10;
    register int flag asm("r7") = 2;
    register int remaining asm("r5") = 5;

    asm volatile("" : "+r"(zero), "+r"(actorId), "+r"(flag), "+r"(remaining));
    unusedZero = zero;
    asm volatile("" : "+r"(unusedZero));
    do {
        unsigned char *actor = __MapActor_GetActor(actorId) + 0x23;

        remaining--;
        *actor |= flag;
        actorId++;
    } while (remaining >= 0);
}
