/* Cluster OvlFunc_960_200833c..OvlFunc_960_200833c extracted from goldensun/asm/overlays/rom_7eaf28/ovl_314_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7eaf28/ovl_314_a_a.o and asm/overlays/rom_7eaf28/ovl_314_a_c.o in
 * goldensun/overlays/rom_7eaf28/overlay.ld.
 */
unsigned int OvlFunc_960_200833c(unsigned int arg0) {
    unsigned char *ptr = (unsigned char *)arg0;
    ptr[0x54] ^= 1;
    return 1;
}
