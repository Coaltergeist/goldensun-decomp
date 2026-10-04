extern void OvlFunc_946_2009774(int, int, int);

void OvlFunc_946_200a16c(void)
{
    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(0xd))->pos.x >> 20;
    z = ((struct Actor *)__MapActor_GetActor(0xd))->pos.z >> 20;
    __MapActor_GetActor(0xf);

    if (x == 0x19) {
        OvlFunc_946_2009774(0xd, 0x60, 0);
        OvlFunc_946_2009774(0xd, 0x50, 0);
    } else if (x == 0x1f) {
        OvlFunc_946_2009774(0xd, 0x50, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(0xd, 0x20, 0);
    } else if (x == 0x23) {
        OvlFunc_946_2009774(0xd, 0x10, 0);
    } else if (x == 0x24) {
        return;
    }

    __WaitFrames(2);
    z--;
    __Func_8010704(x, z, 1, 3, ((struct Actor *)__MapActor_GetActor(0xd))->pos.x >> 20, z);
    __Func_8010704(0, 0, 1, 3, x, z);
}
