/* Cluster OvlFunc_899_2008400..OvlFunc_899_2008400 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void OvlFunc_899_20083bc(int);

void OvlFunc_899_2008400(void) {
    __CutsceneStart();
    __MessageID(0x1247);
    __MapActor_SetAnim(0xb, 1);
    OvlFunc_899_20083bc(0xb);
    __CutsceneEnd();
}
