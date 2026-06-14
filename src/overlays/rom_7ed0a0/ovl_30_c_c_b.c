/* Cluster OvlFunc_964_2009fc4..OvlFunc_964_2009fc4 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_2009f70(void);

void OvlFunc_964_2009fc4(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    OvlFunc_964_2009f70();
    __CutsceneEnd();
}
