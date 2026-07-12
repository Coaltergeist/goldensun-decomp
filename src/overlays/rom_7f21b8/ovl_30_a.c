extern void __MapActor_Surprise(int actor, int emote);

int OvlFunc_967_2008030(void) {
    register int emote asm("r1") = 0x81;
    register int actor asm("r0") = 14;

    asm volatile("" : : "r"(emote), "r"(actor));
    emote <<= 1;
    __MapActor_Surprise(actor, emote);
    return 0;
}
