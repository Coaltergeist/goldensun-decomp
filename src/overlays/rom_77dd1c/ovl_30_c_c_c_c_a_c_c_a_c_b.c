/* Cluster OvlFunc_882_200c304..OvlFunc_882_200c304 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern unsigned int L57fc __asm__(".L57fc");

void OvlFunc_882_200c304(int arg0)
{
    unsigned int t;

    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    t = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(iwram_3001e40, t) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}
