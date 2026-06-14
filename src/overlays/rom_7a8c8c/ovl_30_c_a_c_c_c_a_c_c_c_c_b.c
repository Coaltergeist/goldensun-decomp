/* Cluster OvlFunc_922_2008fcc..OvlFunc_922_2008fcc extracted from goldensun/asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c_c_a.o and asm/overlays/rom_7a8c8c/ovl_30_c_a_c_c_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a8c8c/overlay.ld.
 */
void OvlFunc_922_2008fcc(void) {
    unsigned int r0;
    unsigned short v;

    __CutsceneStart();
    r0 = __MapActor_GetActor(0);
    v = 0x80 << 7;
    *(unsigned short *)((char *)r0 + 6) = v;
    __PlaySound(0x7b);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(1);
}
