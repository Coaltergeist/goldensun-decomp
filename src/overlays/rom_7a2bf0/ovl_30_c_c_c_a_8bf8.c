typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *iwram_3001ebc;
extern void OvlFunc_915_20088c0(int actor);
extern int __GetFlag(int flag);
extern u8 *__MapActor_GetActor(int actor);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_915_2008244(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void OvlFunc_915_2008c8c(int actor);

int OvlFunc_915_2008bf8(void)
{
    *(u32 *)(iwram_3001ebc + 0x1c0) = 0x204;
    asm volatile(
        "mov r0, #0xa\n\t"
        "sub sp, #8\n\t"
        "bl OvlFunc_915_20088c0"
        : : : "r0", "r1", "r2", "r3", "cc", "memory");

    if (__GetFlag(0x201) != 0) {
        u8 *actor;
        __MapActor_GetActor(10)[0x23] = 2;
        asm volatile(
            "mov r2, #0x10\n\t"
            "mov r3, #0xb\n\t"
            "str r3, [sp]\n\t"
            "str r2, [sp, #4]\n\t"
            "mov r0, #0x20\n\t"
            "mov r1, #0x14\n\t"
            "mov r2, #2\n\t"
            "mov r3, #4\n\t"
            "bl __Func_8010704"
            : : : "r0", "r1", "r2", "r3", "cc", "memory");
        asm volatile(
            "mov r3, #4\n\t"
            "str r3, [sp]\n\t"
            "mov r1, #0xc\n\t"
            "mov r2, #0x10\n\t"
            "mov r3, #1\n\t"
            "mov r5, #0\n\t"
            "mov r0, #2\n\t"
            "str r5, [sp, #4]\n\t"
            "bl OvlFunc_915_2008244"
            : : : "r0", "r1", "r2", "r3", "r5", "cc", "memory");
        actor = __MapActor_GetActor(10);
        __Actor_SetSpriteFlags(actor, 0);
    }

    OvlFunc_915_20088c0(8);
    OvlFunc_915_20088c0(9);
    if (__GetFlag(0x845) == 0)
        OvlFunc_915_2008c8c(6);
    {
        register int result asm("r0");
        asm volatile("mov r0, #0\n\tadd sp, #8" : "=r" (result));
        return result;
    }
}
