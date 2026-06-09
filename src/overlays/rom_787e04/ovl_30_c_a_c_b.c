/* Cluster OvlFunc_887_2009544..OvlFunc_887_2009544 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a_c_a.o and asm/overlays/rom_787e04/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_887_200968c(unsigned int a);

void OvlFunc_887_2009544(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (!(iwram_3001e40 & 0xf)) {
        OvlFunc_887_200968c(arg0);
    }
}
