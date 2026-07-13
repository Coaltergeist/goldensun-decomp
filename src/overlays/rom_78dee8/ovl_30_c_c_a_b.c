extern unsigned char *__MapActor_GetActor(unsigned int actor_id);
extern void __ClearFlag(unsigned int flag);
extern void __SetFlag(unsigned int flag);

void OvlFunc_895_200856c(void)
{
    unsigned char *actor = __MapActor_GetActor(9);

    if (actor) {
        register signed int raw_x asm("r3") =
            *(signed int *)(actor + 8);
        register signed int tile_x asm("r5");

        /* Materialize each flag independently in the original call register. */
        {
            register unsigned int flag asm("r0") = 0x302;
            asm("" : "+r" (flag));
            tile_x = raw_x >> 20;
            __ClearFlag(flag);
        }
        {
            register unsigned int flag asm("r0") = 0x303;
            asm("" : "+r" (flag));
            __ClearFlag(flag);
        }
        if (tile_x == 0x5d) {
            register unsigned int flag asm("r0") = 0x303;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        } else if (tile_x == 0x5f) {
            register unsigned int flag asm("r0") = 0x302;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        }
    }
}

void OvlFunc_895_20085ac(void)
{
    unsigned char *actor = __MapActor_GetActor(0xa);

    if (actor) {
        register signed int raw_x asm("r3") =
            *(signed int *)(actor + 8);
        register signed int tile_x asm("r5");

        /* Materialize each flag independently in the original call register. */
        {
            register unsigned int flag asm("r0") = 0x300;
            asm("" : "+r" (flag));
            tile_x = raw_x >> 20;
            __ClearFlag(flag);
        }
        {
            register unsigned int flag asm("r0") = 0x301;
            asm("" : "+r" (flag));
            __ClearFlag(flag);
        }
        if (tile_x == 0x73) {
            register unsigned int flag asm("r0") = 0x300;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        } else if (tile_x == 0x71) {
            register unsigned int flag asm("r0") = 0x301;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        }
    }
}
