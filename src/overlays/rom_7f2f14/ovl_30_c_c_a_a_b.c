/* Cluster OvlFunc_968_200a6e4..OvlFunc_968_200a6e4 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7f2f14/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void OvlFunc_968_2008374(void);

void OvlFunc_968_200a6e4(void) {
    __CutsceneStart();
    OvlFunc_968_2008374();
    __CutsceneEnd();
}
