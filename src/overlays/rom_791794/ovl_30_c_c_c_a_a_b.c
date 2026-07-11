/* Cluster OvlFunc_897_200add0..OvlFunc_897_200add0 extracted from goldensun/asm/overlays/rom_791794/ovl_30_c_c_c_a_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_791794/ovl_30_c_c_c_a_a_a.o and asm/overlays/rom_791794/ovl_30_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_791794/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int a, int b);
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_897_200aeb0(unsigned int a);

void OvlFunc_897_200add0(unsigned int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_897_200aeb0(arg0);
    }
}
