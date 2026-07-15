typedef unsigned char u8;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(s32 actorId, s32 arg1, s32 arg2);
extern void __WaitFrames(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_946_2009c84(void)
{
    register s32 x asm("r5");
    register s32 y asm("r6");
    register s32 x2 asm("r3");
    register u8 *actor asm("r0") = __MapActor_GetActor(8);

    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #8\n\t"
        "asr r5, r3, #20"
        : "+r" (actor), "=r" (x) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #0xc\n\t"
        "asr r6, r3, #20"
        : "+r" (actor), "=r" (y) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "asr r3, r3, #20"
        : "=r" (x2) : "r" (actor));

    if (y == 7) {
        if (x2 == 0x18) {
            OvlFunc_946_2009774(8, 0, 0x30);
        } else {
            OvlFunc_946_2009774(8, 0, 0x50);
            OvlFunc_946_2009774(8, 0, 0x70);
        }
    } else if (y == 10) {
        if (x2 == 0x18) {
            return;
        }
        OvlFunc_946_2009774(8, 0, 0x90);
    } else if (y == 0xe) {
        OvlFunc_946_2009774(8, 0, 0x50);
    } else {
        return;
    }

    __WaitFrames(2);
    {
        s32 zLate = *(s32 *)(__MapActor_GetActor(8) + 0x10) >> 20;
        x--;
        __Func_8010704(x, y, 3, 1, x, zLate);
        __Func_8010704(0, 0, 3, 1, x, y);
    }
}
