typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __SetFlag(int flag);

/* 橋上のタイルとイベントキャラを初期化 */
void OvlFunc_939_20083f4(void)
{
    register u8 *actor asm("r6") = __MapActor_GetActor(8);
    register int sourceY asm("r5") = 4;

    __MapActor_GetActor(0);
    __Func_8010704(0x11, 4, 1, 1, 14, sourceY);
    __Func_8010704(0x0f, 3, 1, 1, 15, sourceY);
    __Func_8010704(0x0f, 3, 1, 1, 13, sourceY);
    if (actor != 0) {
        register u8 *field asm("r2");

        __Actor_SetSpriteFlags(actor, 0);
        field = actor;
        asm volatile("" : "+r"(field));
        field += 0x55;
        *field = 2;
        field -= 0x32;
        *field = 1;
    }
    __SetFlag(0x200);
}
