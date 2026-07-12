extern void __MapActor_SetAnim(int actor, int animation);
extern void __Func_8092950(int actor, int value);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);

void OvlFunc_964_200970c(void)
{
    unsigned char *actor;
    register unsigned int flags asm("r2");
    register unsigned int mask asm("r3");

    __MapActor_SetAnim(0x14, 1);
    __Func_8092950(0x14, 0);
    __MapActor_SetAnim(0x14, 2);

    actor = __MapActor_GetActor(0x14) + 0x23;
    flags = *actor;
    mask = 0xfd;
    asm volatile("" : "+r"(flags), "+r"(mask));
    mask &= flags;
    *actor = mask;
    __SetFlag(0x200);
}
asm(".align 2, 0\n.size OvlFunc_964_200970c, . - OvlFunc_964_200970c");
