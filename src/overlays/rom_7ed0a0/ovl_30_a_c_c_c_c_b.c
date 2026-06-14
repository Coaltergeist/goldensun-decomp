/* Cluster OvlFunc_964_20099cc..OvlFunc_964_20099cc extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_20099bc(void);

void OvlFunc_964_20099cc(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_20099bc();
}
