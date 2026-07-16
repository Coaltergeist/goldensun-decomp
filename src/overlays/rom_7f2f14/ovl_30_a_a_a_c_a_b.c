extern unsigned char *__CreateActor(int type, int x, int y, int z);
extern void OvlFunc_968_2008030(unsigned char *actor, int value);
extern void __Func_800c548(unsigned char *actor, int value);

unsigned char *OvlFunc_968_2008058(int x, int y, int z, int type)
{
    unsigned char *actor = __CreateActor(type, x, y, z);

    if (actor != 0) {
        unsigned char *sprite = *(unsigned char **)(actor + 0x50);
        register int mask asm("r3");
        register unsigned int value asm("r2");

        mask = 13;
        asm volatile("" : "+r"(mask));
        value = sprite[9];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        sprite[9] = mask;
        OvlFunc_968_2008030(actor, 0xe);
        __Func_800c548(actor, 1);
        return actor;
    }
    return 0;
}

unsigned char *OvlFunc_968_2008098(int x, int y, int z, int type)
{
    unsigned char *actor = __CreateActor(type, x, y, z);

    if (actor != 0) {
        register unsigned char *sprite asm("r1") =
            *(unsigned char **)(actor + 0x50);
        register int value asm("r2");
        register int flags asm("r3");

        flags = 13;
        value = sprite[9];
        asm volatile("" : "+r"(sprite), "+r"(value), "+r"(flags));
        flags = -flags;
        flags &= value;
        value = 4;
        flags |= value;
        sprite[9] = flags;
        OvlFunc_968_2008030(actor, 0xf);
        {
            register unsigned char *field asm("r1") = actor;
            register int old_value asm("r2");
            register int bit asm("r3");

            field += 0x23;
            old_value = *field;
            bit = 2;
            asm volatile("" : "+r"(field), "+r"(old_value), "+r"(bit));
            bit |= old_value;
            *field = bit;
        }
        return actor;
    }
    return 0;
}

void OvlFunc_968_20080e0(unsigned char *actor)
{
    *(int *)(actor + 8) += *(int *)(actor + 0x44);
    *(int *)(actor + 0xc) += *(int *)(actor + 0x48);
    *(int *)(actor + 0x10) += *(int *)(actor + 0x4c);
    *(int *)(actor + 0x18) += *(int *)(actor + 0x30);
    *(int *)(actor + 0x1c) += *(int *)(actor + 0x34);
    asm volatile("" : : : "memory");
    {
        register unsigned char *sprite asm("r1") =
            *(unsigned char **)(actor + 0x50);
        register unsigned int sprite_value asm("r3");
        register unsigned int actor_value asm("r2");

        actor += 0x64;
        sprite_value = *(unsigned short *)(sprite + 0x1e);
        actor_value = *(unsigned short *)actor;
        asm volatile("" : "+r"(sprite), "+r"(actor),
                     "+r"(sprite_value), "+r"(actor_value));
        sprite_value += actor_value;
        *(unsigned short *)(sprite + 0x1e) = sprite_value;
    }
}

/* Count the original zero-fill alignment in the function's ELF size. */
