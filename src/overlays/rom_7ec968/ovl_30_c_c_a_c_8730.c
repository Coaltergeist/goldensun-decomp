extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __ActorMessage(int actor, int message);
extern void __MapActor_DoAnim(int actor, int animation);
extern unsigned char iwram_3001ebc[];

void OvlFunc_963_2008730(void)
{
    __CutsceneStart();
    if (__GetFlag(0x89f) != 0) {
        __MessageID(0x2668);
        goto L772;
    }
    __MessageID(0x264e);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");

        r1 = 0;
        asm volatile("" : "+r"(r1));
        r0 = 9;
        asm volatile("" : "+r"(r0), "+r"(r1));
        __Func_8092c40(r0, r1);
    }
    if (__Func_8091c7c(0, 0) != 0)
        goto L77c;
    __ActorMessage(9, 0);
    __MapActor_DoAnim(9, 4);
L772:
    __ActorMessage(9, 0);
    goto L794;
L77c:
    {
        register unsigned int r2 asm("r2");
        register unsigned int r3 asm("r3");

        r3 = (unsigned int)iwram_3001ebc;
        r2 = *(unsigned int *)r3;
        r3 = 0xec;
        r3 <<= 1;
        r2 += r3;
        r3 = *(unsigned short *)r2;
        r3 += 2;
        *(unsigned short *)r2 = r3;
    }
    __ActorMessage(9, 0);
L794:
    __CutsceneEnd();
}
