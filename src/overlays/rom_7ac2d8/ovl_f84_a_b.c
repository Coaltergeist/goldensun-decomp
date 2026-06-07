/* Cluster OvlFunc_924_2009060..OvlFunc_924_2009060 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_f84_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_f84_a_a.o and asm/overlays/rom_7ac2d8/ovl_f84_a_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern int *iwram_3001ebc;
extern int OvlFunc_924_2008f84(int);

void OvlFunc_924_2009060(void) {
    int *r3;
    short r0;

    r3 = (int *)((char *)iwram_3001ebc + (0xb6 << 1));
    r0 = *(short *)r3;
    OvlFunc_924_2008f84(r0 - 0x32);
}
