/* Cluster OvlFunc_949_2008964..OvlFunc_949_2008964 extracted from goldensun/asm/overlays/rom_7d4af4/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d4af4/ovl_30_c_c_c_a.o and asm/overlays/rom_7d4af4/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7d4af4/overlay.ld.
 */
extern int *iwram_3001ebc;
extern short __Func_8091e9c(short);

void OvlFunc_949_2008964(void) {
    unsigned int r3;
    unsigned int r2;
    short r0;

    r3 = (unsigned int)iwram_3001ebc;
    r2 = 0xb6;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    r0 = *(short *)((char *)r3 + r2);
    __Func_8091e9c(r0);
}
