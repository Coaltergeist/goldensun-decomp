/* Cluster OvlFunc_926_2008314..OvlFunc_926_2008314 extracted from goldensun/asm/overlays/rom_7b2078/ovl_314_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b2078/ovl_314_a_a.o and asm/overlays/rom_7b2078/ovl_314_a_c.o in
 * goldensun/overlays/rom_7b2078/overlay.ld.
 */
extern void __Actor_SetSpriteFlags();

unsigned int OvlFunc_926_2008314(void) {
    int r0_in;
    __Actor_SetSpriteFlags(r0_in, 0);
    return 0;
}
