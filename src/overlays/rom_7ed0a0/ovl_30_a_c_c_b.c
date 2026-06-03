/* Cluster OvlFunc_964_2009970..OvlFunc_964_2009970 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 76 bytes (= 0x4c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void __Func_80916b0(void);
extern void __Func_80924d4(int a, int b);
extern int __Func_8079338(int id);
extern void __Func_801776c(int id, int b);
extern void __Func_8091750(void);

void OvlFunc_964_2009970(void) {
    __Func_80916b0();
    __Func_80924d4(0, 1);
    if (__Func_8079338(0x982) != 0 || __Func_8079338(0x983) != 0) {
        __Func_801776c(0x268a, 1);
    } else {
        __Func_801776c(0x2689, 1);
    }
    __Func_8091750();
}
