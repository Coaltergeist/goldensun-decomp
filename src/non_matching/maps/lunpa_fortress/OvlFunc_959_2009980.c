extern struct Actor *__Func_8093554(void);

int OvlFunc_959_2009980(unsigned int arg0)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(arg0);
    struct Actor *other = __Func_8093554();
    int ax = actor->pos.x / 0x100000;
    int az = actor->pos.z / 0x100000;
    int ox = other->pos.x / 0x100000;
    int oz = other->pos.z / 0x100000;
    int dx = ax - ox;
    int dz = az - oz;

    if (dx < 0)
        dx = -dx;
    if (dz < 0)
        dz = -dz;
    if (dx > 7 || dz > 5)
        return 0;
    return 1;
}