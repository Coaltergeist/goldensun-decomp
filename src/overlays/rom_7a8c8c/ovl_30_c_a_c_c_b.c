/* Cluster OvlFunc_922_2008668..OvlFunc_922_2008668 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern int __GetFlag(int);
extern void __PlaySound(int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void OvlFunc_922_2008180(int, int, int);
extern void __WaitFrames(int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_2008668(void)
{
    if (__GetFlag(0x310) != 0)
        return;
    if (__GetFlag(0x30d) != 0)
        return;
    __PlaySound(0xf1);
    __SetFlag(0x308);
    __ClearFlag(0x309);
    OvlFunc_922_2008180(8, -0x30, 0);
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
