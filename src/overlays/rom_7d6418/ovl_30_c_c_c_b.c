/* Cluster OvlFunc_951_2008e44..OvlFunc_951_2008e44 extracted from goldensun/asm/overlays/rom_7d6418/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d6418/ovl_30_c_c_c_a.o and asm/overlays/rom_7d6418/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7d6418/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_951_2008e44(int actor, int visible) {
    unsigned char *p;

    p = __MapActor_GetActor(actor);
    if (p != (unsigned char *)0) {
        p[0x54] = visible;
    }
}
