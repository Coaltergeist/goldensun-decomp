/* Cluster OvlFunc_924_20090a0..OvlFunc_924_20090a0 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_f84_a_c_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_f84_a_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern unsigned int iwram_3001ebc;
extern int OvlFunc_924_2008f84(int);

void OvlFunc_924_20090a0(void) {
    unsigned int r3;
    short val;

    r3 = iwram_3001ebc;
    r3 += 0xb6 << 1;
    val = *(short *)r3;
    OvlFunc_924_2008f84(val - 0x32);
}
