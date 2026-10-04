extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_2009de0(void)
{
    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(10))->pos.x >> 20;
    z = ((struct Actor *)__MapActor_GetActor(10))->pos.z >> 20;

    if (z == 18) {
        return;
    }

    if (z == 10) {
        OvlFunc_946_2009774(10, 0, 0x80);
    } else {
        OvlFunc_946_2009774(10, 0, 0x70);
        OvlFunc_946_2009774(10, 0, 0x40);
    }

    __WaitFrames(2);
    x--;
    __Func_8010704(x, z, 3, 1, x, ((struct Actor *)__MapActor_GetActor(10))->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x, z);
}
