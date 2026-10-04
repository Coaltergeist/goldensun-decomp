extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_200ad0c(void)
{
    int x16;
    int z16;
    u32 z18;
    u32 z9;
    int val;
    int z;

    x16 = ((struct Actor *)__MapActor_GetActor(0x10))->pos.x >> 20;
    z16 = ((struct Actor *)__MapActor_GetActor(0x10))->pos.z >> 20;
    z18 = ((struct Actor *)__MapActor_GetActor(0x12))->pos.z >> 20;
    z9 = ((struct Actor *)__MapActor_GetActor(9))->pos.z >> 20;

    if (x16 == 13) {
        if (z9 - 9 <= 2) {
            val = 0x10;
        } else if (z18 - 9 <= 2) {
            val = 0x40;
        } else {
            val = 0x70;
        }
        OvlFunc_946_2009774(0x10, -val, 0);
    } else if (x16 == 12) {
        if (z9 - 9 <= 2) {
            return;
        }
        if (z18 - 9 <= 2) {
            val = 0x30;
        } else {
            val = 0x60;
        }
        OvlFunc_946_2009774(0x10, -val, 0);
    } else if (x16 == 9) {
        if (z18 - 9 <= 2) {
            return;
        }
        val = 0x30;
        OvlFunc_946_2009774(0x10, -val, 0);
    } else if (x16 == 8) {
        val = 0x20;
        OvlFunc_946_2009774(0x10, -val, 0);
    } else if (x16 == 6) {
        return;
    }

    __WaitFrames(2);
    z = z16 - 1;
    __Func_8010704(x16, z, 1, 3, ((struct Actor *)__MapActor_GetActor(0x10))->pos.x >> 20, z);
    __Func_8010704(0, 0, 1, 3, x16, z);
}
