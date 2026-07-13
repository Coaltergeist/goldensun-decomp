extern unsigned char *__MapActor_GetActor(int actor);

unsigned char *OvlFunc_930_2009060(unsigned char *actor)
{
    register unsigned char *saved __asm__("r5") = actor;
    register unsigned char *reference __asm__("r0");
    register unsigned char *field __asm__("r1");
    register int previous __asm__("r2");
    register int updated __asm__("r3");

    reference = __MapActor_GetActor(0);
    updated = *(int *)(saved + 0x0c);
    previous = *(int *)(reference + 0x0c);
    __asm__ volatile ("" : "+r" (previous), "+r" (updated));
    if (previous > updated) {
        field = saved;
        __asm__ volatile ("" : "+r" (field));
        field += 0x23;
        previous = *field;
        updated = 2;
        __asm__ volatile ("" : "+r" (field), "+r" (previous),
                               "+r" (updated));
        updated |= previous;
    } else {
        field = saved;
        __asm__ volatile ("" : "+r" (field));
        field += 0x23;
        previous = *field;
        updated = 0xfd;
        __asm__ volatile ("" : "+r" (field), "+r" (previous),
                               "+r" (updated));
        updated &= previous;
    }
    *field = updated;
    return reference;
}
