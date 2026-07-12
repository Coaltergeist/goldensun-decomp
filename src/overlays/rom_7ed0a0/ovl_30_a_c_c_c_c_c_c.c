extern void __CutsceneStart(void);
extern void __Func_8092b08(int actor, int arg1);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092950(int actor, int arg1);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void OvlFunc_964_2008ec8(void);
extern void __CutsceneEnd(void);

void OvlFunc_964_2009a10(void) {
    register unsigned int saved asm("r5");
    register unsigned char *actor asm("r0");
    register unsigned int arg1 asm("r1");
    register unsigned int arg2 asm("r2");
    register unsigned int value asm("r3");

    __CutsceneStart();
    __Func_8092b08(9, 1);
    __MapActor_SetAnim(9, 1);
    __Func_8092950(9, 0);

    arg1 = 2;
    asm volatile("" : "+r"(arg1));
    actor = (unsigned char *)9;
    asm volatile("" : "+r"(actor), "+r"(arg1));
    __MapActor_SetAnim((unsigned int)actor, arg1);

    actor = __MapActor_GetActor(9);
    actor += 0x23;
    arg2 = *(unsigned char *)actor;
    value = 0xfd;
    asm volatile("" : "+r"(actor), "+r"(arg2), "+r"(value));
    value &= arg2;
    *(unsigned char *)actor = value;

    actor = (unsigned char *)0x81;
    actor = (unsigned char *)((unsigned int)actor << 2);
    asm volatile("" : "+r"(actor));
    __SetFlag((unsigned int)actor);

    actor = __MapActor_GetActor(9);
    saved = *(unsigned int *)(actor + 8);
    asm volatile("" : "+r"(saved));
    actor = __MapActor_GetActor(9);
    value = *(unsigned int *)(actor + 0x10);
    __Func_8010704(0x1a, 8, 1, 1, (int)saved >> 20, (int)value >> 20);

    actor = __MapActor_GetActor(9);
    saved = (unsigned int)OvlFunc_964_2008ec8;
    asm volatile("" : "+r"(saved));
    *(unsigned int *)(actor + 0x6c) = saved;
    actor = __MapActor_GetActor(8);
    *(unsigned int *)(actor + 0x6c) = saved;
    __CutsceneEnd();
}
