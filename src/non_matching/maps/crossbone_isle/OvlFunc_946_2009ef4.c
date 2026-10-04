extern void OvlFunc_946_2009774(int, int, int);

void OvlFunc_946_2009ef4(void)
{
    int x;
    int z;

    x = ((struct Actor *)__MapActor_GetActor(0xb))->pos.x >> 20;
    z = ((struct Actor *)__MapActor_GetActor(0xb))->pos.z >> 20;
    if (x == 0x24) {
        return;
    }

    if (x == 0x1e) {
        if (((struct Actor *)__MapActor_GetActor(0xa))->pos.z >> 20 == 0x12) {
            return;
        }
        OvlFunc_946_2009774(0xb, 0x60, 0);
    } else if (x == 0x22) {
        OvlFunc_946_2009774(0xb, 0x20, 0);
    }

    __WaitFrames(2);
    z--;
    __Func_8010704(x, z, 1, 3, ((struct Actor *)__MapActor_GetActor(0xb))->pos.x >> 20, z);
    __Func_8010704(0, 0, 1, 3, x, z);
}
