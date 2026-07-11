/* Cluster OvlFunc_921_2009990..OvlFunc_921_2009990 extracted from goldensun/asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_c_a.o and asm/overlays/rom_7a7298/ovl_30_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a7298/overlay.ld.
 */
void OvlFunc_921_2009990(void) {
    unsigned int r0;
    unsigned int v;

    __CutsceneStart();
    r0 = __MapActor_GetActor(0);
    v = 0xc0 << 8;
    *(unsigned short *)((char *)r0 + 6) = v;
    __PlaySound(0x7b);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(8);
}
