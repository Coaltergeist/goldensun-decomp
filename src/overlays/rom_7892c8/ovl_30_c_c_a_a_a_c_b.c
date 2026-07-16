extern unsigned char *__MapActor_GetActor(int actor);

int OvlFunc_888_2008848(unsigned char *actorArg)
{
    register unsigned char *actor asm("r6") = actorArg;
    register unsigned int mask asm("r5");

    /* Fixed registers reproduce the original packed sprite-flag update. */
    {
        register unsigned int source asm("r3");
        register unsigned char *sprite asm("r4");
        register unsigned int targetFlags asm("r1");
        register unsigned int bits asm("r2");

        source = *(unsigned int *)(__MapActor_GetActor(0) + 0x50);
        asm volatile("" : "+r"(source));
        sprite = *(unsigned char **)(actor + 0x50);
        asm volatile("" : "+r"(source), "+r"(sprite));
        source = *(unsigned char *)(source + 9);
        asm volatile("" : "+r"(source), "+r"(sprite));
        mask = 0xd;
        asm volatile("" : "+r"(source), "+r"(sprite), "+r"(mask));
        targetFlags = sprite[9];
        asm volatile("" : "+r"(source), "+r"(sprite), "+r"(targetFlags),
                         "+r"(mask));
        mask = -mask;
        asm volatile("" : "+r"(source), "+r"(sprite), "+r"(targetFlags),
                         "+r"(mask));
        bits = 0xc;
        asm volatile("" : "+r"(source), "+r"(sprite), "+r"(targetFlags),
                         "+r"(bits), "+r"(mask));
        bits &= source;
        source = mask;
        source &= targetFlags;
        source |= bits;
        sprite[9] = source;
    }

    {
        register unsigned int source asm("r3");
        register unsigned char *sprite asm("r1");
        register unsigned int flags asm("r2");

        source = *(unsigned int *)(__MapActor_GetActor(0) + 0x50);
        sprite = *(unsigned char **)(actor + 0x50);
        flags = *(unsigned char *)(source + 9);
        source = 0xc;
        asm volatile("" : "+r"(source), "+r"(sprite), "+r"(flags),
                         "+r"(mask));
        source &= flags;
        flags = sprite[0x15];
        mask &= flags;
        mask |= source;
        sprite[0x15] = mask;
    }

    return 0;
}
