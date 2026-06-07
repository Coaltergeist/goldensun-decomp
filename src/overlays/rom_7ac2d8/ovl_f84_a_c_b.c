/* Cluster OvlFunc_924_2009080..OvlFunc_924_2009080 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_f84_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_f84_a_c_a.o and asm/overlays/rom_7ac2d8/ovl_f84_a_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern int iwram_3001ebc;
extern void OvlFunc_924_2008f84(int);

void OvlFunc_924_2009080(void) {
    int *r3;
    short r0;

    r3 = (int *)iwram_3001ebc;
    r0 = *(short *)((char *)r3 + 0x16c);
    OvlFunc_924_2008f84(r0 - 0x32);
}
