extern void __CutsceneStart(void);
extern void __Func_808e118(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneWait(int frames);
extern void __Func_80925cc(int actor, int animation);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8092c40(int actor, int b);
extern int __Func_8091c7c(int a, int b);
extern void __MapActor_DoAnim(int actor, int anim);
extern void __Func_8092adc(int actor_id, int value, int duration);
extern void __MapActor_SetPos(int actorId, int x, int z);
extern void __Func_808f1c0(int item, int count);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern void __Func_8091a58(int arg0, int arg1);
extern void __SetFlag(int flag);

void OvlFunc_952_20085a4(void)
{
    int msg;
    __CutsceneStart();
    __Func_808e118();
    asm volatile("" ::: "memory");
    msg = 0x2352;
    asm volatile("" : "+r"(msg));
    __MessageID(msg);
    __ActorMessage(-1, 0);
    __CutsceneWait(10);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x1e);
    __Func_809280c(0, 0xe, 0x1e);
    {
        register int b asm("r1") = 0;
        register int a asm("r0");
        asm volatile("" : "+r"(b));
        a = 0xe;
        asm volatile("" : "+r"(b), "+r"(a));
        __Func_8092c40(a, b);
    }
    if (__Func_8091c7c(0, 0) != 0) {
        __MessageID(msg + 2);
        __ActorMessage(0xe, 0);
        return;
    }
    __CutsceneWait(0x14);
    __MessageID(msg + 3);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(0x1e);
    __Func_8092adc(0, 0x4000, 0);
    __CutsceneWait(0x1e);
    __MapActor_SetPos(0x10, 0, 0);
    __Func_808f1c0(0xcd, 3);
    __MapActor_SetAnim(0, 1);
    __Func_8091a58(0xcd, 0);
    __SetFlag(0xf31);
}
