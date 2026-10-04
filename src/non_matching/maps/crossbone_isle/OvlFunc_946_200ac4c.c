extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200ac4c(void)
{
    int x14;
    int z14;
    int z18;
    int z9;

    x14 = ((struct Actor *)__MapActor_GetActor(14))->pos.x >> 20;
    z14 = ((struct Actor *)__MapActor_GetActor(14))->pos.z >> 20;
    z18 = ((struct Actor *)__MapActor_GetActor(18))->pos.z >> 20;
    z9 = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;

    if (x14 == 6) {
        if ((unsigned int)(z9 - 12) <= 2) {
            OvlFunc_946_2009774(14, 0x20, 0);
        } else if ((unsigned int)(z18 - 12) <= 2) {
            OvlFunc_946_2009774(14, 0x40, 0);
        } else {
            OvlFunc_946_2009774(14, 0x70, 0);
        }
    } else if (x14 == 8) {
        if ((unsigned int)(z9 - 12) <= 2) {
            return;
        }
        OvlFunc_946_2009774(14, 0x50, 0);
    } else if (x14 == 9) {
        if ((unsigned int)(z9 - 12) <= 2) {
            return;
        }
        OvlFunc_946_2009774(14, 0x40, 0);
    } else if (x14 == 12) {
        OvlFunc_946_2009774(14, 0x10, 0);
    } else if (x14 == 13) {
        return;
    }

    __WaitFrames(2);
    __Func_8010704(x14, z14 - 1, 1, 3, ((struct Actor *)__MapActor_GetActor(14))->pos.x >> 20, z14 - 1);
    __Func_8010704(0, 0, 1, 3, x14, z14 - 1);
}
