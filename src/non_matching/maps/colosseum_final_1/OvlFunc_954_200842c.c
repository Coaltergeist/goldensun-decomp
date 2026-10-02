extern u8 gState[];
extern void OvlFunc_954_200833c(int, int, int);

void OvlFunc_954_200842c(void)
{
    struct Actor *actor;
    int z;
    int val;

    actor = (struct Actor *)__MapActor_GetActor(*(int *)(gState + 0x1f4));
    z = actor->pos.z >> 20;
    val = -0x30;
    if (z <= 8) {
        val = 0x30;
    }
    __Func_8010704(0x43, 8, 3, 1, 0x40, z);
    OvlFunc_954_200833c(0x11, 0, val);
    actor = (struct Actor *)__MapActor_GetActor(0x11);
    z = actor->pos.z >> 20;
    __Func_8010704(0x40, 0x18, 3, 1, 0x40, z);
}
