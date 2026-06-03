/* Cluster OvlFunc_881_2008350..OvlFunc_881_2008350 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
extern unsigned int iwram_3001e40;

unsigned int OvlFunc_881_2008350(unsigned char *actor)
{
    unsigned char *p = actor + 0x54;
    if ((1 & *p) != 0 && (iwram_3001e40 & 1) != 0) {
        *p = 1 ^ *p;
    }
    return 1;
}
