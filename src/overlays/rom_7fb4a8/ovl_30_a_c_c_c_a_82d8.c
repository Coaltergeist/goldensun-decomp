extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor, int arg1);
extern void __WaitFrames(int frames);

extern int counter asm(".L1f50");

int OvlFunc_971_20082d8(void)
{
    if (__GetFlag(0x203) == 0) {
        counter += 1;
        if (counter == 300) {
            counter = 0;
            __ClearFlag(0x200);
        }
        {
            register int flag asm("r0") = 0x200;
            asm volatile("" : "+r"(flag));
            if (__GetFlag(flag) == 0) {
                register int flag2 asm("r0");
                __CutsceneStart();
                __MessageID(0x292e);
                __Func_8092c40(8, 0);
                __WaitFrames(5);
                flag2 = 0x200;
                asm volatile("" : "+r"(flag2));
                __SetFlag(flag2);
                __CutsceneEnd();
            }
        }
    }
}
