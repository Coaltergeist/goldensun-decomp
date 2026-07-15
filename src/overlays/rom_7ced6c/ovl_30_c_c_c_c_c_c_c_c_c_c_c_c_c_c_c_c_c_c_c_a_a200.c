typedef unsigned char u8;
typedef int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(s32 actorId, s32 arg1, s32 arg2);
extern void __WaitFrames(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_946_200a200(void)
{
    register s32 x asm("r6");
    register s32 z asm("r7");
    register s32 z2 asm("r5");
    register s32 z3 asm("r3");
    register u8 *actor asm("r0") = __MapActor_GetActor(0xf);

    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #0xf\n\t"
        "asr r6, r3, #20"
        : "+r" (actor), "=r" (x) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #8\n\t"
        "asr r7, r3, #20"
        : "+r" (actor), "=r" (z) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #0xa\n\t"
        "asr r5, r3, #20"
        : "+r" (actor), "=r" (z2) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "asr r3, r3, #20"
        : "=r" (z3) : "r" (actor));

    if (x == 0x23) {
        if (z3 == 7) {
            OvlFunc_946_2009774(0xf, -0x10, 0);
            goto wait;
        }
        if (z2 == 7) {
            OvlFunc_946_2009774(0xf, -0x70, 0);
            goto wait;
        }
        OvlFunc_946_2009774(0xf, -0x60, 0);
        OvlFunc_946_2009774(0xf, -0x50, 0);
        goto wait;
    }
    if (x == 0x22) {
        if (z3 == 7) {
            return;
        }
        OvlFunc_946_2009774(0xf, -0x60, 0);
        OvlFunc_946_2009774(0xf, -0x40, 0);
        goto wait;
    }
    if (x == 0x21) {
        OvlFunc_946_2009774(0xf, -0x90, 0);
        goto wait;
    }
    if (x == 0x1f) {
        OvlFunc_946_2009774(0xf, -0x50, 0);
        goto wait;
    }
    if (x == 0x1e) {
        OvlFunc_946_2009774(0xf, -0x60, 0);
        goto wait;
    }
    if (x == 0x18) {
        return;
    }
    goto wait;

wait:
    __WaitFrames(2);
    {
        s32 zLate = *(s32 *)(__MapActor_GetActor(0xf) + 8) >> 20;
        z2 = z - 1;
        __Func_8010704(x, z2, 1, 3, zLate, z2);
        __Func_8010704(0, 0, 1, 3, x, z2);
    }
}
