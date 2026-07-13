extern unsigned char *__MapActor_GetActor(unsigned int actor_id);
extern void __MapActor_SetPos(unsigned int actor_id, unsigned int x,
                              unsigned int y);

void OvlFunc_888_200a660(void)
{
    unsigned char *actor = __MapActor_GetActor(0xe);

    *(unsigned int *)(actor + 0x6c) = 0;
    __MapActor_SetPos(0xe, 0, 0);
}

/* Count the original alignment halfword in the function symbol size. */
asm(".align 2, 0\n.size OvlFunc_888_200a660, . - OvlFunc_888_200a660");
