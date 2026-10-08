void OvlFunc_959_2009a44(void)
{
    struct Actor *actor;
    int x;
    int z;

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (API_GetFlag(0x358) == 0) {
        x = actor->pos.x / 0x100000;
        z = actor->pos.z / 0x100000;
        if (x == 0x10 && z > 0x37 && z <= 0x3a
            && (actor->facing == 0xc000 || actor->facing == 0x4000)) {
            *(unsigned short *)(iwram_3001ebc__a8 + 0xb6 * 2) = 0x28;
            OvlFunc_959_2008e80();
        }
    }
}
