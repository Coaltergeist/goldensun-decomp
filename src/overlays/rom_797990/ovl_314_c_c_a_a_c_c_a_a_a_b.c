/* Cluster OvlFunc_901_20086b4..OvlFunc_901_20086b4 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_a_c_c_a_a_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

void OvlFunc_901_20086b4(void)
{
    unsigned short *p;
    unsigned short t0;

    __CutsceneStart();
    __MessageID(0x1cb5);
    t0 = 0x10;
    do { t0 = (unsigned short) t0; } while (0);
    __Func_8092848(t0, 0, 2);
    __Func_8092c40(0x10, 0);
    if (__Func_8091c7c(0, 0)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(0x10, 0);
    __SetFlag(0xc2 << 2);
    __CutsceneEnd();
}
