/* OvlFunc_927_20089f4 extracted from
 * goldensun/asm/overlays/rom_7b4558/ovl_30_a_a_c_c.s.
 * Total .text for this TU = 88 bytes (= 0x58).
 */
extern unsigned char *__CreateActor(int actor_id, int x, int y, int z);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __Func_80929d8(unsigned char *actor, int value);
extern void __Func_800c548(unsigned char *actor, int value);

unsigned char *OvlFunc_927_20089f4(int x, int y, int z, int actor_id)
{
    unsigned char *actor;

    actor = __CreateActor(actor_id, x, y, z);
    if (actor != 0) {
        unsigned char *sprite = *(unsigned char **)(actor + 0x50);
        register int mask asm("r3");
        register unsigned int value asm("r2");

        /* Preserve Camelot's register schedule and distinct pointer updates. */
        mask = 13;
        asm volatile("" : "+r"(mask));
        value = sprite[9];
        asm volatile("" : "+r"(mask), "+r"(value));
        mask = -mask;
        mask &= value;
        {
            register unsigned char *field asm("r2") = actor;

            asm volatile("" : "+r"(field), "+r"(mask));
            sprite[9] = mask;
            field += 0x55;
            asm volatile("" : "+r"(field), "+r"(mask));
            mask = 0;
            *field = mask;
            field += 4;
            asm volatile("" : "+r"(field));
            mask = 8;
            *field = mask;
        }
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xe);
        __Func_800c548(actor, 1);
        return actor;
    }
    return 0;
}

/* Count the original zero-fill alignment in the function's ELF size. */
