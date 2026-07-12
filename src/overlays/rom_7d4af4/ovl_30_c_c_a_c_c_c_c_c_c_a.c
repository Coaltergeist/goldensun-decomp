extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_808f1c0(int actor, int value);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_8091a58(int actor, int value);
extern void __CutsceneEnd(void);

void OvlFunc_949_20085dc(void)
{
    __CutsceneStart();
    {
        /* Keep the flag reads as separate literal loads, as in the original. */
        register int flag asm("r0") = 0x8bf;

        asm volatile("" : "+r"(flag));
        if (__GetFlag(flag) == 0) {
            register int flagToSet asm("r0") = 0x8bf;

            asm volatile("" : "+r"(flagToSet));
            __SetFlag(flagToSet);
            __MessageID(0x2368);
            __ActorMessage(0x13, 0);
            __Func_808f1c0(0xe9, 3);
            __ActorMessage(0x13, 0);
            __MapActor_SetAnim(0, 1);
            __Func_8091a58(0xe9, 0);
        } else {
            __MessageID(0x236a);
            __ActorMessage(0x13, 0);
        }
    }
    __CutsceneEnd();
}
