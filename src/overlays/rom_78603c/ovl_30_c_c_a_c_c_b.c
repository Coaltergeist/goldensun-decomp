/* Cluster OvlFunc_885_20099e8..OvlFunc_885_20099e8 extracted from goldensun/asm/overlays/rom_78603c/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78603c/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_78603c/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_78603c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_885_20099e8(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87e);
    __Func_8091eb0(0xc, 1);
    __SetFlag(0x900);
    __CutsceneEnd();
}
