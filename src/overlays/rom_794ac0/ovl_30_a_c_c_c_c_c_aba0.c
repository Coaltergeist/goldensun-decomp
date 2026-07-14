extern unsigned char *__MapActor_GetActor(int actor_id);
extern int __atan2(int y, int x);

void OvlFunc_899_200aba0(void)
{
    unsigned char *actor0 = __MapActor_GetActor(0);
    unsigned char *actor18 = __MapActor_GetActor(0x18);
    unsigned char *actor19 = __MapActor_GetActor(0x19);

    *(short *)(actor18 + 6) = __atan2(*(int *)(actor0 + 0x10) - *(int *)(actor18 + 0x10),
                                       *(int *)(actor0 + 8) - *(int *)(actor18 + 8));
    asm volatile("" ::: "memory");
    *(short *)(actor19 + 6) = __atan2(*(int *)(actor0 + 0x10) - *(int *)(actor19 + 0x10),
                                       *(int *)(actor0 + 8) - *(int *)(actor19 + 8));
}
