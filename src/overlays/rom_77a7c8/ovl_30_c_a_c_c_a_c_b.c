/* Cluster OvlFunc_881_200b41c..OvlFunc_881_200b41c extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_c_a_c_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern unsigned int OvlFunc_881_200b448(unsigned int);

unsigned int OvlFunc_881_200b41c(void)
{
    unsigned int r5;
    unsigned int r6;

    r6 = OvlFunc_881_200b448(0);
    r6 += OvlFunc_881_200b448(2);
    r5 = OvlFunc_881_200b448(1);
    r5 += OvlFunc_881_200b448(3);
    r6 -= r5;
    return r6;
}
