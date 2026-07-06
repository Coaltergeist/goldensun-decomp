/* Cluster OvlFunc_922_2009b9c..OvlFunc_922_2009b9c extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
extern unsigned char L2488[] __asm__(".L2488");

void OvlFunc_922_2009b9c(void) {
    int v;

    __CutsceneStart();
    v = *(int *)L2488;
    if (v != 0) {
        __Func_808f140(v, 3);
    }
    __Func_8091a58(0xe6, 0);
    __SetFlag(0xf13);
    v = *(int *)L2488;
    if (v != 0) {
        __DeleteActor();
    }
    __CutsceneEnd();
}
