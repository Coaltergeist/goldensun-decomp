/* Cluster OvlFunc_962_200821c..OvlFunc_962_200821c extracted from goldensun/asm/overlays/rom_7ec19c/ovl_30_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ec19c/ovl_30_c_a.o and asm/overlays/rom_7ec19c/ovl_30_c_c.o in
 * goldensun/overlays/rom_7ec19c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_962_200821c(void)
{
    int r3;
    r3 = *(unsigned int *)iwram_3001ebc;
    r3 = r3 + 0xb6 * 2;
    __Func_8091e9c(*(short *)((char *)r3 + 0));
    __PlaySound(0x7b);
}
