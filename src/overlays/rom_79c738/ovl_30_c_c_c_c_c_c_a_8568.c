extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MapActor_Emote(int actor, int emote, int arg);
extern void __Func_8092adc(int actor, int value, int arg);
extern void __Func_80925cc(int actor, int value);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int arg);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_80921c4(int actor, int value, int arg);
extern void __CutsceneEnd(void);
extern void CallPreparedEmote(void) asm("__MapActor_Emote");
extern void CallPreparedMotion(void) asm("__Func_8092adc");
extern void CallPreparedSpeed(void) asm("__MapActor_SetSpeed");
extern void CallPreparedMove(void) asm("__Func_80921c4");

void OvlFunc_909_2008568(void)
{
    if (!__GetFlag(0x84e) && __GetFlag(0x322)) {
        __CutsceneStart();
        asm volatile("mov r1,#0x80\nmov r0,#0x13\nlsl r1,#1\nmov r2,#0" ::: "r0", "r1", "r2");
        CallPreparedEmote();
        asm volatile("mov r1,#0xe0\nmov r2,#0xa\nmov r0,#0x13\nlsl r1,#7" ::: "r0", "r1", "r2");
        CallPreparedMotion();
        __Func_80925cc(0x13, 2);
        __CutsceneWait(0x14);
        __MessageID(0x1748);
        __ActorMessage(0x13, 0);
        asm volatile("mov r1,#0x80\nmov r2,#0x80\nmov r0,#0\nlsl r1,#9\nlsl r2,#8" ::: "r0", "r1", "r2");
        CallPreparedSpeed();
        asm volatile("mov r1,#0x9a\nmov r0,#0\nlsl r1,#2\nldr r2,=0x2fa" ::: "r0", "r1", "r2");
        CallPreparedMove();
        asm volatile("mov r1,#0xd0\nmov r0,#0x13\nlsl r1,#8\nmov r2,#0xa" ::: "r0", "r1", "r2");
        CallPreparedMotion();
        __CutsceneEnd();
    }
}
