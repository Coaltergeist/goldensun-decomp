extern unsigned char *__MapActor_GetActor(int actor_id);

void OvlFunc_957_200b610(unsigned char *actor)
{
    register unsigned int work asm("r3");
    register unsigned char *destination asm("r4");
    register unsigned int source_flags asm("r2");
    register unsigned int destination_flags asm("r1");

    if (actor != 0) {
        actor[0x23] = 0;
        work = (unsigned int)*(unsigned char **)(__MapActor_GetActor(0) + 0x50);
        asm volatile("" : "+r"(work));
        destination = *(unsigned char **)(actor + 0x50);
        asm volatile("" : "+r"(work), "+r"(destination));
        work = *(unsigned char *)(work + 9);
        source_flags = 0xc;
        asm volatile("" : "+r"(work), "+r"(source_flags));
        source_flags &= work;
        destination_flags = destination[9];
        work = 0xd;
        asm volatile("" : "+r"(work), "+r"(source_flags),
                             "+r"(destination_flags));
        work = -work;
        work &= destination_flags;
        work |= source_flags;
        destination[9] = work;
    }
}

/* Include the original trailing alignment in the function symbol size. */
