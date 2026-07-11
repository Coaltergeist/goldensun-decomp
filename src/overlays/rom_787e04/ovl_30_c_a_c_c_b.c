/* Cluster OvlFunc_887_2009580..OvlFunc_887_2009580 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_c_c_a.o and asm/overlays/rom_787e04/ovl_30_c_a_c_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, int b);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_887_200968c(unsigned int a);

void OvlFunc_887_2009580(unsigned int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_887_200968c(arg0);
    }
}
