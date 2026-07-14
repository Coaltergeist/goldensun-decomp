extern void __MessageID(int id);
extern void __ActorMessage(int actor, int value);
extern void __CutsceneWait(int frames);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_80925cc(int actor, int value);
extern void __MapActor_DoAnim(int actor, int anim);

void OvlFunc_959_2009cf0(int actor)
{
    int message = 0x2424;

    __MessageID(message);
    __ActorMessage(actor, 0);
    __CutsceneWait(0x78);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r2 = 0x3c;
        asm volatile("" : "+r"(r2));
        r0 = actor;
        asm volatile("" : "+r"(r0), "+r"(r2));
        r1 = 0x101;
        __MapActor_Emote(r0, r1, r2);
    }
    __MessageID(message + 1);
    __ActorMessage(actor, 0);
    __Func_80925cc(actor, 1);
    __MessageID(message + 2);
    __ActorMessage(actor, 0);
    message += 3;
    __MapActor_DoAnim(actor, 4);
    __MessageID(message);
    __ActorMessage(actor, 0);
}
