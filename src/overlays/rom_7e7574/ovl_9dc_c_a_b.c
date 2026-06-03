/* Cluster OvlFunc_959_2009660..OvlFunc_959_2009660 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int __Func_8092054(int);

unsigned int OvlFunc_959_2009660(void) {
    int *p;
    int a, b;

    p = (int *)__Func_8092054(0);
    a = p[4] / 0x100000;
    b = p[2] / 0x100000;
    if (b > 0x2d && a > 0xe && b <= 0x40 && a <= 0x10)
        return 0;
    return 1;
}
