/* Cluster OvlFunc_887_2008394..OvlFunc_887_2008394 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c_a.o and asm/overlays/rom_787e04/ovl_30_c_a_c_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern void __PlaySound(int);
extern void OvlFunc_887_20082e0(int);

void OvlFunc_887_2008394(void) {
    __PlaySound(0x80);
    OvlFunc_887_20082e0(7);
}
