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

void OvlFunc_946_200ab80(void)
{
    int x = __MapActor_GetActor(14)->x >> 20;
    int y = __MapActor_GetActor(14)->y >> 20;
    unsigned int b = __MapActor_GetActor(18)->y >> 20;
    unsigned int a = __MapActor_GetActor(9)->y >> 20;
    int y2;

    if (x == 13) {
        if (a - 12 <= 2)
            OvlFunc_946_2009774(14, -0x10, 0);
        else if (b - 12 <= 2)
            OvlFunc_946_2009774(14, -0x40, 0);
        else
            OvlFunc_946_2009774(14, -0x70, 0);
    } else if (x == 12) {
        if (a - 12 <= 2)
            return;
        if (b - 12 <= 2)
            OvlFunc_946_2009774(14, -0x30, 0);
        else
            OvlFunc_946_2009774(14, -0x60, 0);
    } else if (x == 9) {
        if (b - 12 <= 2)
            return;
        OvlFunc_946_2009774(14, -0x30, 0);
    } else if (x == 8) {
        if (b - 12 <= 2)
            return;
        OvlFunc_946_2009774(14, -0x20, 0);
    } else if (x == 6) {
        return;
    }

    __WaitFrames(2);
    y2 = y - 1;
    __Func_8010704(x, y2, 1, 3, __MapActor_GetActor(14)->x >> 20, y2);
    __Func_8010704(0, 0, 1, 3, x, y2);
}
