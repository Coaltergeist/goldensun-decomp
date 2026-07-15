typedef unsigned char u8;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(s32 actorId, s32 arg1, s32 arg2);
extern void OvlFunc_946_2009b14(void);
extern void __WaitFrames(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_946_2009bbc(void)
{
    register s32 y asm("r7");
    register s32 sw asm("r6");
    register s32 p3 asm("r5");
    register s32 p4 asm("r3");
    register u8 *actor asm("r0") = __MapActor_GetActor(8);

    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #8\n\t"
        "asr r7, r3, #20"
        : "+r" (actor), "=r" (y) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #0xc\n\t"
        "asr r6, r3, #20"
        : "+r" (actor), "=r" (sw) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #0xf\n\t"
        "asr r5, r3, #20"
        : "+r" (actor), "=r" (p3) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "asr r3, r3, #20"
        : "=r" (p4) : "r" (actor));

    if (sw == 0x13) {
        if (p3 == 0x18) {
            OvlFunc_946_2009774(8, 0, -0x50);
        } else if (p4 == 0x18) {
            OvlFunc_946_2009774(8, 0, -0x70);
            OvlFunc_946_2009774(8, 0, -0x20);
        } else {
            OvlFunc_946_2009774(8, 0, -0x50);
            OvlFunc_946_2009774(8, 0, -0x70);
        }
    } else if (sw == 0xe) {
        if (p3 == 0x18) {
            return;
        } else if (p4 == 0x18) {
            OvlFunc_946_2009774(8, 0, -0x40);
        } else {
            OvlFunc_946_2009774(8, 0, -0x70);
        }
    } else if (sw == 0xa) {
        if (p4 == 0x18) {
            return;
        }
        OvlFunc_946_2009774(8, 0, -0x30);
    } else {
        OvlFunc_946_2009b14();
        return;
    }

    __WaitFrames(2);
    {
        s32 z = *(s32 *)(__MapActor_GetActor(8) + 0x10) >> 20;
        s32 xm1 = y - 1;
        __Func_8010704(xm1, sw, 3, 1, xm1, z);
        __Func_8010704(0, 0, 3, 1, xm1, sw);
    }
}
