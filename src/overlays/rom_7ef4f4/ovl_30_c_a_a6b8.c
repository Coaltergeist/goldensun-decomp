typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int id);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_965_200a6b8(void)
{
    u8 *actor = __MapActor_GetActor(0xc);
    int x = *(int *)(actor + 8) >> 20;

    if (x == 0x14) {
        int y = *(int *)(actor + 0x10) >> 20;

        if (y == 0xc) {
            actor[0x55] = 2;
            *(u32 *)(actor + 0x14) = 0x300000;
            actor[0x23] = 2;
            __Func_8010704(0x26, 0xc, 1, 1, x, y);
        }
    }
}
