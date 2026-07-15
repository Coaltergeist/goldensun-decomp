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

void OvlFunc_946_2009ef4(void)
{
    int x = __MapActor_GetActor(11)->x >> 20;
    int y = __MapActor_GetActor(11)->y >> 20;

    if (x != 0x24) {
        if (x == 0x1e) {
            if ((__MapActor_GetActor(10)->y >> 20) == 0x12)
                return;
            OvlFunc_946_2009774(11, 0x60, 0);
        } else if (x == 0x22) {
            OvlFunc_946_2009774(11, 0x20, 0);
        }
        __WaitFrames(2);
        y--;
        __Func_8010704(x, y, 1, 3,
                       __MapActor_GetActor(11)->x >> 20, y);
        __Func_8010704(0, 0, 1, 3, x, y);
    }
}
