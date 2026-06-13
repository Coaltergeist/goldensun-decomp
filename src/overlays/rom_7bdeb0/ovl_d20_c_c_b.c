/* Cluster OvlFunc_934_20090c8..OvlFunc_934_20090c8 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_d20_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_d20_c_c_a.o and asm/overlays/rom_7bdeb0/ovl_d20_c_c_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
extern void OvlFunc_934_20083a8(void);
extern void OvlFunc_934_2008f78(void);

void OvlFunc_934_20090c8(void) {
    __CutsceneStart();
    OvlFunc_934_20083a8();
    __CutsceneEnd();
    OvlFunc_934_2008f78();
}
