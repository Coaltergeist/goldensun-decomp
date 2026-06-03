/* Cluster OvlFunc_945_20097c8..OvlFunc_945_20097c8 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_945_20097c8(void) {
    __Func_80916b0();
    if (__Func_8079338(0x933)) {
        __Func_8092b94(0x1ede);
    } else {
        __Func_8092b94(0x1edf);
    }
    __Func_8092f84(0x19, 0);
    __Func_8091750();
}
