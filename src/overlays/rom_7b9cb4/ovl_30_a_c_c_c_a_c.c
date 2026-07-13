extern unsigned char *__MapActor_GetActor(int id);
extern void __Func_8092b08(int actor, int value);

void OvlFunc_932_200b428(void)
{
    unsigned char *actor;

    actor = __MapActor_GetActor(0);
    if (*(int *)(actor + 0xc) > 0x300000) {
        {
            register unsigned char *flags __asm__("r0");
            register unsigned int old_flags __asm__("r2");
            register unsigned int new_flags __asm__("r3");

            flags = __MapActor_GetActor(0xb);
            flags += 0x23;
            old_flags = *flags;
            new_flags = 2;
            __asm__ volatile ("" : "+r" (flags), "+r" (old_flags),
                                   "+r" (new_flags));
            new_flags |= old_flags;
            *flags = new_flags;
        }
        {
            register int value __asm__("r1") = 3;
            register int actor_id __asm__("r0") = 0xc;

            __asm__ volatile ("" : "+r" (value), "+r" (actor_id));
            __Func_8092b08(actor_id, value);
        }
    } else {
        __Func_8092b08(0xc, 2);
    }
}
