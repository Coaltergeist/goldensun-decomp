/* Cluster OvlFunc_932_200affc..OvlFunc_932_200affc extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Func_8092950(int a, int b);

void OvlFunc_932_200affc(void)
{
    if ((iwram_3001e40 >> 1) & 1) {
        __Func_8092950(8, 7);
    } else {
        __Func_8092950(8, 6);
    }
}
