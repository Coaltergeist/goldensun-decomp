/* Cluster OvlFunc_common1_16fc..OvlFunc_common1_16fc extracted from goldensun/asm/overlays/common/common1_c_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_c_a_a.o and asm/overlays/common/common1_c_a_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned short ewram_2001000;

void OvlFunc_common1_16fc(void) {
    unsigned short *dst = &ewram_2001000;
    unsigned short value = 9;
    *dst = value;
}
