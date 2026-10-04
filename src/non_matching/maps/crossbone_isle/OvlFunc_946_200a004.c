extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200a004(void)
{
    int x = ((struct Actor *)__MapActor_GetActor(0xc))->pos.x >> 20;
    int z = ((struct Actor *)__MapActor_GetActor(0xc))->pos.z >> 20;

    if (x == 0x18) {
        OvlFunc_946_2009774(0xc, 0x60, 0);
        OvlFunc_946_2009774(0xc, 0x60, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(0xc, 0x20, 0);
    } else if (x == 0x24) {
        return;
    }

    __WaitFrames(2);
    z--;
    __Func_8010704(x, z, 1, 3, ((struct Actor *)__MapActor_GetActor(0xc))->pos.x >> 20, z);
    __Func_8010704(0, 0, 1, 3, x, z);
}
