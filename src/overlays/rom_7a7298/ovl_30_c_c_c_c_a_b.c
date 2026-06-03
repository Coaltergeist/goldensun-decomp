/* Cluster OvlFunc_921_2008608..OvlFunc_921_2008608 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int id);
extern void __Func_8092b94(int id);
extern void __Func_8092f84(int a, int b);
extern void __Func_8091750(void);

void OvlFunc_921_2008608(void) {
    __Func_80916b0();
    if (__Func_8079338(0x82b)) {
        __Func_8092b94(0x156f);
    } else if (__Func_8079338(0x82c)) {
        __Func_8092b94(0x153b);
    } else {
        __Func_8092b94(0x1533);
    }
    __Func_8092f84(8, 0);
    __Func_8091750();
}
