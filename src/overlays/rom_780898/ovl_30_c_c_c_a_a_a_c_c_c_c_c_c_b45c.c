typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __MapActor_SetPos(int actor_id, int x, int y);

void OvlFunc_883_200b45c(int first_actor, u32 count, int hide)
{
    register int actor_id asm("r6");
    register u32 actor_count asm("r8");
    u32 index;

    asm volatile ("mov r8, r1\n\tmov r6, r0"
                  : "=r" (actor_count), "=r" (actor_id)
                  : "r" (count), "r" (first_actor));

    if (hide == 0) {
        for (index = 0; index < actor_count; index++) {
            u8 *actor = __MapActor_GetActor(actor_id);

            actor[0x55] = 0;
            __Actor_SetSpriteFlags(actor, 0);
            *(u32 *)(actor + 8) = 0x1860000;
            *(u32 *)(actor + 0xc) = 0xa00000;
            *(u32 *)(actor + 0x10) = 0x34a0000;
            actor_id++;
        }
    } else {
        for (index = 0; index < actor_count; index++) {
            __MapActor_SetPos(actor_id, 0, 0);
            actor_id++;
        }
    }
}
