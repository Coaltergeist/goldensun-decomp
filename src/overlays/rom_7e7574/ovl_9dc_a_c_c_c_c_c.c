extern void __CutsceneStart(void);
extern void *__Func_808e078(int arg0, int actor, int target);
extern int __Func_8091a58(int target, int arg1);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __PlaySound(int sound);
extern void __DeleteActor(void *actor);
extern void __CutsceneEnd(void);

int OvlFunc_959_2009038(int actor, int target) {
    register int actorReg asm("r6");
    register int targetReg asm("r5");
    register void *spawned asm("r7");
    register int success asm("r8");
    register int temp asm("r3");

    temp = 0;
    asm volatile("" : "+r"(temp));
    targetReg = target;
    asm volatile("" : "+r"(targetReg), "+r"(temp));
    actorReg = actor;
    asm volatile("" : "+r"(actorReg), "+r"(targetReg), "+r"(temp));
    success = temp;
    asm volatile("" : "+r"(success));
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
        temp = 1;
        asm volatile("" : "+r"(temp));
        success = temp;
        asm volatile("" : "+r"(success));
    } else {
        __PlaySound(0x7d);
        __MapActor_SetAnim(actorReg, 5);
    }
    __DeleteActor(spawned);
    __CutsceneEnd();
    return success;
}
