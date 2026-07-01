/* Cluster OvlFunc_963_20082f8..OvlFunc_963_20082f8 extracted from goldensun/asm/overlays/rom_7ec968/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec968/ovl_30_c_c_a_a.o and asm/overlays/rom_7ec968/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7ec968/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_963_20082f8(void)
{
    short r5;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    base += 0xb6 << 1;
    r5 = *(short *)base;
    __PlaySound(0x7b);
    __ClearFlag(0x8fb);
    __ClearFlag(0x8fc);
    __Func_8091e9c(r5);
}
