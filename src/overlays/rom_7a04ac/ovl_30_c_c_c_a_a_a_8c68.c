typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern void OvlFunc_913_20088c0(s32 actorId);
extern s32 __GetFlag(s32 flag);
extern u8 *__MapActor_GetActor(s32 actorId);
extern void __Func_8010704_abi(void) asm("__Func_8010704");
extern void OvlFunc_913_2008244_abi(void) asm("OvlFunc_913_2008244");
extern void __Actor_SetSpriteFlags(u8 *actor, s32 flags);
extern void OvlFunc_913_2008d3c(void);
extern void __MapActor_SetPos(s32 actorId, s32 x, s32 y);

s32 OvlFunc_913_2008c68(void)
{
    u8 *actor;
    s32 stackArg0;
    s32 stackArg1;

    OvlFunc_913_20088c0(0xa);
    if (__GetFlag(0x200) != 0) {
        actor = __MapActor_GetActor(0xa);
        asm volatile("mov r3, #2\n\tadd %0, #0x23\n\tstrb r3, [%0]"
                     : "+r" (actor) : : "r3", "memory");
        asm volatile("mov r2, #0x11\n\tmov r3, #0x13\n\tstr r3, %1\n\t"
                     "str r2, %0\n\tmov r0, #0\n\tmov r1, #0x11\n\t"
                     "mov r2, #2\n\tmov r3, #4"
                     : "=m" (stackArg0), "=m" (stackArg1)
                     : : "r0", "r1", "r2", "r3", "memory");
        __Func_8010704_abi();
        asm volatile("mov r3, #4\n\tstr r3, %1\n\tmov r1, #0x14\n\t"
                     "mov r2, #0x11\n\tmov r3, #1\n\tmov r5, #0\n\t"
                     "mov r0, #2\n\tstr r5, %0"
                     : "=m" (stackArg0), "=m" (stackArg1)
                     : : "r0", "r1", "r2", "r3", "r5", "memory");
        OvlFunc_913_2008244_abi();
        actor = __MapActor_GetActor(0xa);
        __Actor_SetSpriteFlags(actor, 0);
    }
    OvlFunc_913_20088c0(8);
    OvlFunc_913_20088c0(9);
    {
        register s32 stateVal asm("r3") = (s32) gState;
        asm volatile("mov r2, #0xe1\n\tlsl r2, #1\n\tadd r3, r2\n\t"
                     "mov r2, #0\n\tldrsh r3, [r3, r2]"
                     : "+r" (stateVal) : : "r2");
        if (stateVal == 4 && __GetFlag(0x843) == 0) {
            OvlFunc_913_2008d3c();
        }
    }
    if (__GetFlag(0x845) != 0) {
        __MapActor_SetPos(0x11, 0, 0);
        __MapActor_SetPos(0x12, 0, 0);
        __MapActor_SetPos(0x13, 0, 0);
        __MapActor_SetPos(0x14, 0, 0);
        __MapActor_SetPos(0x15, 0, 0);
    }
    return 0;
}
