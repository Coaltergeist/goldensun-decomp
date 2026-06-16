/* Cluster OvlFunc_966_20081f0..OvlFunc_966_20081f0 extracted from goldensun/asm/overlays/rom_7f148c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f148c/ovl_30_c_c_a.o and asm/overlays/rom_7f148c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7f148c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_966_20081f0(void) {
    unsigned int r2;
    unsigned int r3;

    r2 = *(unsigned int *)iwram_3001ebc;
    r3 = *(short *)((char *)r2 + 0xb6 * 2);
    *(unsigned int *)((char *)r2 + 0xe4 * 2) = 0x10;
    __Func_8091e9c(r3);
}
