/* Cluster OvlFunc_932_2008c74..OvlFunc_932_2008c74 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned char *__MapActor_GetActor(int id);

void OvlFunc_932_2008c74(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0xa);
    p[0x23] = 3;
}
