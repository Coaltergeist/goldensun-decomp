extern unsigned char *GetFieldActor(int actor);
extern void _Actor_Stop(unsigned char *actor);
extern void _Actor_SetAnim(unsigned char *actor, int animation);
extern void _Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void _Actor_WaitMovement(unsigned char *actor);
extern void Func_8092b08(int actor, int value);

void Func_8092208(int actorID, int value, int zOffset)
{
    register unsigned char *call0 asm("r0") = (unsigned char *)actorID;
    register int call1 asm("r1") = value;
    register int temp asm("r2") = zOffset;
    register int work asm("r3");
    register int remainder asm("r5");
    register unsigned char *actor asm("r6");
    register int actorIDReg asm("r7");
    register int valueReg asm("r8");
    register int zOffsetReg asm("r10");

    actorIDReg = (int)call0;
    asm volatile("" : "+r"(call0), "+r"(call1), "+r"(temp), "+r"(actorIDReg));
    valueReg = call1;
    asm volatile("" : "+r"(call0), "+r"(temp), "+r"(actorIDReg), "+r"(valueReg));
    zOffsetReg = temp;
    asm volatile("" : "+r"(call0), "+r"(actorIDReg), "+r"(valueReg), "+r"(zOffsetReg));
    actor = GetFieldActor((int)call0);
    if (actor == 0)
        goto done;

    temp = 0xa;
    work = *(short *)(actor + temp);
    remainder = work;
    if (work < 0)
        remainder += 0xf;
    remainder >>= 4;
    remainder <<= 4;
    temp = (int)actor;
    temp += 0x5b;
    remainder = work - remainder;
    work = 0;
    *(unsigned char *)temp = work;

    call0 = actor;
    _Actor_Stop(call0);
    remainder <<= 16;
    call0 = actor;
    call1 = 2;
    _Actor_SetAnim(call0, call1);
    remainder >>= 16;

    work = 8;
    call1 = *(int *)(actor + 8);
    work -= remainder;
    work <<= 16;
    call1 += work;
    temp = *(int *)(actor + 0xc);
    work = *(int *)(actor + 0x10);
    call0 = actor;
    _Actor_TravelTo(call0, call1, temp, work);
    call0 = actor;
    _Actor_WaitMovement(call0);

    call0 = (unsigned char *)actorIDReg;
    call1 = valueReg;
    Func_8092b08((int)call0, call1);

    work = zOffsetReg;
    call0 = (unsigned char *)(work << 16);
    work = *(int *)(actor + 0x10);
    call1 = *(int *)(actor + 8);
    work += (int)call0;
    temp = *(int *)(actor + 0xc);
    call0 = actor;
    _Actor_TravelTo(call0, call1, temp, work);
done:
    return;
}
