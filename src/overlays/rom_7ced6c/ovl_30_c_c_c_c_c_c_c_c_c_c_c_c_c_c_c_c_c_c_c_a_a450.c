typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern u8 *MapActor_GetActor_NoArgs(void) asm("__MapActor_GetActor");
extern void OvlFunc_946_2009774(int actorId, int arg1, int arg2);
extern void __WaitFrames(int frames);
extern void __Func_8010704(int x, int z, int arg2, int arg3,
                          int stackX, int stackZ);

void OvlFunc_946_200a450(void)
{
    register int x asm("r5");
    register int z asm("r6");
    __MapActor_GetActor(0x11);
    asm volatile(
        "ldr r3, [r0, #8]\n\t"
        "mov r0, #0x11\n\t"
        "asr %0, r3, #20"
        : "=r"(x)
        :
        : "r0", "r3");
    MapActor_GetActor_NoArgs();
    asm volatile(
        "ldr r3, [r0, #0x10]\n\t"
        "asr %0, r3, #20"
        : "=r"(z)
        :
        : "r3");

    if (z == 0xf)
        OvlFunc_946_2009774(0x11, 0, 0x40);
    else if (z == 0x12)
        OvlFunc_946_2009774(0x11, 0, 0x10);
    else if (z == 0x13)
        return;

    __WaitFrames(2);
    x--;
    __Func_8010704(x, z, 3, 1, x,
                   *(int *)(__MapActor_GetActor(0x11) + 0x10) >> 20);
    __Func_8010704(0, 0, 3, 1, x, z);
}

asm(".short 0");
