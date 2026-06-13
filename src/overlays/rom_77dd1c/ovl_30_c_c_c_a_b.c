/* Cluster OvlFunc_882_20082e4..OvlFunc_882_20082e4 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned int OvlFunc_882_200815c(unsigned char);
extern unsigned char L578a[] __asm__(".L578a");

void OvlFunc_882_20082e4(void) {
    if (__GetFlag(0x205)) {
        goto loc_c0;
    }
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x32, 0x2c);

loc_c0:
    __Func_809218c(0, 0xaa << 1, 0xde << 2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(7);
}
