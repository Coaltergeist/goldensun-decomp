extern unsigned char *GetFieldActor(int actor);
extern void _Actor_Stop(unsigned char *actor);

void MapActor_SetIdle(int actorId) {
    unsigned char *actor = GetFieldActor(actorId);

    if (actor != 0) {
        register unsigned char *flags asm("r1") = actor + 0x5a;
        register unsigned int value asm("r2") = *flags;
        register unsigned int result asm("r3") = 1;

        asm volatile("" : : "r"(flags), "r"(value), "r"(result));
        result |= value;
        *flags = result;
        _Actor_Stop(actor);
    }
}
