typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);

int OvlFunc_959_2009108(void)
{
    u8 *actor = __MapActor_GetActor(0);
    int z = *(int *)(actor + 0x10);
    int x;
    int tileZ;

    if (z < 0)
        z += 0xfffff;
    x = *(int *)(actor + 8);
    tileZ = z >> 20;
    if (x < 0)
        x += 0xfffff;
    x >>= 20;

    if ((unsigned int)(tileZ - 5) <= 2 && x <= 10)
        return 1;
    if ((unsigned int)(x - 8) <= 1 && tileZ > 22)
        return 1;
    return 0;
}
