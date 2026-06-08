/* Cluster OvlFunc_899_20084f4..OvlFunc_899_20084f4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void OvlFunc_899_2008354(int);
extern void __CutsceneEnd(void);

void OvlFunc_899_20084f4(void) {
    __CutsceneStart();
    if (__GetFlag(0x855)) {
        __MessageID(0x135c);
    } else {
        __MessageID(0x124c);
    }
    OvlFunc_899_2008354(0xc);
    __CutsceneEnd();
}
