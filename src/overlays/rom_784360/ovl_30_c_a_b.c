/* Cluster OvlFunc_884_2008910..OvlFunc_884_2008910 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_a.o and asm/overlays/rom_784360/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern void __SetFlag(int);

void OvlFunc_884_2008910(void) {
    __SetFlag(0x90b);
}
