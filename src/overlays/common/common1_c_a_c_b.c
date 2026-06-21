/* Cluster OvlFunc_common1_1708..OvlFunc_common1_1708 extracted from goldensun/asm/overlays/common/common1_c_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/common/common1_c_a_c_a.o and asm/overlays/common/common1_c_a_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern unsigned char ewram_2001000[];

void OvlFunc_common1_1708(void) {
    unsigned char *r5;
    r5 = ewram_2001000;
    while (*(short *)r5 != 9) {
        __WaitFrames(1);
    }
}
