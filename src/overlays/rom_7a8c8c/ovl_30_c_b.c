/* Cluster OvlFunc_7a8c8c_1bdc..OvlFunc_7a8c8c_1bdc extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
void OvlFunc_7a8c8c_1bdc(unsigned int arg0) {
    unsigned int *ptr;

    ptr = (unsigned int *)arg0;
    ptr[2] = ptr[2] + ptr[17];
    ptr[3] = ptr[3] + ptr[18];
    ptr[4] = ptr[4] + ptr[19];
    ptr[6] = ptr[6] + ptr[12];
    ptr[7] = ptr[7] + ptr[13];
}
