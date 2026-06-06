/* Cluster OvlFunc_958_20091c8..OvlFunc_958_20091c8 extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_c_a_a_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_c_a_a_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
void OvlFunc_958_20091c8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffffc00;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}
