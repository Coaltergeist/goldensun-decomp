/* Cluster OvlFunc_954_2008a10..OvlFunc_954_2008a10 extracted from goldensun/asm/overlays/rom_7db0c8/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7db0c8/ovl_30_c_c_c_a.o and asm/overlays/rom_7db0c8/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7db0c8/overlay.ld.
 */
extern int __Func_8092054();

void OvlFunc_954_2008a10(void) {
    int res;
    int a;
    int b;

    res = __Func_8092054();
    if (res != 0) {
        a = (*(int *)((char *)res + 8) >> 19) - 0x5e;
        b = *(int *)((char *)res + 0x10) >> 19;
        if ((unsigned int)a <= 1) {
            if (b > 0x17) {
                if (b <= 0x1a) {
                    *(unsigned char *)((char *)res + 0x22) = 1;
                }
            }
        }
    }
}
