/* Cluster OvlFunc_903_2008da8..OvlFunc_903_2008da8 extracted from goldensun/asm/overlays/rom_798dc4/ovl_314_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_798dc4/ovl_314_c_a.o and asm/overlays/rom_798dc4/ovl_314_c_c.o in
 * goldensun/overlays/rom_798dc4/overlay.ld.
 */
void OvlFunc_903_2008da8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffff800;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}
