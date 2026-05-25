/* Cluster OvlFunc_common1_2008..OvlFunc_common1_2008 extracted from goldensun/asm/overlays/common/common1_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_c_a.o and asm/overlays/common/common1_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned int iwram_1f3c;

void OvlFunc_common1_2008(unsigned short arg0) {
    unsigned int ptr = iwram_1f3c;
    *((unsigned short *)(ptr + 0xdc)) = arg0;
}
