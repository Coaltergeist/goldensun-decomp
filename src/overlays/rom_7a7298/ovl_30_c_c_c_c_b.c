/* Cluster OvlFunc_921_2008688..OvlFunc_921_2008688 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_921_2008688(void) {
    __Func_80916b0();
    if (__Func_8079338(3)) {
        __Func_8092b94(0x1573);
    } else {
        __Func_8092b94(0x155a);
    }
    __Func_8092f84(0x13, 0);
    __Func_8091750();
}
