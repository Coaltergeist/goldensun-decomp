/* Cluster OvlFunc_931_200815c..OvlFunc_931_200815c extracted from goldensun/asm/overlays/rom_7b8cb0/ovl_30_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b8cb0/ovl_30_c_c_a_a.o and asm/overlays/rom_7b8cb0/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7b8cb0/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_931_200815c(void) {
    unsigned short *r2;
    unsigned short r3;

    __CutsceneStart();
    __MessageID(0x18bd);
    __Func_8092c40(8, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        __ActorMessage(8, 0);
    } else {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
        __Func_8093054(8, 0);
    }
    __CutsceneEnd();
}
