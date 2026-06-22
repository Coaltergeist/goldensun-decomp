/* Cluster OvlFunc_964_2009530..OvlFunc_964_2009530 extracted from goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a_c.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a_c_a.o and asm/overlays/rom_7ed0a0/ovl_30_a_c_c_a_c_a_a_c_c.o in
 * goldensun/overlays/rom_7ed0a0/overlay.ld.
 */
extern void OvlFunc_964_2008df4(void);

void OvlFunc_964_2009530(void)
{
    int *r0;
    r0 = __MapActor_GetActor(0);
    if ((*(int *)((char *)r0 + 8) >> 20) != 0x1e ||
        (*(int *)((char *)r0 + 0x10) >> 20) != 0x34)
        OvlFunc_964_2008df4();
}
