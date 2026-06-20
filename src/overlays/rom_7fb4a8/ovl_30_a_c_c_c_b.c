/* Cluster OvlFunc_971_2008f18..OvlFunc_971_2008f18 extracted from goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_a.o and asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c_c.o in
 * goldensun/overlays/rom_7fb4a8/overlay.ld.
 */
int OvlFunc_971_2008f18(int actor)
{
    int r5;
    r5 = actor;
    __CutsceneStart();
    __UI_Sanctum(r5);
    __CutsceneEnd();
}
