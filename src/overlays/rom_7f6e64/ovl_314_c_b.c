/* Cluster OvlFunc_969_200d688..OvlFunc_969_200d688 extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a.o and asm/overlays/rom_7f6e64/ovl_314_c_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
void OvlFunc_969_200d688(unsigned int arg0) {
    unsigned int r3;
    r3 = 0x80 << 24;
    *(unsigned int *)(arg0 + 0x38) = r3;
    *(unsigned int *)(arg0 + 0x3c) = r3;
    *(unsigned int *)(arg0 + 0x40) = r3;
    r3 = 0;
    *(unsigned int *)(arg0 + 0x24) = r3;
    *(unsigned int *)(arg0 + 0x28) = r3;
    *(unsigned int *)(arg0 + 0x2c) = r3;
    *(unsigned short *)(arg0 + 0x64) = r3;
}
