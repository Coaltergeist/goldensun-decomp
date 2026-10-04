extern void OvlFunc_946_2009774(int, int, int);

void OvlFunc_946_200add0(void)
{
    int x = ((struct Actor *)__MapActor_GetActor(0x10))->pos.x >> 20;
    int z = ((struct Actor *)__MapActor_GetActor(0x10))->pos.z >> 20;
    unsigned int z9 = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;

    if (x == 6) {
        if (z9 - 9 <= 2) {
            OvlFunc_946_2009774(0x10, 0x20, 0);
        } else {
            OvlFunc_946_2009774(0x10, 0x70, 0);
        }
    } else if (x == 8) {
        if (z9 - 9 <= 2) {
            return;
        }
        OvlFunc_946_2009774(0x10, 0x50, 0);
    } else if (x == 9) {
        OvlFunc_946_2009774(0x10, 0x40, 0);
    } else if (x == 12) {
        OvlFunc_946_2009774(0x10, 0x10, 0);
    } else if (x == 13) {
        return;
    }

    __WaitFrames(2);
    z--;
    __Func_8010704(x, z, 1, 3, ((struct Actor *)__MapActor_GetActor(0x10))->pos.x >> 20, z);
    __Func_8010704(0, 0, 1, 3, x, z);
}
