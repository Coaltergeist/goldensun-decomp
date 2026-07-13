extern unsigned char *__MapActor_GetActor(int actor_id);

void OvlFunc_939_2008468(void)
{
    unsigned char *actor;
    register unsigned char *flags asm("r0");
    register unsigned int old_flags asm("r2");
    register unsigned int new_flags asm("r3");

    actor = __MapActor_GetActor(0);
    if (*(int *)(actor + 0xc) >= 0x100000) {
        flags = __MapActor_GetActor(8) + 0x23;
        old_flags = *flags;
        new_flags = 2;
        asm volatile("" : "+r"(old_flags), "+r"(new_flags));
        new_flags |= old_flags;
    } else {
        flags = __MapActor_GetActor(8) + 0x23;
        new_flags = 1;
    }
    *flags = new_flags;
}

/* Include the original trailing alignment in the function symbol size. */
asm(".size OvlFunc_939_2008468, 52");
