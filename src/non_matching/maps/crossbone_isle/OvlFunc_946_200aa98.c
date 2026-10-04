extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200aa98(void)
{
    int x19;
    int z19;
    int z18;
    int z9;
    int new_x;
    int z_pos;

    x19 = ((struct Actor *)__MapActor_GetActor(0x13))->pos.x >> 20;
    z19 = ((struct Actor *)__MapActor_GetActor(0x13))->pos.z >> 20;
    z18 = ((struct Actor *)__MapActor_GetActor(0x12))->pos.z >> 20;
    z9 = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;

    if (x19 == 3) {
        if (z18 == 15) {
            OvlFunc_946_2009774(0x13, 0x20, 0);
        } else if (z9 == 15) {
            OvlFunc_946_2009774(0x13, 0x50, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x70, 0);
            OvlFunc_946_2009774(0x13, 0x30, 0);
        }
    } else if (x19 == 5) {
        if (z18 == 15) {
            return;
        }
        if (z9 == 15) {
            OvlFunc_946_2009774(0x13, 0x30, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x80, 0);
        }
    } else if (x19 == 6) {
        if (z9 == 15) {
            OvlFunc_946_2009774(0x13, 0x20, 0);
        } else {
            OvlFunc_946_2009774(0x13, 0x70, 0);
        }
    } else if (x19 == 8) {
        if (z9 == 15) {
            return;
        }
        OvlFunc_946_2009774(0x13, 0x50, 0);
    } else if (x19 == 9) {
        OvlFunc_946_2009774(0x13, 0x40, 0);
    } else if (x19 == 12) {
        OvlFunc_946_2009774(0x13, 0x10, 0);
    }

    __WaitFrames(2);
    new_x = ((struct Actor *)__MapActor_GetActor(0x13))->pos.x >> 20;
    z_pos = z19 - 1;
    __Func_8010704(x19, z_pos, 1, 3, new_x, z_pos);
    __Func_8010704(0, 0, 1, 3, x19, z_pos);
}
