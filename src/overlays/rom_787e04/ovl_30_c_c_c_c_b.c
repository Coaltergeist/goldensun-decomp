/* Cluster OvlFunc_887_20097d4..OvlFunc_887_20097d4 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_c_c_c_a.o and asm/overlays/rom_787e04/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern void __MapActor_GetActor(int);
extern void OvlFunc_887_20095bc(void);

void OvlFunc_887_20097d4(void) {
    __MapActor_GetActor(0x11);
    OvlFunc_887_20095bc();
}
