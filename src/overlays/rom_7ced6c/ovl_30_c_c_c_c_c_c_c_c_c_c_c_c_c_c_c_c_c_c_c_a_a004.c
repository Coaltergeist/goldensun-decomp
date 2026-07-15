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

void OvlFunc_946_200a004(void)
{
    int x = __MapActor_GetActor(12)->x >> 20;
    int y = __MapActor_GetActor(12)->y >> 20;

    if (x == 0x18) {
        OvlFunc_946_2009774(12, 0x60, 0);
        OvlFunc_946_2009774(12, 0x60, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(12, 0x20, 0);
    } else if (x == 0x24) {
        return;
    }

    __WaitFrames(2);
    y--;
    __Func_8010704(x, y, 1, 3,
                   __MapActor_GetActor(12)->x >> 20, y);
    __Func_8010704(0, 0, 1, 3, x, y);
}
