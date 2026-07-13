extern int __GetFlag(int flag_id);
extern void __SetFlag(int flag_id);
extern void __ClearFlag(int flag_id);
extern unsigned char *__MapActor_GetActor(int actor_id);

void OvlFunc_883_200da40(void)
{
    register int map_flag asm("r0");

    asm volatile("ldr %0, =0x241" : "=r"(map_flag));
    if (__GetFlag(map_flag)) {
        int companion_present = __GetFlag(0x106);

        if (!companion_present) {
            unsigned char *actor = __MapActor_GetActor(0x16);

            actor[0x5b] = companion_present;
            asm volatile("ldr %0, =0x241" : "=r"(map_flag));
            __ClearFlag(map_flag);
        }
    } else if (__GetFlag(0x106)) {
        unsigned char *actor = __MapActor_GetActor(0x16);

        actor[0x5b] = 1;
        asm volatile("ldr %0, =0x241" : "=r"(map_flag));
        __SetFlag(map_flag);
    }
}
