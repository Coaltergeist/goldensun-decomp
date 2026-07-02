/* Cluster OvlFunc_882_200c234..OvlFunc_882_200c234 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_882_200c234(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87c);
    __Func_8091eb0(0xc, 2);
    __SetFlag(0x900);
    __CutsceneEnd();
}
