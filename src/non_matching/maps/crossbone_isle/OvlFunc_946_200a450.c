extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200a450(void)
{
    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(0x11))->pos.x >> 20;
    z = ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20;
    if (z == 0xf) {
        OvlFunc_946_2009774(0x11, 0, 0x40);
    } else if (z == 0x12) {
        OvlFunc_946_2009774(0x11, 0, 0x10);
    } else if (z == 0x13) {
        return;
    }
    __WaitFrames(2);
    x--;
    __Func_8010704(x, z, 3, 1, x, ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x, z);
}
