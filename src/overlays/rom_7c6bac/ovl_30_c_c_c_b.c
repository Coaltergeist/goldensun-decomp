extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_8092b08(int actor, int arg);

void OvlFunc_942_2008b68(int actor_id)
{
    register int id __asm__("r5") = actor_id;
    register unsigned char *actor __asm__("r6") =
        __MapActor_GetActor(id);
    register unsigned char *status __asm__("r2");
    register unsigned int value __asm__("r3");

    __Actor_SetSpriteFlags(__MapActor_GetActor(id), 0);
    __Func_8092b08(id, 3);
    status = actor + 0x55;
    value = 0;
    __asm__ volatile ("" : "+r" (status), "+r" (value));
    *status = value;
    actor += 0x23;
    status = (unsigned char *)(unsigned int)*actor;
    value = 2;
    __asm__ volatile ("" : "+r" (status), "+r" (value));
    value |= (unsigned int)status;
    *actor = value;
}

__asm__(".align 2, 0\n.size OvlFunc_942_2008b68, . - OvlFunc_942_2008b68");
