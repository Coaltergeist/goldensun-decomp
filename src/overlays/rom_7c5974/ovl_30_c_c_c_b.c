/* Cluster OvlFunc_940_2008338..OvlFunc_940_2008338 extracted from goldensun/asm/overlays/rom_7c5974/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c5974/ovl_30_c_c_c_a.o and asm/overlays/rom_7c5974/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7c5974/overlay.ld.
 */
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);

void OvlFunc_940_2008338(void) {
    if (__Func_8079338(0x941)) {
        __Func_8092b94(0x24f8);
        __Func_8092f84(0xf, 0);
    } else {
        __Func_8092b94(0x1bdf);
        __Func_8092f84(0xf, 0);
    }
}
