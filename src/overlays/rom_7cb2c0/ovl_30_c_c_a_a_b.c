/* Cluster OvlFunc_945_20088a8..OvlFunc_945_20088a8 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8093054(int, int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_20088a8(void) {
    __Func_80916b0();
    if (__Func_8079338(0x925)) {
        __Func_8092b94(0x1e19);
        __Func_8093054(0xa, 0);
    } else {
        __Func_8092b94(0x1d50);
        __Func_8092f84(0xa, 0);
    }
    __Func_8091750();
}
