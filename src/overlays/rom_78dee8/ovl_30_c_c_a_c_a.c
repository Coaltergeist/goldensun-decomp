extern unsigned char *__MapActor_GetActor(unsigned int actor_id);
extern void __ClearFlag(unsigned int flag);
extern void __SetFlag(unsigned int flag);
extern void OvlFunc_895_20097c0(unsigned int arg0);

void OvlFunc_895_20085ec(void)
{
    unsigned char *actor = __MapActor_GetActor(9);

    if (actor) {
        register signed int raw_x asm("r3") =
            *(signed int *)(actor + 8);
        register signed int tile_x asm("r5");

        /* Materialize each flag independently in the original call register. */
        {
            register unsigned int flag asm("r0") = 0x310;
            asm("" : "+r" (flag));
            tile_x = raw_x >> 20;
            __ClearFlag(flag);
        }
        {
            register unsigned int flag asm("r0") = 0x311;
            asm("" : "+r" (flag));
            __ClearFlag(flag);
        }
        if (tile_x == 0x63) {
            register unsigned int flag asm("r0") = 0x311;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        } else if (tile_x == 0x65) {
            register unsigned int flag asm("r0") = 0x310;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        }
        OvlFunc_895_20097c0(0);
    }
}

void OvlFunc_895_2008634(void)
{
    unsigned char *actor = __MapActor_GetActor(0xa);

    if (actor) {
        register signed int raw_x asm("r3") =
            *(signed int *)(actor + 8);
        register signed int tile_x asm("r5");

        /* Materialize each flag independently in the original call register. */
        {
            register unsigned int flag asm("r0") = 0x312;
            asm("" : "+r" (flag));
            tile_x = raw_x >> 20;
            __ClearFlag(flag);
        }
        {
            register unsigned int flag asm("r0") = 0x313;
            asm("" : "+r" (flag));
            __ClearFlag(flag);
        }
        if (tile_x == 0x67) {
            register unsigned int flag asm("r0") = 0x313;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        } else if (tile_x == 0x69) {
            register unsigned int flag asm("r0") = 0x312;
            asm("" : "+r" (flag));
            __SetFlag(flag);
        }
        OvlFunc_895_20097c0(0);
    }
}
