/* Cluster OvlFunc_899_20084bc..OvlFunc_899_20084bc extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern void OvlFunc_899_2008354(int arg0);

void OvlFunc_899_20084bc(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1243);
    } else {
        __MessageID(0x1353);
    }
    OvlFunc_899_2008354(9);
    __CutsceneEnd();
}
