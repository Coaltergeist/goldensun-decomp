/* Cluster OvlFunc_939_2008d14..OvlFunc_939_2008d14 extracted from goldensun/asm/overlays/rom_7c460c/ovl_314_a_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c460c/ovl_314_a_c_c_c_a.o and asm/overlays/rom_7c460c/ovl_314_a_c_c_c_c.o in
 * goldensun/overlays/rom_7c460c/overlay.ld.
 */
void OvlFunc_939_2008d14(void) {
    if (__GetFlag(0x201))
        return;
    __PlaySound(0x53);
}
