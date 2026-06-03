/* Cluster OvlFunc_883_2008c60..OvlFunc_883_2008c60 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_883_2008c60(void) {
    __Func_80916b0();
    if (__Func_8079338(0x202)) {
        __Func_8092b94(0xf68);
    } else {
        __Func_8092b94(0xf69);
    }
    __Func_8092f84(0x15, 0);
    __Func_8091750();
}
