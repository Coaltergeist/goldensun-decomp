/* Cluster OvlFunc_945_2008030..OvlFunc_945_2008030 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_a_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
unsigned int OvlFunc_945_2008030(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;

    r5 = arg0;
    __Actor_SetAnim(r5, 1);
    r3 = 0;
    *(unsigned int *)(r5 + 8) = r3;
    *(unsigned int *)(r5 + 0xc) = r3;
    *(unsigned int *)(r5 + 0x10) = r3;
    *(unsigned int *)(r5 + 0x24) = r3;
    *(unsigned int *)(r5 + 0x28) = r3;
    *(unsigned int *)(r5 + 0x2c) = r3;
    r3 = 0x80;
    r3 <<= 24;
    *(unsigned int *)(r5 + 0x3c) = r3;
    *(unsigned int *)(r5 + 0x38) = r3;
    return 0;
}
