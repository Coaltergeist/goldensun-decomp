/* Cluster OvlFunc_932_2008b0c..OvlFunc_932_2008b0c extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern void OvlFunc_932_2008a94(void);

void OvlFunc_932_2008b0c(void) {
    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    OvlFunc_932_2008a94();
    __WaitFrames(0x14);
    __Func_809202c();
    __CutsceneEnd();
}
