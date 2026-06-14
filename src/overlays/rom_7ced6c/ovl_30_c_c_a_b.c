/* Cluster OvlFunc_946_2009374..OvlFunc_946_2009374 extracted from goldensun/asm/overlays/rom_7ced6c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ced6c/ovl_30_c_c_a_a.o and asm/overlays/rom_7ced6c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7ced6c/overlay.ld.
 */
extern void OvlFunc_946_20080c4(void);
extern void OvlFunc_946_20092b4(void);

void OvlFunc_946_2009374(void) {
    __CutsceneStart();
    OvlFunc_946_20080c4();
    __CutsceneEnd();
    OvlFunc_946_20092b4();
}
