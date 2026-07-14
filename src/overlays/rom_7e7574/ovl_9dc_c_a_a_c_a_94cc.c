typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);

int OvlFunc_959_20094cc(void)
{
    u8 *actor = __MapActor_GetActor(0);
    int y = *(int *)(actor + 0x10) / 0x100000;
    int x = *(int *)(actor + 8) / 0x100000;

    if ((u32)(x - 0x29) <= 3 && y > 0x19 && y <= 0x1c)
        return 1;
    if (x == 0x29 && y > 0x25 && y <= 0x29)
        return 1;
    if ((u32)(x - 0x36) <= 2 && y > 0x1e && y <= 0x28)
        return 1;
    return 0;
}
