/* Cluster OvlFunc_945_200c218..OvlFunc_945_200c218 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
extern void OvlFunc_945_200c8e8(int, int, int);
extern void OvlFunc_945_200d2f4(void);

void OvlFunc_945_200c218(void) {
    __CutsceneStart();
    OvlFunc_945_200c8e8(0x18, 1, 0);
    OvlFunc_945_200c8e8(0x19, 0, 0);
    OvlFunc_945_200c8e8(0x13, 0xb, 0xc);
    OvlFunc_945_200d2f4();
    __SetFlag(0x928);
    __CutsceneEnd();
}
