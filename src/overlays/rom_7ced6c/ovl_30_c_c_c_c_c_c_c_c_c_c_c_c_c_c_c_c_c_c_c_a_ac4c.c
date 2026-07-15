typedef unsigned char u8;
typedef unsigned int u32;
typedef signed int s32;
extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(s32 actorId, s32 value, s32 zero);
extern void __WaitFrames(s32 frames);
extern void __Func_8010704(s32, s32, s32, s32, s32, s32);

void OvlFunc_946_200ac4c(void)
{
    register s32 v6 asm("r6");
    register s32 v7 asm("r7");
    register s32 v5 asm("r5");
    register u8 *actor asm("r0") = __MapActor_GetActor(0xe);
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #0xe\n\t"
        "asr r6, r3, #20"
        : "+r" (actor), "=r" (v6) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #0x12\n\t"
        "asr r7, r3, #20"
        : "+r" (actor), "=r" (v7) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "mov r0, #9\n\t"
        "asr r5, r3, #20"
        : "+r" (actor), "=r" (v5) : : "r3");
    actor = __MapActor_GetActor_NoArgs();
    {
        s32 d = *(s32 *)(actor + 0x10) >> 20;

        if (v6 == 6) {
            if ((u32)(d - 0xc) <= 2) {
                OvlFunc_946_2009774(0xe, 0x20, 0);
            } else {
                register s32 d3 asm("r3");
                asm volatile(
                    "add r3, r5, #0\n\t"
                    "sub r3, #0xc"
                    : "=r" (d3) : "r" (v5));
                if ((u32)d3 <= 2) {
                    OvlFunc_946_2009774(0xe, 0x40, 0);
                } else {
                    OvlFunc_946_2009774(0xe, 0x70, 0);
                }
            }
        } else if (v6 == 8) {
            if ((u32)(d - 0xc) <= 2) return;
            OvlFunc_946_2009774(0xe, 0x50, 0);
        } else if (v6 == 9) {
            if ((u32)(d - 0xc) <= 2) return;
            OvlFunc_946_2009774(0xe, 0x40, 0);
        } else if (v6 == 0xc) {
            OvlFunc_946_2009774(0xe, 0x10, 0);
        } else if (v6 == 0xd) {
            return;
        }
    }

    __WaitFrames(2);
    {
        s32 actorX = *(s32 *)(__MapActor_GetActor(0xe) + 8) >> 20;
        v5 = v7 - 1;
        __Func_8010704(v6, v5, 1, 3, actorX, v5);
        __Func_8010704(0, 0, 1, 3, v6, v5);
    }
}
