/* Cluster OvlFunc_964_20099e4..OvlFunc_964_20099e4 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_964__0200b3b8[13];
extern void *OvlFunc_964_2008fe8;

void OvlFunc_964_20099e4(void)
{
    void *r4;
    __MapActor_SetBehavior(8, gScript_964__0200b3b8);
    __SetFlag(0x203);
    r4 = __MapActor_GetActor(9);
    *(void **)((char *)r4 + 0x6c) = &OvlFunc_964_2008fe8;
}
