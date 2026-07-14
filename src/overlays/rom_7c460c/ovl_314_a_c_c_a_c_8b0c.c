extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __MessageID(int message_id);
extern void __ActorMessage(int a, int b);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_809228c(int actor, int x, int z);
extern void __MapActor_WaitMovement(int actor);
extern void __ClearFlag(int flag);

void OvlFunc_939_2008b0c(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __MessageID(0x24cf);
    __ActorMessage(1, 0);
    {
        register int emote asm("r1") = 0x81;
        register int duration asm("r2");
        register int actor_id asm("r0");

        asm volatile("" : "+r"(emote));
        duration = 100;
        asm volatile("" : "+r"(emote), "+r"(duration));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(emote), "+r"(duration));
        emote <<= 1;
        __MapActor_Emote(actor_id, emote, duration);
    }
    __MapActor_SetAnim(0, 2);
    __Func_809228c(0, 0, 0xc);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    __ClearFlag(0x243);
    __CutsceneEnd();
}
