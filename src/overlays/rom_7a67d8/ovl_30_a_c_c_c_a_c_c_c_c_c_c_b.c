/* Cluster OvlFunc_919_2008138..OvlFunc_919_2008138 extracted from goldensun/asm/overlays/rom_7a67d8/ovl_30_a_c_c_c_a_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a67d8/ovl_30_a_c_c_c_a_c_c_c_c_c_c_a.o and asm/overlays/rom_7a67d8/ovl_30_a_c_c_c_a_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7a67d8/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

void OvlFunc_919_2008138(void)
{
    unsigned int r5;
    unsigned short r3;

    r5 = iwram_3001ebc;
    __PlaySound(0x7b);
    r3 = 0xb6;
    r3 <<= 1;
    r5 += r3;
    __Func_8091e9c(*(short *)(r5 + 0));
}
