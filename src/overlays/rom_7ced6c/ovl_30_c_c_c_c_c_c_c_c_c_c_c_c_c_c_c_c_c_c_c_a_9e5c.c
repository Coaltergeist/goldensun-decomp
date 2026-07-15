typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int id);
extern void OvlFunc_946_2009774(int actor, int speed, int unused);
extern void __WaitFrames(int frames);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);

void OvlFunc_946_2009e5c(void)
{
    register int x asm("r6");
    register int y asm("r5");
    u8 *actor;
    register int otherY asm("r3");

    actor = __MapActor_GetActor(0xb);
    {
        register int nextActor asm("r0");
        asm volatile(
            "ldr r3, [r0, #8]\n\t"
            "mov r0, #0xb\n\t"
            "asr r6, r3, #20"
            : "=r"(x), "=r"(nextActor)
            : "r"(actor)
            : "r3");
        actor = __MapActor_GetActor(nextActor);
    }
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "asr r5, r3, #20"
        : "=r"(y)
        : "r"(actor)
        : "r3");

    if (x == 0x1e)
        return;

    if (x == 0x22) {
        actor = __MapActor_GetActor(0xa);
        asm volatile(
            "ldr r3, [r0, #0x10]\n\t"
            "asr r3, #20"
            : "=r"(otherY)
            : "r"(actor));
        if (otherY == 0x12)
            return;
        OvlFunc_946_2009774(0xb, -0x40, 0);
    } else if (x == 0x24) {
        actor = __MapActor_GetActor(0xa);
        asm volatile(
            "ldr r3, [r0, #0x10]\n\t"
            "asr r3, #20"
            : "=r"(otherY)
            : "r"(actor));
        if (otherY == 0x12)
            OvlFunc_946_2009774(0xb, -0x20, 0);
        else
            OvlFunc_946_2009774(0xb, -0x60, 0);
    }

    __WaitFrames(2);
    actor = __MapActor_GetActor(0xb);
    y--;
    __Func_8010704(x, y, 1, 3, *(int *)(actor + 8) >> 20, y);
    __Func_8010704(0, 0, 1, 3, x, y);
}
