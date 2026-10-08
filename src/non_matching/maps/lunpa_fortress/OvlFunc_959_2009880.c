int OvlFunc_959_2009880(unsigned int arg0)
{
    struct Actor *a;
    struct Actor *b;
    int az, ax, bz, bx;

    a = (struct Actor *)__MapActor_GetActor(arg0);
    b = (struct Actor *)__MapActor_GetActor(0);
    az = a->pos.z / 0x100000;
    ax = a->pos.x / 0x100000;
    bz = b->pos.z / 0x100000;
    bx = b->pos.x / 0x100000;
    if (ax - bx >= -6 && ax - bx <= 6 && az - 2 < bz && az + 2 > bz)
        return 1;
    return 0;
}
