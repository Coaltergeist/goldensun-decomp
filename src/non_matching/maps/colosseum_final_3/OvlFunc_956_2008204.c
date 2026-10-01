void OvlFunc_956_2008204(void)
{
    extern unsigned char gState[];
    extern unsigned char *iwram_3001ebc;
    unsigned char *p;
    struct Actor *actor;
    struct Actor *other;
    int id;
    short z;

    p = iwram_3001ebc;
    id = *(int *)(gState + 0x1f4);
    other = *(struct Actor **)(p + 0x1e0);
    actor = (struct Actor *)__MapActor_GetActor(id);
    z = *(short *)((char *)actor + 0x12);
    if (z >= 0xb7 && z <= 0xba) {
        other->pos.x -= 0xcccc;
        actor->pos.x -= 0xcccc;
    }
}
