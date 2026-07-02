/* Cluster OvlFunc_882_200c278..OvlFunc_882_200c278 extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_882_200c278(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87f);
    __Func_8091eb0(0xc, 3);
    __SetFlag(0x900);
    __CutsceneEnd();
}
