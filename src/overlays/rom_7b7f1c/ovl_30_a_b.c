/* Cluster OvlFunc_930_2008030..OvlFunc_930_2008030 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_a_a.o and asm/overlays/rom_7b7f1c/ovl_30_a_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
unsigned int OvlFunc_930_2008030(unsigned int arg0) {
    unsigned char *p = (unsigned char *)arg0;
    p[0x23] &= 0xfe;
    *(unsigned char *)(*(unsigned int *)(p + 0x50) + 9) |= 0xc;
    *(unsigned char *)(*(unsigned int *)(p + 0x50) + 0x15) |= 0xc;
    return 0;
}
