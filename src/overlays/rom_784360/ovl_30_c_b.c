/* Cluster OvlFunc_884_200a2f8..OvlFunc_884_200a2f8 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a.o and asm/overlays/rom_784360/ovl_30_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
extern void OvlFunc_884_200a440(unsigned int a);

void OvlFunc_884_200a2f8(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}
