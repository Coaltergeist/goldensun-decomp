/* Cluster OvlFunc_881_200bf4c..OvlFunc_881_200bf4c extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_c_c_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, int b);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_881_200c058(unsigned int a);

void OvlFunc_881_200bf4c(unsigned int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}
