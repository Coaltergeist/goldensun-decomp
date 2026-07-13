extern unsigned char iwram_3001f30[];

extern void Field_Frost(void);

void Field_Frost_Target(void)
{
    unsigned char *actor = *(unsigned char **)iwram_3001f30;
    register unsigned char *target asm("r1") = *(unsigned char **)(actor + 0x14);
    register unsigned int old_flags asm("r2");
    register unsigned int flags asm("r3");

    if (target != 0) {
        if (*(signed char *)(actor + 0x35) != 0)
            actor[0x20] = 1;
        target += 0x23;
        old_flags = *target;
        flags = 2;
        flags |= old_flags;
        *target = flags;
        Field_Frost();
    }
}
