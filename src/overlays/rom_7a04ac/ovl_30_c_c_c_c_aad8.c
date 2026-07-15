typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);
extern u32 iwram_3001e40;

void OvlFunc_913_200aad8(void)
{
    u8 *actor;

    actor = __MapActor_GetActor(0xd);
    if (actor != 0) {
        actor[0x55] = 0;
        if ((iwram_3001e40 & 1) == 0)
            *(u32 *)(actor + 0xc) = 0;
        else
            *(u32 *)(actor + 0xc) = 0x1f40000;
    }
    actor = __MapActor_GetActor(0xe);
    if (actor != 0) {
        register u8 *field asm("r3") = actor;
        register u32 zero asm("r1");
        asm volatile("" : "+r"(field));
        field += 0x55;
        asm volatile("" : "+r"(field));
        zero = 0;
        asm volatile("" : "+r"(field), "+r"(zero));
        *field = zero;
        if ((iwram_3001e40 & 1) != 0)
            *(u32 *)(actor + 0xc) = zero;
        else
            *(u32 *)(actor + 0xc) = 0x1f40000;
    }
    actor = __MapActor_GetActor(0xf);
    if (actor != 0) {
        actor[0x55] = 0;
        if ((iwram_3001e40 & 1) == 0)
            *(u32 *)(actor + 0xc) = 0;
        else
            *(u32 *)(actor + 0xc) = 0x1f40000;
    }
    actor = __MapActor_GetActor(0x10);
    if (actor != 0) {
        register u8 *field asm("r3") = actor;
        register u32 zero asm("r1");
        asm volatile("" : "+r"(field));
        field += 0x55;
        asm volatile("" : "+r"(field));
        zero = 0;
        asm volatile("" : "+r"(field), "+r"(zero));
        *field = zero;
        if ((iwram_3001e40 & 1) != 0)
            *(u32 *)(actor + 0xc) = zero;
        else
            *(u32 *)(actor + 0xc) = 0x1f40000;
    }
}
