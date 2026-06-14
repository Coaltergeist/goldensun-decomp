/* Cluster OvlFunc_964_20098f8..OvlFunc_964_20098f8 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_20080c4(void);
extern void OvlFunc_964_2009744(void);

void OvlFunc_964_20098f8(void) {
    __CutsceneStart();
    OvlFunc_964_20080c4();
    __CutsceneEnd();
    OvlFunc_964_2009744();
}
