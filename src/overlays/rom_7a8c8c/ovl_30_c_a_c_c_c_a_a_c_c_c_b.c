/* Cluster OvlFunc_922_2008768..OvlFunc_922_2008768 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c.s.
 *
 * Total .text for this TU = 136 bytes (= 0x88).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_2008768(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0xc2 << 2)) {
        OvlFunc_922_2008180(0xa, 0, -0x40);
        __ClearFlag(0x30b);
        __SetFlag(0xc3 << 2);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    } else {
        OvlFunc_922_2008180(0xa, 0, -0x80);
        __SetFlag(0x30b);
        __ClearFlag(0xc3 << 2);
        __ClearFlag(0x30d);
        __ClearFlag(0x30e);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
