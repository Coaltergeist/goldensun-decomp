/* Cluster OvlFunc_958_2009040..OvlFunc_958_2009040 extracted from goldensun/asm/overlays/rom_7e636c/ovl_cc0_c_a_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e636c/ovl_cc0_c_a_c_a.o and asm/overlays/rom_7e636c/ovl_cc0_c_a_c_c.o in
 * goldensun/overlays/rom_7e636c/overlay.ld.
 */
extern int __Func_8079338(int);
extern int __Func_8092b94(int);
extern void __Func_8092f84(int, int);

void OvlFunc_958_2009040(void) {
    if (__Func_8079338(0x95 << 4) && !__Func_8079338(0x96f)) {
        __Func_8092b94(0x23d5);
    } else {
        __Func_8092b94(0x23d2);
    }
    __Func_8092f84(0x9, 0);
}
