extern void OvlFunc_946_2009774(int, int, int);
extern void __WaitFrames(int);

void OvlFunc_946_2009bbc(void)
{
    int actor8_x;
    int actor8_z;
    int actor12_x;
    int actor15_x;
    int val;
    int x;
    int new_z;

    actor8_x = ((struct Actor *)__MapActor_GetActor(8))->pos.x >> 20;
    actor8_z = ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20;
    actor12_x = ((struct Actor *)__MapActor_GetActor(12))->pos.x >> 20;
    actor15_x = ((struct Actor *)__MapActor_GetActor(15))->pos.x >> 20;

    if (actor8_z == 19) {
        if (actor12_x == 24) {
            val = 0x50;
        } else if (actor15_x == 24) {
            OvlFunc_946_2009774(8, 0, -0x70);
            val = 0x20;
        } else {
            OvlFunc_946_2009774(8, 0, -0x50);
            val = 0x70;
        }
    } else if (actor8_z == 14) {
        if (actor12_x == 24) {
            return;
        }
        if (actor15_x == 24) {
            val = 0x40;
        } else {
            val = 0x70;
        }
    } else if (actor8_z == 10) {
        if (actor15_x == 24) {
            return;
        }
        val = 0x30;
    } else {
        OvlFunc_946_2009b14();
        return;
    }

    OvlFunc_946_2009774(8, 0, -val);
    __WaitFrames(2);
    new_z = ((struct Actor *)__MapActor_GetActor(8))->pos.z >> 20;
    x = actor8_x - 1;
    __Func_8010704(x, actor8_z, 3, 1, x, new_z);
    __Func_8010704(0, 0, 3, 1, x, actor8_z);
}
