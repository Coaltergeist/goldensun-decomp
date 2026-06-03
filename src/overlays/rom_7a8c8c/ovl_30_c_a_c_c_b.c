/* Cluster OvlFunc_922_2008668..OvlFunc_922_2008668 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern int __Func_8079338(int);
extern void __Func_80f9080(int);
extern void __Func_8079358(int);
extern void __Func_8079374(int);
extern void OvlFunc_922_2008180(int, int, int);
extern void __Func_80030f8(int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_2008668(void)
{
    if (__Func_8079338(0x310) != 0)
        return;
    if (__Func_8079338(0x30d) != 0)
        return;
    __Func_80f9080(0xf1);
    __Func_8079358(0x308);
    __Func_8079374(0x309);
    OvlFunc_922_2008180(8, -0x30, 0);
    __Func_80f9080(0x121);
    __Func_80030f8(2);
    OvlFunc_922_20092cc();
}
