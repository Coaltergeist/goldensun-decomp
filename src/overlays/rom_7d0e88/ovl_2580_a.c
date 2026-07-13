extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);

void OvlFunc_947_200a5f8(int actor_id)
{
    register unsigned char *actor __asm__("r5") =
        __MapActor_GetActor(actor_id);

    {
        register unsigned char *field __asm__("r0") = actor;
        register unsigned int value __asm__("r2");
        register unsigned int mask __asm__("r3");

        field += 0x59;
        value = *field;
        mask = 0xfe;
        __asm__ volatile ("" : "+r" (field), "+r" (value), "+r" (mask));
        mask &= value;
        *field = mask;
    }

    {
        register unsigned char *field __asm__("r0") = actor;
        register unsigned int value __asm__("r2");
        register unsigned int bits __asm__("r3");

        field += 0x23;
        value = *field;
        bits = 2;
        __asm__ volatile ("" : "+r" (field), "+r" (value), "+r" (bits));
        bits |= value;
        *field = bits;
    }

    {
        register unsigned char *field __asm__("r3") = actor;
        register unsigned int zero __asm__("r1");
        register unsigned char *actor_arg __asm__("r0");

        __asm__ volatile ("" : "+r" (field));
        zero = 0;
        __asm__ volatile ("" : "+r" (zero));
        field += 0x55;
        *field = zero;
        actor_arg = actor;
        __asm__ volatile ("" : "+r" (actor_arg));
        __Actor_SetSpriteFlags(actor_arg, zero);
    }

    {
        register unsigned char *sprite __asm__("r1") =
            *(unsigned char **)(actor + 0x50);
        register int value __asm__("r2");
        register int mask __asm__("r3");

        mask = 13;
        value = sprite[9];
        __asm__ volatile ("" : "+r" (sprite), "+r" (value), "+r" (mask));
        mask = -mask;
        mask &= value;
        value = 8;
        mask |= value;
        sprite[9] = mask;
    }
}

__asm__(".align 2, 0\n"
        ".size OvlFunc_947_200a5f8, . - OvlFunc_947_200a5f8");
