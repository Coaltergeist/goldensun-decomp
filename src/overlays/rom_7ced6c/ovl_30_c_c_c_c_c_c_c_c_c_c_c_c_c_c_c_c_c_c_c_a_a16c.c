typedef unsigned char u8;
typedef signed int s32;
extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(s32 actorId, s32 value, s32 zero);
extern void __WaitFrames(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_946_200a16c(void)
{
    register s32 x asm("r6");
    register s32 y asm("r5");
    register u8 *actor asm("r0") = __MapActor_GetActor(0xd);
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #0xd\n\t"
        "asr r6, r3, #20"
        : "+r" (actor), "=r" (x) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #0xf\n\t"
        "asr r5, r3, #20"
        : "+r" (actor), "=r" (y) : : "r3");
    __MapActor_GetActor_NoArgs();

    if (x == 0x19) {
        OvlFunc_946_2009774(0xd, 0x60, 0);
        OvlFunc_946_2009774(0xd, 0x50, 0);
    } else if (x == 0x1f) {
        OvlFunc_946_2009774(0xd, 0x50, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(0xd, 0x20, 0);
    } else if (x == 0x23) {
        OvlFunc_946_2009774(0xd, 0x10, 0);
    } else if (x == 0x24) {
        return;
    }

    __WaitFrames(2);
    {
        s32 actorX = *(s32 *)(__MapActor_GetActor(0xd) + 8) >> 20;
        y--;
        __Func_8010704(x, y, 1, 3, actorX, y);
        __Func_8010704(0, 0, 1, 3, x, y);
    }
}
