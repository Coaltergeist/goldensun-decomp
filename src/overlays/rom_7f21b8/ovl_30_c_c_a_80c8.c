typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;
extern u8 *__MapActor_GetActor(s32 actorId);
extern void __Func_80b0278(s32, s32);
extern s32 __GetFlag(s32 flag);
extern void __MessageID(s32 message);
extern void __ActorMessage(s32 actorId, s32 value);
extern void __Func_8092c40(s32 actorId, s32 value);
extern s32 __Func_8091c7c(s32, s32);
extern void __CutsceneWait(s32 frames);

void OvlFunc_967_20080c8(s32 argument)
{
    register s32 actorId asm("r6") = argument;
    u8 *actor = __MapActor_GetActor(0);
    register u32 mask asm("r2");
    register u32 direction asm("r3") = *(u16 *)(actor + 6) + 0x2000;
    register u32 comparison asm("r2");
    asm volatile("ldr %0, =0xffffc000" : "=r" (mask));
    direction &= mask;
    direction <<= 16;
    comparison = 0xc0;
    comparison <<= 24;
    asm volatile(
        "cmp r3, r2\n\t"
        "bne .Lnormal96780c8"
        : "+r" (direction), "+r" (comparison));
    {
        register s32 kind asm("r0") = 0x20;
        register s32 actorArg asm("r1");
        asm volatile("" : "+r" (kind));
        actorArg = actorId;
        __Func_80b0278(kind, actorArg);
    }
    asm volatile(
        "b .Lend96780c8\n\t"
        ".align 2, 0\n\t"
        ".pool\n"
        ".Lnormal96780c8:");
    {
        if (__GetFlag(0x9a7) != 0) {
            __MessageID(0x28f0);
            __ActorMessage(actorId, 0);
        } else {
            register s32 message asm("r5") = 0x26e3;
            __MessageID(message);
            {
                register s32 zero asm("r1") = 0;
                register s32 actorArg asm("r0");
                asm volatile("" : "+r" (zero));
                actorArg = actorId;
                __Func_8092c40(actorArg, zero);
            }
            if (__Func_8091c7c(0, 0) == 0) {
                __CutsceneWait(10);
                __MessageID(message + 1);
            } else {
                __MessageID(message + 2);
            }
            __ActorMessage(actorId, 0);
        }
    }
    asm volatile(".Lend96780c8:");
}
