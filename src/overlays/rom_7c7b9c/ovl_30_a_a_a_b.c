/* Cluster OvlFunc_943_20080b4..OvlFunc_943_20080b4 extracted from goldensun/asm/overlays/rom_7c7b9c/ovl_30_a_a_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c7b9c/ovl_30_a_a_a_a.o and asm/overlays/rom_7c7b9c/ovl_30_a_a_a_c.o in
 * goldensun/overlays/rom_7c7b9c/overlay.ld.
 */
extern int __Actor_SetSpriteFlags();

unsigned int OvlFunc_943_20080b4(void) {
    register int a __asm__("r0");
    __Actor_SetSpriteFlags(a, 1);
    return 0;
}
