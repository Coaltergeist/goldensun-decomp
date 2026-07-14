extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);
extern void __MapActor_Emote(int actor, int emote, int arg2);
extern void __ActorMessage(int actor, int message);

void OvlFunc_952_2008348(int actor)
{
    register int message asm("r6") = 0x2006;
    register int actorReg asm("r5") = actor;
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    asm volatile("" : "+r"(message), "+r"(actorReg));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = actorReg;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        {
            register int emote asm("r1") = 0x81;
            register int duration asm("r2");

            asm volatile("" : "+r"(emote));
            arg0 = actorReg;
            asm volatile("" : "+r"(arg0), "+r"(emote));
            emote <<= 1;
            duration = 0x28;
            __MapActor_Emote(arg0, emote, duration);
        }
        __MessageID(message + 1);
    } else {
        __CutsceneWait(0xa);
        __MapActor_Emote(actorReg, 0x105, 0x28);
        __MessageID(message + 2);
    }
    arg0 = actorReg;
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
}
