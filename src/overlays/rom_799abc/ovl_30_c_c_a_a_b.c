/* Cluster OvlFunc_905_2009088..OvlFunc_905_2009088 extracted from goldensun/asm/overlays/rom_799abc/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_c_c_a_a_a.o and asm/overlays/rom_799abc/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern void OvlFunc_905_2008ecc(void);

void OvlFunc_905_2009088(void) {
    __CutsceneStart();
    OvlFunc_905_2008ecc();
    __CutsceneEnd();
}
