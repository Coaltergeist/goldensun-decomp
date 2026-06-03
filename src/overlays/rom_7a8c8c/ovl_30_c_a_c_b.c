/* Cluster OvlFunc_922_2008464..OvlFunc_922_2008464 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void __Func_80f9080(int);
extern int __Func_8079338(int);
extern void OvlFunc_922_2008180(int, int, int);
extern void __Func_8079374(int);
extern void __Func_8079358(int);
extern void __Func_80030f8(int);
extern void OvlFunc_922_2009154(void);

void OvlFunc_922_2008464(void) {
    __Func_80f9080(0xf1);
    if (__Func_8079338(0x306)) {
        OvlFunc_922_2008180(8, 0x10, 0);
        __Func_8079374(0x305);
    } else {
        OvlFunc_922_2008180(8, 0x90, 0);
        __Func_8079358(0xc1 << 2);
    }
    __Func_80f9080(0x121);
    __Func_80030f8(2);
    OvlFunc_922_2009154();
}
