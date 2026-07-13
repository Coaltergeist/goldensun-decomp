extern void __CutsceneStart(void);
extern void __MessageID(int message_id);
extern void __MapActor_Emote(int actor_id, int emote_id, int duration);
extern void __ActorMessage(int actor_id, int message_id);
extern void __CutsceneEnd(void);

void OvlFunc_950_2008898(int actor_id)
{
    register int emote_actor asm("r0");
    register int emote_id asm("r1");
    register int duration asm("r2");

    __CutsceneStart();
    __MessageID(0x23a8);
    /* Preserve the original emote-argument load order. */
    duration = 0x28;
    asm volatile("" : "+r"(duration));
    emote_actor = 0x1f;
    asm volatile("" : "+r"(emote_actor), "+r"(duration));
    emote_id = 0x103;
    asm volatile("" : "+r"(emote_actor), "+r"(emote_id), "+r"(duration));
    __MapActor_Emote(emote_actor, emote_id, duration);
    __ActorMessage(actor_id, 0);
    __CutsceneEnd();
}
