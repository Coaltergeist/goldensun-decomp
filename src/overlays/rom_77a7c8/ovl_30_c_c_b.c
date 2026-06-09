/* Cluster OvlFunc_881_200bf10..OvlFunc_881_200bf10 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_c_a.o and asm/overlays/rom_77a7c8/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_881_200c058(unsigned int a);

void OvlFunc_881_200bf10(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}
