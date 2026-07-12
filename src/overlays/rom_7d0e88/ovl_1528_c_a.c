extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void OvlFunc_947_200a0b8(void);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __SetFlag(int flag);
extern unsigned char OvlData_947_200ad64[];
extern void __MapActor_SetBehavior(int actor, void *behavior);
extern void __CutsceneEnd(void);

void OvlFunc_947_200a0f0(int actor) {
    register int actorReg asm("r6") = actor;
    register unsigned char *mapActor asm("r5");

    asm volatile("" : "+r"(actorReg));
    mapActor = __MapActor_GetActor(actor);
    asm volatile("" : "+r"(mapActor), "+r"(actorReg));
    __CutsceneStart();
    {
        register unsigned int temp3 asm("r3");
        register int x asm("r2");

        temp3 = (unsigned int)OvlFunc_947_200a0b8;
        asm volatile("" : "+r"(temp3));
        x = *(int *)(mapActor + 8);
        asm volatile("" : "+r"(temp3), "+r"(x));
        *(unsigned int *)(mapActor + 0x6c) = temp3;
        temp3 = *(int *)(mapActor + 0x10);
        asm volatile("" : "+r"(temp3), "+r"(x));
        x >>= 20;
        asm volatile("" : "+r"(temp3), "+r"(x));
        temp3 = (int)temp3 >> 20;
        asm volatile("" : "+r"(temp3), "+r"(x));
        __Func_8010704(0x14, 0xe, 1, 1, x, temp3);
    }
    __SetFlag(actorReg + 0x1f5);
    __MapActor_SetBehavior(actorReg, OvlData_947_200ad64);
    __CutsceneEnd();
}
