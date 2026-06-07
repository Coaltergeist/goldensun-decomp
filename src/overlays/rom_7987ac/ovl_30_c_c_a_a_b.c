/* Cluster OvlFunc_902_2008080..OvlFunc_902_2008080 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 */
extern void __Func_808b868(unsigned char *p);
extern unsigned char L7f4[] __asm__(".L7f4");

unsigned char *OvlFunc_902_2008080(void) {
    __Func_808b868(L7f4);
    return L7f4;
}
