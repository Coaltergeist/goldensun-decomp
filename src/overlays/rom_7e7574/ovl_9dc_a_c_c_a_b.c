/* Cluster OvlFunc_959_2008f94..OvlFunc_959_2008f94 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
void OvlFunc_959_2008f94(void)
{
    unsigned int r0;
    unsigned int r3;

    r0 = __CheckPartyItem(0xea);
    r3 = 1;
    r3 = -r3;
    if (r0 != r3)
        return;
    __Func_801776c(0x953, 1);
}
