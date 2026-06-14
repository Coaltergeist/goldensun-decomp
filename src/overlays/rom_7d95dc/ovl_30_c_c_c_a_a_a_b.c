/* Cluster OvlFunc_953_2008334..OvlFunc_953_2008334 extracted from goldensun/asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_a.o and asm/overlays/rom_7d95dc/ovl_30_c_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_7d95dc/overlay.ld.
 */
void OvlFunc_953_2008334(void) {
    __CutsceneStart();
    if (__GetFlag(0x962)) {
        __Func_80925cc(0xe, 2);
        __MessageID(0x2256);
        OvlFunc_953_2009c48(0xe);
        __Func_8092848(0xe, 0, 0);
        __CutsceneWait(0x14);
        __Func_8093054(0xe, 0);
        OvlFunc_953_2009c5c(0xe, 0);
    } else {
        __MessageID(0x205d);
        __ActorMessage(0xe, 0);
    }
    __CutsceneEnd();
}
