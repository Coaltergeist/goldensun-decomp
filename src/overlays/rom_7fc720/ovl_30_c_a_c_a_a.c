extern void __MessageID(int message);
extern void __MapActor_Emote(int actor, int emote, int arg2);
extern void __ActorMessage(int actor, int message);

void OvlFunc_973_200804c(void) {
    register int emote asm("r1");
    register int actor asm("r0");

    __MessageID(0x23cd);
    emote = 0x81;
    actor = 13;
    asm volatile("" : : "r"(emote), "r"(actor));
    emote <<= 1;
    __MapActor_Emote(actor, emote, 0);
    __ActorMessage(13, 0);
}
