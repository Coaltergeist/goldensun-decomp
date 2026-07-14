extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __MapActor_SetIdle(int actor);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __MessageID(int message);
extern void OvlFunc_953_2009c48(int actor);
extern void __Func_80925cc(int actor, int arg1);
extern void __ActorMessage(int actor, int message);
extern void __MapActor_SetBehavior(int actor, int behavior);
extern void __CutsceneEnd(void);

void OvlFunc_953_2008468(void)
{
    unsigned char *actor = __MapActor_GetActor(0xd);
    register unsigned short *addr asm("r2");
    register int value asm("r3");

    __CutsceneStart();
    __MapActor_SetIdle(0xd);
    __Func_8092848(0xd, 0, 0x14);
    __MessageID(0x2114);
    OvlFunc_953_2009c48(0xd);
    __Func_80925cc(0xd, 1);
    __ActorMessage(0xd, 0);

    addr = (unsigned short *)actor;
    value = 0xb4;
    asm volatile("" : "+r"(addr), "+r"(value));
    addr = (unsigned short *)((unsigned char *)addr + 0x64);
    value <<= 2;
    *addr = value;

    actor += 0x66;
    value = 0x70;
    asm volatile("" : "+r"(value));
    *(unsigned short *)actor = value;

    __MapActor_SetBehavior(0xd, 2);
    __CutsceneEnd();
}
