extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8092b08(int, int);
extern void __Actor_SetSpriteFlags(unsigned char *, int);

void OvlFunc_943_200b380(int value)
{
    unsigned char *actor = __MapActor_GetActor(value);
    register int sprite_flags asm("r1");
    register unsigned int old_flags asm("r2");
    register unsigned int new_flags asm("r3");

    if (actor != 0) {
        __Func_8092b08(value, 3);
        sprite_flags = 0;
        asm volatile("" : "+r"(sprite_flags));
        __Actor_SetSpriteFlags(actor, sprite_flags);
        actor[0x59] = 0;
        old_flags = actor[0x23];
        new_flags = 2;
        asm volatile("" : "+r"(old_flags), "+r"(new_flags));
        new_flags |= old_flags;
        actor[0x23] = new_flags;
    }
}
