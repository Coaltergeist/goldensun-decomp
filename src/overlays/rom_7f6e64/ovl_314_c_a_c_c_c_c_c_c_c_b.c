/* Cluster OvlFunc_969_200b8dc..OvlFunc_969_200b8dc extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c_c_a.o and asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];
extern void OvlFunc_969_200c8d8(void);
extern void OvlFunc_969_200cb28(void);

void OvlFunc_969_200b8dc(void)
{
    unsigned int *p;
    __CutsceneStart();
    OvlFunc_969_200c8d8();
    OvlFunc_969_200cb28();
    __SetFlag(0x11a);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x18;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(1);
    __CutsceneEnd();
}
