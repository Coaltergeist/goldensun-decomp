/* Cluster OvlFunc_930_20080e8..OvlFunc_930_20080e8 extracted from goldensun/asm/overlays/rom_7b7f1c/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 88 bytes (= 0x58).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b7f1c/ovl_30_c_c_a_a.o and asm/overlays/rom_7b7f1c/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7b7f1c/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

void OvlFunc_930_20080e8(void) {
    unsigned int r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x1958);
    __Func_8092c40(0xa, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __CutsceneWait(0x14);
        __ActorMessage(0xa, 0);
    } else {
        r2 = iwram_3001ebc;
        r3 = *(unsigned short *)(r2 + (0xec << 1));
        r3 += 1;
        *(unsigned short *)(r2 + (0xec << 1)) = r3;
        __Func_8093054(0xa, 0);
    }
    __CutsceneEnd();
}
