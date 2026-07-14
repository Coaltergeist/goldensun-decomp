typedef signed int s32;
typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern unsigned char *iwram_3001f30;

void OvlFunc_947_200a15c(void)
{
    u8 *actor1;
    u8 *actor2;
    unsigned char *state;

    actor1 = __MapActor_GetActor(0);
    actor2 = __MapActor_GetActor(0xd);
    state = iwram_3001f30;
    if (*(s32 *)(actor2 + 8) >> 20 == *(s32 *)(actor1 + 8) >> 20 &&
        *(s32 *)(actor2 + 0x10) >> 20 == *(s32 *)(actor1 + 0x10) >> 20) {
        __SetFlag(0x203);
        state[0x35] = 1;
    } else {
        __ClearFlag(0x203);
    }
}
