/* Cluster OvlFunc_922_2008568..OvlFunc_922_2008568 extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern void OvlFunc_922_2008180(int, int, int);
extern void OvlFunc_922_2009154(void);

void OvlFunc_922_2008568(void) {
    int r5;
    r5 = 0x60;
    r5 = -r5;
    __PlaySound(0xf1);
    OvlFunc_922_2008180(0xa, 0, r5);
    OvlFunc_922_2008180(0xa, 0, r5);
    {
        int r2;
        r2 = 0x50;
        r2 = -r2;
        OvlFunc_922_2008180(0xa, 0, r2);
    }
    __PlaySound(0x121);
    __SetFlag(0x307);
    __WaitFrames(2);
    OvlFunc_922_2009154();
}
