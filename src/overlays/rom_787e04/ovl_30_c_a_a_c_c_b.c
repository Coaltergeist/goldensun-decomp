/* Cluster OvlFunc_887_2008284..OvlFunc_887_2008284 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_a_c_c_a.o and asm/overlays/rom_787e04/ovl_30_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_887_2008284(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __Func_809280c(0xe, 0, 0xa);
    __MessageID(0x11aa);
    __Func_8092c40(0xe, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __ActorMessage(0xe, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(0xe, 0);
    }
    __CutsceneEnd();
}
