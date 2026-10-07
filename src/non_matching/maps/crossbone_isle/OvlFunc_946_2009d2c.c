extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_2009d2c(void)
{
    int x10;
    int z10;
    int x13;
    int x15;
    int x;

    x10 = ((struct Actor *)__MapActor_GetActor(10))->pos.x >> 20;
    z10 = ((struct Actor *)__MapActor_GetActor(10))->pos.z >> 20;
    x13 = ((struct Actor *)__MapActor_GetActor(13))->pos.x >> 20;
    x15 = ((struct Actor *)__MapActor_GetActor(15))->pos.x >> 20;

    if (z10 == 18) {
        if ((u32)(x15 - 31) <= 2 || (u32)(x13 - 31) <= 2) {
            OvlFunc_946_2009774(10, 0, -0x80);
        } else {
            OvlFunc_946_2009774(10, 0, -0x70);
            OvlFunc_946_2009774(10, 0, -0x40);
        }
    } else if (z10 == 10) {
        if ((u32)(x15 - 31) <= 2 || (u32)(x13 - 31) <= 2) {
            return;
        }
        OvlFunc_946_2009774(10, 0, -0x30);
    } else if (z10 == 7) {
        return;
    }

    __WaitFrames(2);
    x = x10 - 1;
    __Func_8010704(x, z10, 3, 1, x, ((struct Actor *)__MapActor_GetActor(10))->pos.z >> 20);
    __Func_8010704(0, 0, 3, 1, x, z10);
}
