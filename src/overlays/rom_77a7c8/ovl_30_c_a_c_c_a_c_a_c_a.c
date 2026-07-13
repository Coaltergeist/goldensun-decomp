extern int Actor_679c[] __asm__(".L679c");
extern void __CutsceneStart(void);
extern void __Func_808c44c(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_808c4c0(void);
extern void __MapActor_SetSpeed(int actor, int horizontal, int vertical);
extern void __Func_80921c4(int actor, int x, int y);
extern void __CutsceneEnd(void);

void OvlFunc_881_200a858(void)
{
    register int actor asm("r0");
    register int horizontal asm("r1");
    register int vertical asm("r2");

    __CutsceneStart();
    __Func_808c44c();
    __MessageID(0x2643);
    __ActorMessage(Actor_679c[0], 0);
    __Func_808c4c0();

    horizontal = 0x80;
    vertical = 0x80;
    actor = 0;
    /* Retain the original constant-materialization schedule. */
    asm volatile("" : "+r"(actor), "+r"(horizontal), "+r"(vertical));
    horizontal <<= 9;
    vertical <<= 8;
    __MapActor_SetSpeed(actor, horizontal, vertical);

    actor = 0;
    horizontal = 0x1778;
    vertical = 0xd48;
    asm volatile("" : "+r"(actor), "+r"(horizontal), "+r"(vertical));
    __Func_80921c4(actor, horizontal, vertical);
    __CutsceneEnd();
}
