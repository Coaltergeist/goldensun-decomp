typedef struct MapActor {
    unsigned char pad0[8];
    int x;
    unsigned char padC[4];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __Func_8092b08(int actorId, int value);
extern void __Func_8010704(int x, int y, int arg2, int arg3,
                           int stackX, int stackY);

void OvlFunc_965_200a820(void)
{
    MapActor *actor = __MapActor_GetActor(8);
    MapActor *actor9;
    register int x asm("r2");
    register int y asm("r3");

    __Func_8092b08(8, 1);
    __Func_8092b08(9, 1);
    __Func_8010704(0x45, 0x13, 3, 3, 5, 0x13);
    __Func_8010704(0x45, 0x13, 3, 3, 0x11, 0x13);
    x = actor->x >> 20;
    y = actor->y >> 20;
    __Func_8010704(3, 3, 1, 1, x, y);
    actor9 = __MapActor_GetActor(9);
    x = actor9->x >> 20;
    y = actor9->y >> 20;
    __Func_8010704(3, 3, 1, 1, x, y);
}
