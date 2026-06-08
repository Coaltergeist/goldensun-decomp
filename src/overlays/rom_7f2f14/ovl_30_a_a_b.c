/* Cluster OvlFunc_968_2008690..OvlFunc_968_2008690 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_a_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_a_a_a.o and asm/overlays/rom_7f2f14/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_968_2008690(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}
