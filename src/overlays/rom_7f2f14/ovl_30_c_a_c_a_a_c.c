extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80925cc(int actor, int arg1);
extern void __MessageID(int id);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_8092950(int actor, int arg1);
extern void __WaitFrames(int frames);
extern void __SetFlag(int flag);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __ActorMessage(int actor, int arg1);

void OvlFunc_968_2008f38(void)
{
    register int count asm("r6");
    register unsigned int delay asm("r5");

    __CutsceneStart();
    __Func_80925cc(8, 3);
    __MessageID(0x266d);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r0 = 8;
        asm volatile("" : "+r"(r0));
        r1 = 0;
        asm volatile("" : "+r"(r0), "+r"(r1));
        r2 = 0x14;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        count = 0xa;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2), "+r"(count));
        delay = 8;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2), "+r"(count), "+r"(delay));
        __Func_8093040(r0, r1, r2);
    }
    do {
        __Func_8092950(8, 0xf);
        __WaitFrames(2);
        __Func_8092950(8, 0);
        __WaitFrames(delay);
        if (delay > 3)
            delay--;
        count--;
    } while (count != 0);
    __SetFlag(0x981);
    __MapActor_SetPos(8, 0, 0);
    {
        register int arg4 asm("r3") = 7;
        register int arg5 asm("r2") = 0x10;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(7, 0x11, 2, 1, arg4, arg5);
    }
    __CutsceneEnd();
}

void OvlFunc_968_2008fbc(void)
{
    __CutsceneStart();
    __MessageID(0x2670);
    __Func_8093040(0xb, 0, 0x14);
    __Func_80925cc(0xb, 2);
    __ActorMessage(0xb, 0);
    __CutsceneEnd();
}
