int OvlFunc_959_2009918(unsigned int actor)
{
    struct Actor *a;
    struct Actor *p;
    int az, ax, pz, px;
    int dx, dz;

    a = (struct Actor *)__MapActor_GetActor(actor);
    p = (struct Actor *)__MapActor_GetActor(0);

    az = a->pos.z / 0x100000;
    ax = a->pos.x / 0x100000;
    pz = p->pos.z / 0x100000;
    px = p->pos.x / 0x100000;

    dx = ax - px;
    if (dx < 0)
        dx = -dx;
    dz = (az + 1) - pz;
    if (dz < 0)
        dz = -dz;

    return dx + dz <= 4;
}
