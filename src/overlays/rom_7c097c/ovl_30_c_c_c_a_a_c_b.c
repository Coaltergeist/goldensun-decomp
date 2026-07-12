extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_936_20095e0(void)
{
    unsigned char *actor = __MapActor_GetActor(0);
    register unsigned int flags asm("r2");
    register unsigned int bit asm("r3");

    actor += 0x23;
    flags = *actor;
    bit = 1;
    asm volatile("" : "+r"(flags), "+r"(bit));
    bit |= flags;
    *actor = bit;
}
asm(".align 2, 0\n.size OvlFunc_936_20095e0, . - OvlFunc_936_20095e0");
