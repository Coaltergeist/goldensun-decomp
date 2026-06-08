/* Cluster OvlFunc_923_2008d48..OvlFunc_923_2008d48 extracted from goldensun/overlays/rom_7aa430/ovl_314.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * overlays/rom_7aa430/ovl_314_a.o and overlays/rom_7aa430/ovl_314_c.o in
 * goldensun/overlays/rom_7aa430/overlay.ld.
 */
extern void __PlaySound(unsigned int);

unsigned int OvlFunc_923_2008d48(void) {
    __PlaySound(0x76);
    return 0;
}
