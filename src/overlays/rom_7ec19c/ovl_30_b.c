/* Cluster OvlFunc_962_2008030..OvlFunc_962_2008040 extracted from goldensun/asm/overlays/rom_7ec19c/ovl_30.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec19c/ovl_30_a.o and asm/overlays/rom_7ec19c/ovl_30_c.o in
 * goldensun/overlays/rom_7ec19c/overlay.ld.
 */
extern unsigned char MapEntrance_ARRAY_962__02008c3c[];

void *OvlFunc_962_2008030(void) {
    return (void *)MapEntrance_ARRAY_962__02008c3c;
}
extern unsigned char gOvl_02008da4[];

void *OvlFunc_962_2008038(void) {
    return (void *)gOvl_02008da4;
}
extern unsigned char gOvl_02008dd4[];

void *OvlFunc_962_2008040(void) {
    return (void *)gOvl_02008dd4;
}
