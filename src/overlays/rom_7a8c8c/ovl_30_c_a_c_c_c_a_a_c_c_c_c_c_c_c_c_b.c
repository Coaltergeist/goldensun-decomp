/* Cluster OvlFunc_922_2008b04..OvlFunc_922_2008b04 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 196 bytes (= 0xc4).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_a_c_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(unsigned int, unsigned int, unsigned int);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_2008b04(void) {
    unsigned int v0;
    unsigned int v1;

    __PlaySound(0xf1);
    v0 = __GetFlag(0xc2 << 2);
    if (v0 != 0) {
        goto label_b22;
    }
    v1 = __GetFlag(0x30d);
    if (v1 == 0) {
        goto label_b44;
    }
label_b22:
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x40);
    __ClearFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __SetFlag(0x311);
    goto label_b70;

label_b44:
    v0 = __GetFlag(0xc3 << 2);
    if (v0 == 0) {
        goto label_b78;
    }
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x70);
    __ClearFlag(0x30f);
    __SetFlag(0xc4 << 2);
    __ClearFlag(0x311);

label_b70:
    __ClearFlag(0x312);
    goto label_b9e;

label_b78:
    OvlFunc_922_2008180(0xb, 0, -(unsigned int)0x80);
    __SetFlag(0x30f);
    __ClearFlag(0xc4 << 2);
    __ClearFlag(0x311);
    __ClearFlag(0x312);

label_b9e:
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
