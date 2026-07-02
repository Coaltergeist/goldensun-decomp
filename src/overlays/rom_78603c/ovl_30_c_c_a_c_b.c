/* Cluster OvlFunc_885_20099a4..OvlFunc_885_20099a4 extracted from goldensun/asm/overlays/rom_78603c/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78603c/ovl_30_c_c_a_c_a.o and asm/overlays/rom_78603c/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_78603c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_885_20099a4(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87d);
    __Func_8091eb0(0xc, 0);
    __SetFlag(0x900);
    __CutsceneEnd();
}
