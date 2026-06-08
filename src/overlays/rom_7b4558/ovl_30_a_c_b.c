/* Cluster OvlFunc_927_2008d80..OvlFunc_927_2008d80 extracted from goldensun/asm/overlays/rom_7b4558/ovl_30_a_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b4558/ovl_30_a_c_a.o and asm/overlays/rom_7b4558/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7b4558/overlay.ld.
 */
extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_927_2008d80(void) {
    int dummy;
    __Actor_SetSpriteFlags(dummy, 0);
    return 0;
}
