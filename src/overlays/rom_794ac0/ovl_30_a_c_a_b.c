/* Cluster OvlFunc_899_20084f4..OvlFunc_899_20084f4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern int __Func_8079338(int);
extern void __Func_8092b94(int);
extern void OvlFunc_899_2008354(int);
extern void __Func_8091750(void);

void OvlFunc_899_20084f4(void) {
    __Func_80916b0();
    if (__Func_8079338(0x855)) {
        __Func_8092b94(0x135c);
    } else {
        __Func_8092b94(0x124c);
    }
    OvlFunc_899_2008354(0xc);
    __Func_8091750();
}
