typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor);
extern u8 *MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void __Func_8092b08(int actor, int value);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void MapActor_SetSpeed_NoArgs(void) asm("__MapActor_SetSpeed");
extern void __PlaySound(int sound);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __Func_8092158(int actor, int x, int y);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void MapActor_SetPos_NoArgs(void) asm("__MapActor_SetPos");

void OvlFunc_927_2008d90(int actorId, int x, int y, int value)
{
    register int actorIdReg asm("r6");
    register int xReg asm("r8");
    register int yReg asm("r10");
    register int valueReg asm("r9");
    register u8 *actor asm("r5");

    asm volatile(
        "mov r6, r0\n\t"
        "mov r10, r2\n\t"
        "mov r9, r3\n\t"
        "mov r8, r1"
        : "=r"(actorIdReg), "=r"(yReg), "=r"(valueReg), "=r"(xReg));
    actor = MapActor_GetActor_NoArgs();

    __Func_8092b08(actorIdReg, 1);
    asm volatile(
        "mov r1, #0xc0\n\t"
        "mov r2, #0xc0\n\t"
        "lsl r2, #9\n\t"
        "mov r0, r6\n\t"
        "lsl r1, #10"
        :
        :
        : "r0", "r1", "r2");
    MapActor_SetSpeed_NoArgs();
    __PlaySound(0x98);
    *(int *)(actor + 0x28) = valueReg;
    *(int *)(actor + 0x48) = 0x8000;
    *(int *)(actor + 0x44) = 0;
    __Actor_SetSpriteFlags(actor, 0);
    __Func_8092158(actorIdReg, xReg, yReg);
    asm volatile(
        "mov r3, r8\n\t"
        "lsl r3, #16\n\t"
        "mov r8, r3\n\t"
        "mov r3, r10\n\t"
        "lsl r3, #16\n\t"
        "mov r10, r3\n\t"
        "mov r0, r6\n\t"
        "mov r1, r8\n\t"
        "mov r2, r10"
        : "+r"(xReg), "+r"(yReg)
        : "r"(actorIdReg)
        : "r0", "r1", "r2", "r3");
    MapActor_SetPos_NoArgs();
    __Actor_SetSpriteFlags(actor, 1);
    *(int *)(actor + 0x48) = 0x10000;
}
