extern void __Func_80925cc(int actor, int value);
extern void __MessageID(int id);
extern void __ActorMessage(int actor, int value);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __MapActor_DoAnim(int actor, int anim);

void OvlFunc_959_2009c4c(int actor)
{
    int message;

    __Func_80925cc(actor, 1);
    asm volatile("");
    message = 0x241e;
    __MessageID(message);
    __ActorMessage(actor, 0);
    {
        register int emoteActor asm("r0");
        register int emoteId asm("r1");
        register int duration asm("r2");

        emoteId = 0x81;
        asm volatile("" : "+r"(emoteId));
        duration = 0x3c;
        asm volatile("" : "+r"(emoteId), "+r"(duration));
        emoteActor = actor;
        asm volatile(
            "" : "+r"(emoteActor), "+r"(emoteId), "+r"(duration));
        emoteId = emoteId << 1;
        __MapActor_Emote(emoteActor, emoteId, duration);
    }
    __MessageID(message + 1);
    __ActorMessage(actor, 0);
    message += 2;
    __MapActor_DoAnim(actor, 4);
    __MessageID(message);
    __ActorMessage(actor, 0);
}
