/* Cluster OvlFunc_905_200909c..OvlFunc_905_200909c extracted from goldensun/asm/overlays/rom_799abc/ovl_30_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_799abc/ovl_30_c_c_a_a_c_a.o and asm/overlays/rom_799abc/ovl_30_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_799abc/overlay.ld.
 */
extern void OvlFunc_905_20080c4(void);
extern void OvlFunc_905_2008ecc(void);

void OvlFunc_905_200909c(void) {
    __CutsceneStart();
    OvlFunc_905_20080c4();
    OvlFunc_905_2008ecc();
    __CutsceneEnd();
}
