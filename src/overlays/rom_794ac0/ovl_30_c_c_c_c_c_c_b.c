/* Cluster OvlFunc_899_200c8a4..OvlFunc_899_200c8a4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_c_c_c_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
void OvlFunc_899_200c8a4(int arg0, unsigned char *p) {
    __Actor_TravelTo(arg0, ((int)p[0] << 19) + (0x90 << 15), 0, ((int)p[1] << 19) + (0x9e << 18));
}
