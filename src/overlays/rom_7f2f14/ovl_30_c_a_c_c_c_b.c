/* Cluster OvlFunc_968_2009a9c..OvlFunc_968_2009a9c extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_a.o and asm/overlays/rom_7f2f14/ovl_30_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void OvlFunc_968_200894c(void);
extern void OvlFunc_968_2009a14(int);
extern void OvlFunc_968_2009a50(int);

void OvlFunc_968_2009a9c(void) {
    int r5;
    __CutsceneStart();
    r5 = __MapActor_GetActor(0xb);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 8) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    r5 = __MapActor_GetActor(0xc);
    if (((*(int *)((char *)r5 + 8)) >> 20) == 7) {
        OvlFunc_968_200894c();
        OvlFunc_968_2009a14(r5);
    } else {
        OvlFunc_968_2009a50(r5);
    }
    __CutsceneEnd();
}
