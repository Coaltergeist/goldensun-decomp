void OvlFunc_946_200a848(void)
{
    int x9 = ((struct Actor *)__MapActor_GetActor(9))->pos.x >> 20;
    int z9 = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;
    int x19 = ((struct Actor *)__MapActor_GetActor(19))->pos.x >> 20;
    int x14 = ((struct Actor *)__MapActor_GetActor(14))->pos.x >> 20;
    int x16 = ((struct Actor *)__MapActor_GetActor(16))->pos.x >> 20;
    int x;
    int z;

    if (z9 == 8) {
        if ((u32)(x16 - 9) <= 2) {
            return;
        }
        if ((u32)(x14 - 9) <= 2) {
            OvlFunc_946_2009774(9, 0, 0x30);
        } else {
            if ((u32)(x19 - 9) > 2) {
                OvlFunc_946_2009774(9, 0, 0x50);
            }
            OvlFunc_946_2009774(9, 0, 0x60);
        }
    } else if (z9 == 11) {
        if ((u32)(x14 - 9) <= 2) {
            return;
        }
        if ((u32)(x19 - 9) <= 2) {
            OvlFunc_946_2009774(9, 0, 0x30);
        } else {
            OvlFunc_946_2009774(9, 0, 0x80);
        }
    } else if (z9 == 12) {
        if ((u32)(x14 - 9) <= 2) {
            return;
        }
        if ((u32)(x19 - 9) <= 2) {
            OvlFunc_946_2009774(9, 0, 0x20);
        } else {
            OvlFunc_946_2009774(9, 0, 0x70);
        }
    } else if (z9 == 14) {
        if ((u32)(x19 - 9) <= 2) {
            return;
        }
        OvlFunc_946_2009774(9, 0, 0x50);
    } else if (z9 == 15) {
        OvlFunc_946_2009774(9, 0, 0x40);
    } else if (z9 == 18) {
        OvlFunc_946_2009774(9, 0, 0x10);
    }

    __WaitFrames(2);
    x = x9 - 1;
    z = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;
    __Func_8010704(x, z9, 3, 1, x, z);
    __Func_8010704(0, 0, 3, 1, x, z9);
}
