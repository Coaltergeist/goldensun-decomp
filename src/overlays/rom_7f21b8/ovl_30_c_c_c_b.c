/* Cluster OvlFunc_967_200848c..OvlFunc_967_200848c extracted from goldensun/asm/overlays/rom_7f21b8/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f21b8/ovl_30_c_c_c_a.o and asm/overlays/rom_7f21b8/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7f21b8/overlay.ld.
 */
extern unsigned int iwram_3001ebc;

void OvlFunc_967_200848c(void)
{
    short *ptr;
    unsigned int v;
    short val;

    ptr = (short *)iwram_3001ebc;
    v = 0xb6 << 1;
    ptr = (short *)((unsigned char *)ptr + v);
    val = *(short *)((unsigned char *)ptr + 0);
    __Func_8091e9c(val);
    __PlaySound(0x7b);
}
