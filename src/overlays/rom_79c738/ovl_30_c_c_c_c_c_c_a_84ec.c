extern void __CutsceneStart(void);
extern void *__Func_808e078(int arg0, int actor, int target);
extern int __Func_8091a58(int target, int arg1);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __PlaySound(int sound);
extern void __DeleteActor(void *actor);
extern void __CutsceneEnd(void);

void OvlFunc_909_20084ec(int actor, int target, int flag) {
    register int actorReg asm("r6");
    register int targetReg asm("r5");
    register int flagReg asm("r7");
    register void *spawned asm("r8");
    register int temp asm("r3");

    targetReg = target;
    asm volatile("" : "+r"(targetReg));
    actorReg = actor;
    asm volatile("" : "+r"(actorReg), "+r"(targetReg));
    flagReg = flag;
    asm volatile("" : "+r"(flagReg), "+r"(actorReg), "+r"(targetReg));
    __CutsceneStart();
    spawned = __Func_808e078(0, actorReg, targetReg);
    {
        register int callTarget asm("r0");
        register int zero asm("r1");

        zero = 0;
        asm volatile("" : "+r"(zero));
        asm volatile("" : "+r"(spawned), "+r"(zero));
        callTarget = targetReg;
        asm volatile("" : "+r"(callTarget), "+r"(zero), "+r"(spawned));
        temp = __Func_8091a58(callTarget, zero);
    }
    if (temp != -1) {
        __MapActor_SetAnim(actorReg, 2);
        __SetFlag(0x84e);
        __SetFlag(flagReg);
        __ClearFlag(0x322);
        __ClearFlag(0x202);
    } else {
        __PlaySound(0x7d);
        __MapActor_SetAnim(actorReg, 5);
    }
    __DeleteActor(spawned);
    __CutsceneEnd();
}
