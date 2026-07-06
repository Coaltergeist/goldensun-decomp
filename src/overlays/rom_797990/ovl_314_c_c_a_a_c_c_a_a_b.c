/* Cluster OvlFunc_901_2008710..OvlFunc_901_2008710 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
void OvlFunc_901_2008710(void) {
    unsigned short u;
    __CutsceneStart();
    __Func_80925cc(8, 1);
    __CutsceneWait(0x14);
    __Func_809280c(8, 0, 0x14);
    __SetFlag(0x305);
    __MessageID(0x1cab);
    u = 8;
    do { u = (unsigned short) u; } while (0);
    __Func_8093040(u, 0, 0x14);
    __CutsceneEnd();
}
