/* Cluster OvlFunc_899_20087cc..OvlFunc_899_20087cc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void OvlFunc_899_20083bc(int);

void OvlFunc_899_20087cc(void) {
    __CutsceneStart();
    __MessageID(0x1356);
    OvlFunc_899_20083bc(0xa);
    __CutsceneEnd();
}
