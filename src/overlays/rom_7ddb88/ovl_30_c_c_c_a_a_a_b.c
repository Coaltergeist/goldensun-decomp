/* Cluster OvlFunc_955_2008258..OvlFunc_955_20082c0 extracted from
 * goldensun/asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a_a.s.
 *
 * Total .text for this TU = 144 bytes (= 0x90).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a_a_a.o and
 * asm/overlays/rom_7ddb88/ovl_30_c_c_c_a_a_b.o in
 * goldensun/overlays/rom_7ddb88/overlay.ld.
 */
extern void __SetFlag(int flag);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Func_8010704(int effect_id, int variant, int arg2, int arg3,
                           int position_x, int position_y);

void OvlFunc_955_2008258(void)
{
    int position_x;
    int position_y;
    unsigned char *actor;

    __SetFlag(0x331);
    actor = __MapActor_GetActor(0x14);
    actor[0x55] = 0;
    position_x = 0x2c;
    position_y = 0x11;
    __Func_8010704(0x2e, 0x11, 1, 1, position_x, position_y);
}

void OvlFunc_955_200828c(void)
{
    int position_x;
    int position_y;
    unsigned char *actor;

    __SetFlag(0x332);
    actor = __MapActor_GetActor(0x15);
    actor[0x55] = 0;
    position_x = 0x32;
    position_y = 0x11;
    __Func_8010704(0x2e, 0x11, 1, 1, position_x, position_y);
}

void OvlFunc_955_20082c0(void)
{
    int position_x;
    int position_y;

    __SetFlag(0x333);
    position_x = 0x20;
    position_y = 0x4d;
    __Func_8010704(0x20, 0x25, 1, 4, position_x, position_y);
}
