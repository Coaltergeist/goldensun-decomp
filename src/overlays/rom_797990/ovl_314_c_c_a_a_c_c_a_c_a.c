extern void __MessageID(int message);
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_901_20084b4(int actor);

void OvlFunc_901_20087d4(void) {
    unsigned char *actor;

    __MessageID(0x1cbf);
    __MapActor_GetActor(0xd)[0x5b] = 1;
    OvlFunc_901_20084b4(0xd);
    actor = __MapActor_GetActor(0xd);
    {
        register int zero asm("r5") = 0;

        asm volatile("" : : "r"(zero));
        actor[0x5b] = zero;
    }
}
