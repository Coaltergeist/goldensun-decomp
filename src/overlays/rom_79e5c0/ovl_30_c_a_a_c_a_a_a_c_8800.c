typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int);
extern u32 iwram_3001e40;

void OvlFunc_911_2008800(void)
{
    u8 *actor;
    register int zero asm("r1");

    actor = __MapActor_GetActor(0x13);
    if (actor != 0) {
        actor[0x55] = 0;
        if ((iwram_3001e40 & 1) == 0)
            *(u32 *)(actor + 0x0c) = 0;
        else
            *(u32 *)(actor + 0x0c) = 0x1f40000;
    }

    actor = __MapActor_GetActor(0x14);
    if (actor != 0) {
        zero = 0;
        actor[0x55] = zero;
        if ((iwram_3001e40 & 1) != 0)
            *(u32 *)(actor + 0x0c) = zero;
        else
            *(u32 *)(actor + 0x0c) = 0x1f40000;
    }

    actor = __MapActor_GetActor(0x15);
    if (actor != 0) {
        actor[0x55] = 0;
        if ((iwram_3001e40 & 1) == 0)
            *(u32 *)(actor + 0x0c) = 0;
        else
            *(u32 *)(actor + 0x0c) = 0x1f40000;
    }

    actor = __MapActor_GetActor(0x16);
    if (actor != 0) {
        zero = 0;
        actor[0x55] = zero;
        if ((iwram_3001e40 & 1) != 0)
            *(u32 *)(actor + 0x0c) = zero;
        else
            *(u32 *)(actor + 0x0c) = 0x1f40000;
    }
}
