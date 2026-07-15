typedef struct MapActor {
    unsigned char pad0[8];
    int x;
    unsigned char padC[4];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern void OvlFunc_946_2009774(int actorId, int arg1, int arg2);
extern void __WaitFrames(int frames);
extern void __Func_8010704(int x, int y, int arg2, int arg3,
                           int stackX, int stackY);

void OvlFunc_946_2009de0(void)
{
    int x = __MapActor_GetActor(10)->x >> 20;
    int y = __MapActor_GetActor(10)->y >> 20;

    if (y != 0x12) {
        if (y == 10) {
            OvlFunc_946_2009774(10, 0, 0x80);
        } else {
            OvlFunc_946_2009774(10, 0, 0x70);
            OvlFunc_946_2009774(10, 0, 0x40);
        }
        __WaitFrames(2);
        x--;
        __Func_8010704(x, y, 3, 1, x,
                       __MapActor_GetActor(10)->y >> 20);
        __Func_8010704(0, 0, 3, 1, x, y);
    }
}
