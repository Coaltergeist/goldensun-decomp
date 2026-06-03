/* Cluster OvlFunc_974_200804c..OvlFunc_974_200804c extracted from goldensun/asm/overlays/rom_7fcd20/ovl_30_a_c_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fcd20/ovl_30_a_c_a_c_a.o and asm/overlays/rom_7fcd20/ovl_30_a_c_a_c_c.o in
 * goldensun/overlays/rom_7fcd20/overlay.ld.
 */
extern void __Func_8019a54(void);
extern void __Func_8017658(unsigned int a, int b, int c, int d);
extern void __Func_80030f8(int a);
extern int __Func_8017364(void);

void OvlFunc_974_200804c(unsigned int arg0) {
    __Func_8019a54();
    __Func_8017658(arg0, 5, 0, 0x22);
    while (!__Func_8017364()) {
        __Func_80030f8(1);
    }
    __Func_80030f8(1);
}
