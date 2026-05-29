/* Cluster OvlFunc_973_20087b8..OvlFunc_973_20087b8 extracted from goldensun/asm/overlays/rom_7fc720/ovl_30_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fc720/ovl_30_c_a.o and asm/overlays/rom_7fc720/ovl_30_c_c.o in
 * goldensun/overlays/rom_7fc720/overlay.ld.
 */
extern unsigned int iwram_3001f30;

void OvlFunc_973_20087b8(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x35)) = 1;
}
