/* Cluster OvlFunc_969_200a11c..OvlFunc_969_200a11c extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_a_a.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_a_a_a.o and asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_a_a_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern int _umodsi3_RAM(int, int);
extern void OvlFunc_969_200a200(int);

void OvlFunc_969_200a11c(int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if (_umodsi3_RAM(iwram_3001e40, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}
