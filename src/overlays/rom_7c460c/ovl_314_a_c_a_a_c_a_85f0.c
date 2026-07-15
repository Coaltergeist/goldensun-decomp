typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __ClearFlag(int flag);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Actor_SetColorswap(u8 *actor, int value);
extern void __StopTask(void *task);
extern void __SetFlag(int flag);
extern void OvlFunc_939_2008468(void);

void OvlFunc_939_20085f0(void)
{
    u8 *actor;

    __MapActor_GetActor(0);
    __MapActor_SetPos(0x13, 0, 0);
    __MapActor_SetPos(8, 0, 0);
    {
        register int stack0 asm("r3") = 0x2E;
        register int stack1 asm("r2") = 4;
        __Func_80105d4(0x26, 0x26, 1, 1, stack0, stack1);
    }
    {
        register int stack0 asm("r3") = 0xD;
        register int stack1 asm("r2") = 3;
        __Func_8010704(0x25, 0x25, 3, 3, stack0, stack1);
    }
    {
        register int stack0 asm("r3") = 0xE;
        register int stack1 asm("r2") = 2;
        __Func_8010704(0x25, 0x25, 1, 1, stack0, stack1);
    }
    {
        register int stack0 asm("r3") = 7;
        register int stack1 asm("r2") = 0x10;
        __Func_8010704(8, 0x10, 1, 1, stack0, stack1);
    }
    __Func_808edac(0x66, 0, 0);
    {
        register int stack0 asm("r3") = 1;
        register int stack1 asm("r2") = 0xF;
        __Func_80105d4(0x20, 0x2A, 3, 2, stack0, stack1);
    }
    __ClearFlag(0x80 << 2);
    __MapActor_SetAnim(8, 1);
    actor = __MapActor_GetActor(8);
    *(u32 *)(actor + 0x6C) = 0;
    actor = __MapActor_GetActor(8);
    __Actor_SetColorswap(actor, 0);
    __StopTask(&OvlFunc_939_2008468);
    __SetFlag(0x201);
}
