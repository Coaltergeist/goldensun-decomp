/* Cluster OvlFunc_917_2008050..OvlFunc_917_2008050 extracted from goldensun/asm/overlays/rom_7a4370/ovl_30_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a4370/ovl_30_c_a_a.o and asm/overlays/rom_7a4370/ovl_30_c_a_c.o in
 * goldensun/overlays/rom_7a4370/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_917_2008050(void) {
    int r5;
    int r3;
    r5 = *(int *)iwram_3001ebc;
    __CutsceneStart();
    __Func_8092304(0, 0, 0);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    r3 = 0;
    __Func_8091e9c(*(short *)(r5 + r3));
    __CutsceneEnd();
}
