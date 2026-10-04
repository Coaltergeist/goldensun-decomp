extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_2009c84(void)
{
    int x;
    int z;
    int other_x;

    x = ((struct Actor *)__MapActor_GetActor(8))->pos.x >> 20;
    z = ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20;
    other_x = ((struct Actor *)__MapActor_GetActor(0xc))->pos.x >> 20;

    if (z == 7) {
        if (other_x == 0x18) {
            OvlFunc_946_2009774(8, 0, 0x30);
        } else {
            OvlFunc_946_2009774(8, 0, 0x50);
            OvlFunc_946_2009774(8, 0, 0x70);
        }
    } else if (z == 10) {
        if (other_x == 0x18) {
            return;
        }
        OvlFunc_946_2009774(8, 0, 0x90);
    } else if (z == 14) {
        OvlFunc_946_2009774(8, 0, 0x50);
    } else {
        return;
    }

    __WaitFrames(2);
    x--;
    __Func_8010704(x, z, 3, 1, x, ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x, z);
}
