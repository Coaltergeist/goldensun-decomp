typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __SetFlag(int flag);

void OvlFunc_935_20085ec(void)
{
    u8 *actor;
    register int sourceX asm("r3");
    register int sourceY asm("r2");

    __MapActor_GetActor(0x13);
    asm volatile("mov %1, #0x1a\n\t"
                 "mov %2, #0x20\n\t"
                 "mov %0, r0"
                 : "=r"(actor), "=r"(sourceX), "=r"(sourceY));
    __Func_8010704(0x1a, 0x1e, 1, 1, sourceX, sourceY);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        __MapActor_GetActor(0x13)[0x55] = 0;
        actor[0x23] = 1;
    }
    __SetFlag(0x203);
}
