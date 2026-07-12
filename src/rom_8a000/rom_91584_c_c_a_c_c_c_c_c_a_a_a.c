extern unsigned char gState[];
extern unsigned char Data_9fbcc[] asm(".L9fbcc");
extern unsigned char *GetFieldActor(int actor);
extern void MapActor_SetSpeed(int actor, int xSpeed, int zSpeed);
extern unsigned char *MapActor_GetActor(int actor);
extern void MapActor_SetPos(int actor, int x, int z);
extern void _Actor_SetAnim(unsigned char *actor, int animation);
extern void Func_809228c(int actor, int arg1, int arg2);
extern void _Actor_SetScript(unsigned char *actor, void *script);

void Func_809233c(int actorID, int arg1, int arg2, int value)
{
    register int call0 asm("r0") = actorID;
    register int call1 asm("r1") = arg1;
    register int call2 asm("r2") = arg2;
    register unsigned int work asm("r3") = value;
    register unsigned char *actor asm("r5");
    register int actorIDReg asm("r6");
    register int arg1Reg asm("r7");
    register int arg2Reg asm("r8");
    register int valueReg asm("r10");

    actorIDReg = call0;
    asm volatile("" : "+r"(call0), "+r"(call1), "+r"(call2), "+r"(work), "+r"(actorIDReg));
    arg1Reg = call1;
    asm volatile("" : "+r"(call0), "+r"(call2), "+r"(work), "+r"(actorIDReg), "+r"(arg1Reg));
    arg2Reg = call2;
    asm volatile("" : "+r"(call0), "+r"(work), "+r"(actorIDReg), "+r"(arg1Reg), "+r"(arg2Reg));
    valueReg = work;
    asm volatile("" : "+r"(call0), "+r"(actorIDReg), "+r"(arg1Reg), "+r"(arg2Reg), "+r"(valueReg));
    actor = GetFieldActor(call0);
    if (actor == 0)
        goto done;

    call2 = 0x4ccc;
    asm volatile("" : "+r"(call2), "+r"(actorIDReg));
    call0 = actorIDReg;
    asm volatile("" : "+r"(call0), "+r"(call2));
    call1 = 0x9999;
    MapActor_SetSpeed(call0, call1, call2);

    work = (unsigned int)gState;
    call2 = 0xfa;
    call2 <<= 1;
    work += call2;
    call0 = *(int *)work;
    call0 = (int)MapActor_GetActor(call0);
    if (call0 != 0) {
        call1 = *(int *)(call0 + 8);
        call2 = *(int *)(call0 + 0x10);
        call0 = actorIDReg;
        MapActor_SetPos(call0, call1, call2);
    }

    call2 = (int)actor;
    work = 0;
    call2 += 0x5b;
    *(unsigned char *)call2 = work;
    call0 = (int)actor;
    call1 = 2;
    _Actor_SetAnim((unsigned char *)call0, call1);

    call2 = arg2Reg;
    asm volatile("" : "+r"(call2), "+r"(actorIDReg), "+r"(arg1Reg));
    call0 = actorIDReg;
    asm volatile("" : "+r"(call0), "+r"(call2), "+r"(arg1Reg));
    call1 = arg1Reg;
    Func_809228c(call0, call1, call2);

    call1 = (int)Data_9fbcc;
    asm volatile("" : "+r"(call1), "+r"(actor));
    call0 = (int)actor;
    _Actor_SetScript((unsigned char *)call0, (void *)call1);

    work = (unsigned int)actor;
    work += 0x64;
    call2 = valueReg;
    *(unsigned short *)work = call2;
done:
    return;
}
