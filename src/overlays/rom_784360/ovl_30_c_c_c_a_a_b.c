/* Cluster OvlFunc_884_200a370..OvlFunc_884_200a370 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_784360/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
/* Cluster OvlFunc_884_200a370..OvlFunc_884_200a370 extracted from goldensun/asm/overlays/rom_787e04/ovl_30_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_787e04/ovl_30_c_a.o and asm/overlays/rom_787e04/ovl_30_c_c.o in
 * goldensun/overlays/rom_787e04/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern int _umodsi3_RAM(unsigned int a, int b);
extern void __Actor_SetColorswap(int a, int b);

void OvlFunc_884_200a370(int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
}
