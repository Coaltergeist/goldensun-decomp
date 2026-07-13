extern unsigned char *__CreateActor(int type, int x, int y, int z);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);

unsigned char *OvlFunc_964_2008a4c(int x, int y, int z, int type)
{
    unsigned char *actor = __CreateActor(type, x, y, z);

    if (actor != 0) {
        register unsigned char *sprite __asm__("r1") =
            *(unsigned char **)(actor + 0x50);
        register int value __asm__("r2");
        register int flags __asm__("r3");

        flags = 13;
        value = sprite[9];
        __asm__ volatile ("" : "+r" (sprite), "+r" (value), "+r" (flags));
        flags = -flags;
        flags &= value;
        flags |= 4;
        sprite[9] = flags;
        actor[0x55] = 0;
        actor[0x59] = 8;
        __Actor_SetSpriteFlags(actor, 0);
        {
            register unsigned char *actor_arg __asm__("r0") = actor;
            register int value_arg __asm__("r1");

            __asm__ volatile ("" : "+r" (actor_arg));
            value_arg = 0xf;
            __asm__ volatile ("" : "+r" (value_arg));
            __Func_80929d8(actor_arg, value_arg);
        }
        actor[0x23] = (actor[0x23] & 0xfe) | 2;
        {
            register unsigned char *result __asm__("r0") = actor;

            __asm__ volatile ("" : "+r" (result));
            return result;
        }
    }

    {
        register unsigned char *result __asm__("r0") = 0;

        __asm__ volatile ("" : "+r" (result));
        return result;
    }
}

__asm__(".align 2, 0\n"
        ".size OvlFunc_964_2008a4c, . - OvlFunc_964_2008a4c");
