extern void __CutsceneStart(void);
extern void __Func_809228c(int, int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __PlaySound(int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_809280c(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapTransitionOut(void);
extern void __CutsceneWait(int);
extern void __Func_8091e9c(int);
extern void __CutsceneEnd(void);
extern void __SetFlag(int);

void OvlFunc_959_200a1c4(void)
{
    register int message asm("r5");

    __CutsceneStart();
    __Func_809228c(0, 0, 0);
    __MapActor_SetBehavior(0, 1);
    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    {
        register int flags asm("r1");
        register int actor asm("r0");
        register int dur asm("r2");

        flags = 0x80;
        asm volatile("" : "+r"(flags));
        actor = 0x15;
        asm volatile("" : "+r"(actor), "+r"(flags));
        flags <<= 1;
        asm volatile("" : "+r"(flags), "+r"(actor));
        dur = 0;
        __MapActor_Emote(actor, flags, dur);
    }
    {
        register int flags asm("r1");
        register int actor asm("r0");
        register int dur asm("r2");

        flags = 0x80;
        asm volatile("" : "+r"(flags));
        actor = 0xd;
        asm volatile("" : "+r"(actor), "+r"(flags));
        flags <<= 1;
        asm volatile("" : "+r"(flags), "+r"(actor));
        dur = 0x3c;
        __MapActor_Emote(actor, flags, dur);
    }
    __Func_809280c(0x15, 0, 0);
    {
        register int y asm("r2");
        register int x asm("r1");
        register int actor asm("r0");

        y = 0;
        asm volatile("" : "+r"(y));
        x = 0;
        asm volatile("" : "+r"(x), "+r"(y));
        actor = 0xd;
        asm volatile("" : "+r"(actor), "+r"(x), "+r"(y));
        __Func_809280c(actor, x, y);
    }
    asm volatile("ldr %0, =0x240d" : "=r"(message));
    __MessageID(message);
    __ActorMessage(0xd, 0);
    __MapActor_Emote(0, 0x102, 0x1e);
    message += 1;
    __MessageID(message);
    __ActorMessage(0xd, 0);
    __MapTransitionOut();
    __CutsceneWait(0x3c);
    __Func_8091e9c(0x3c);
    __CutsceneEnd();
    {
        register int flag asm("r0");

        asm volatile("ldr %0, =0x225" : "=r"(flag));
        __SetFlag(flag);
    }
}
