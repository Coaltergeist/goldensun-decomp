void OvlFunc_946_200a4c8(void)
{
    struct Actor *actor;
    int x18;
    int z18;
    int x19;
    int x14;
    int x16;
    int x;

    x18 = ((struct Actor *)__MapActor_GetActor(18))->pos.x >> 20;
    z18 = ((struct Actor *)__MapActor_GetActor(18))->pos.z >> 20;
    x19 = ((struct Actor *)__MapActor_GetActor(19))->pos.x >> 20;
    x14 = ((struct Actor *)__MapActor_GetActor(14))->pos.x >> 20;
    x16 = ((struct Actor *)__MapActor_GetActor(16))->pos.x >> 20;

    if (z18 == 19) {
        if ((u32)(x19 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x10);
        } else if ((u32)(x14 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x40);
        } else if ((u32)(x16 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x70);
        } else {
            OvlFunc_946_2009774(18, 0, -0x40);
            OvlFunc_946_2009774(18, 0, -0x60);
        }
    } else if (z18 == 18) {
        if ((u32)(x19 - 6) <= 2) {
            return;
        }
        if ((u32)(x14 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x30);
        } else if ((u32)(x16 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x60);
        } else {
            OvlFunc_946_2009774(18, 0, -0x90);
        }
    } else if (z18 == 15) {
        if ((u32)(x14 - 6) <= 2) {
            return;
        }
        if ((u32)(x16 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x30);
        } else {
            OvlFunc_946_2009774(18, 0, -0x60);
        }
    } else if (z18 == 14) {
        if ((u32)(x14 - 6) <= 2) {
            return;
        }
        if ((u32)(x16 - 6) <= 2) {
            OvlFunc_946_2009774(18, 0, -0x20);
        } else {
            OvlFunc_946_2009774(18, 0, -0x50);
        }
    } else if (z18 == 12) {
        if ((u32)(x16 - 6) <= 2) {
            return;
        }
        OvlFunc_946_2009774(18, 0, -0x30);
    } else if (z18 == 11) {
        if ((u32)(x16 - 6) <= 2) {
            return;
        }
        OvlFunc_946_2009774(18, 0, -0x20);
    } else if (z18 == 9) {
        return;
    }

    __WaitFrames(2);
    actor = (struct Actor *)__MapActor_GetActor(18);
    x = x18 - 1;
    __Func_8010704(x, z18, 3, 1, x, actor->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x, z18);
}
