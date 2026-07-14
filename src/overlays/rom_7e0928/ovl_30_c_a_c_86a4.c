typedef unsigned char u8;

extern int __Func_8012038(int zero, int x, int y);
extern u8 *__MapActor_GetActor(int actor_id);

int OvlFunc_956_20086a4(int x, int y)
{
    u8 *actor;

    if (__Func_8012038(0, x, y) == 0xff)
        return -2;

    actor = __MapActor_GetActor(0xf);
    x >>= 20;
    y >>= 20;
    if (*(int *)(actor + 8) >> 20 == x &&
        *(int *)(actor + 0x10) >> 20 == y)
        return -1;

    actor = __MapActor_GetActor(0x10);
    if (*(int *)(actor + 8) >> 20 == x &&
        *(int *)(actor + 0x10) >> 20 == y)
        return -1;

    actor = __MapActor_GetActor(0x11);
    if (*(int *)(actor + 8) >> 20 == x &&
        *(int *)(actor + 0x10) >> 20 == y)
        return -1;

    return 0;
}
