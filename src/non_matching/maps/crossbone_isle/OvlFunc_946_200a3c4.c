extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200a3c4(void)
{
    int x17;
    int z17;
    int x19;

    x17 = ((struct Actor *)__MapActor_GetActor(0x11))->pos.x >> 20;
    z17 = ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20;
    x19 = ((struct Actor *)__MapActor_GetActor(0x13))->pos.x >> 20;

    if (z17 == 0x13) {
        if ((unsigned int)(x19 - 3) <= 2) {
            OvlFunc_946_2009774(0x11, 0, -0x10);
        } else {
            OvlFunc_946_2009774(0x11, 0, -0x40);
        }
    } else if (z17 == 0x12) {
        if ((unsigned int)(x19 - 3) <= 2) {
            return;
        }
        OvlFunc_946_2009774(0x11, 0, -0x30);
    } else if (z17 == 0xf) {
        return;
    }

    __WaitFrames(2);
    x17--;
    __Func_8010704(x17, z17, 3, 1, x17, ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x17, z17);
}
