typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __SetFlag(int flag);

/* 石柱演出を配置し同行キャラを隠す */
void OvlFunc_936_200b970(void)
{
    register u8 *actor asm("r6") = __MapActor_GetActor(11);
    register int sourceY asm("r5") = 9;

    __Func_8010704(0, 0, 1, 1, sourceY, 14);
    __Func_8010704(0, 0, 1, 1, sourceY, 0x2d);
    if (actor != 0) {
        register u8 *field asm("r2");
        register int position asm("r3");
        register int delta asm("r2");

        __Actor_SetSpriteFlags(actor, 0);
        position = *(int *)(actor + 0xc);
        delta = (int)0xffe00000;
        asm volatile("" : "+r"(position), "+r"(delta));
        position += delta;
        field = actor;
        asm volatile("" : "+r"(field), "+r"(position));
        *(int *)(actor + 0xc) = position;
        field += 0x23;
        *field = 2;
    }
    __SetFlag(0x201);
}
