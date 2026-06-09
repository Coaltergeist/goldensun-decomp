/* Cluster OvlFunc_899_2008af4..OvlFunc_899_2008af4 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void OvlFunc_899_2008378(int);
extern void __CutsceneEnd(void);

void OvlFunc_899_2008af4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1294);
    } else if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    OvlFunc_899_2008378(0x12);
    __CutsceneEnd();
}
