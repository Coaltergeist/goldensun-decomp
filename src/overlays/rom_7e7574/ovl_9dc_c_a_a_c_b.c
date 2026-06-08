/* Cluster OvlFunc_959_2009650..OvlFunc_959_2009650 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_a_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern void OvlFunc_959_2009b24(int a);
extern void __CutsceneEnd(void);

void OvlFunc_959_2009650(void) {
    OvlFunc_959_2009b24(0x12);
    __CutsceneEnd();
}
